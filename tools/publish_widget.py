#!/usr/bin/env python3
"""Explicitly publish a completed widget folder. Do not run during edits/transfers."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import tempfile


def private(name):
    return (name == '.widget-published' or name.startswith('.widget-published-')
            or name in ('settings.json', 'data', 'local', '__pycache__')
            or name.startswith('.env') or '.local' in name or ' (' in name)


def code_hash(root):
    digest = hashlib.sha256()

    def visit(directory):
        for path in sorted(directory.iterdir(), key=lambda p: os.fsencode(p.name)):
            if private(path.name):
                continue
            if path.is_symlink():
                raise ValueError(f'Symlink in widget: {path}')
            if path.is_dir():
                visit(path)
            elif path.is_file():
                rel = path.relative_to(root).as_posix().encode('utf-8')
                data = path.read_bytes()
                digest.update(len(rel).to_bytes(8, 'little'))
                digest.update(rel)
                digest.update(len(data).to_bytes(8, 'little'))
                digest.update(data)
            else:
                raise ValueError(f'Not a regular file: {path}')

    visit(root)
    return 'sha256:' + digest.hexdigest()


def publish(root):
    root = Path(root)
    if root.is_symlink() or not root.is_dir():
        raise ValueError('Widget must be a direct directory')
    manifest = json.loads((root / 'widget.json').read_text())
    if not isinstance(manifest, dict) or not (root / 'widget.js').is_file():
        raise ValueError('widget.json object and widget.js are required')
    expected = code_hash(root)
    fd, name = tempfile.mkstemp(prefix='.widget-published-', dir=root)
    try:
        with os.fdopen(fd, 'w') as output:
            output.write(expected + '\n')
            output.flush()
            os.fsync(output.fileno())
        if code_hash(root) != expected:
            raise ValueError('Widget changed during publication; finish edits first')
        os.replace(name, root / '.widget-published')
        if os.name == 'posix':
            directory = os.open(root, os.O_RDONLY)
            try:
                os.fsync(directory)
            finally:
                os.close(directory)
    finally:
        Path(name).unlink(missing_ok=True)
    return expected


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('folder', type=Path)
    args = parser.parse_args()
    print(publish(args.folder))
