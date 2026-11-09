#!/usr/bin/env python3
"""Data script of the System load example widget.

Kyllene runs it every `script.every` seconds while the widget is visible. Input comes in environment variables
(KYLLENE_WIDGET_SETTINGS = the settings as JSON, KYLLENE_LANG = the app language). Output is ONE JSON object on
stdout: `data` for widget.js, plus optional `status`, `bar` and `collapsed` that the app draws by itself.
"""
import json
import os
import shutil

settings = json.loads(os.environ.get("KYLLENE_WIDGET_SETTINGS") or "{}")
warn_at = settings.get("warnAt") or 90
disk_path = settings.get("disk") or "/"
cs = os.environ.get("KYLLENE_LANG") == "cs"


def memory():
    info = {}
    with open("/proc/meminfo") as f:
        for line in f:
            key, value = line.split(":", 1)
            info[key] = int(value.split()[0]) * 1024  # kB -> bytes
    total = info["MemTotal"]
    return total, total - info.get("MemAvailable", info.get("MemFree", 0))


def level(pct):
    return "warn" if pct >= warn_at else "ok"


load1, load5, _ = os.getloadavg()
cores = os.cpu_count() or 1
mem_total, mem_used = memory()
disk = shutil.disk_usage(disk_path)
mem_pct = round(100 * mem_used / mem_total)
disk_pct = round(100 * disk.used / disk.total)
cpu_pct = min(100, round(100 * load1 / cores))

status = [
    {"id": "mem", "level": level(mem_pct), "kind": "progress", "value": mem_pct, "label": "RAM"},
    {"id": "disk", "level": level(disk_pct), "kind": "progress", "value": disk_pct, "label": "Disk"},
    {"id": "cpu", "level": "info", "kind": "progress", "value": cpu_pct, "label": "CPU"},
]
worst = max((s for s in status[:2]), key=lambda s: s["value"])

print(json.dumps({
    "data": {
        "cores": cores,
        "load": [round(load1, 2), round(load5, 2)],
        "mem": {"used": mem_used, "total": mem_total, "pct": mem_pct},
        "disk": {"path": disk_path, "used": disk.used, "total": disk.total, "pct": disk_pct},
        "warnAt": warn_at,
    },
    # the states: header dots, the navigation link and notices ("notify": true announces a new warn/error once)
    "status": status,
    # the top / status bar item (max. 12 characters)
    "bar": {"value": f"{worst['label']} {worst['value']} %", "level": worst["level"]},
    # one line for the folded card, with up to three small bars
    "collapsed": {"text": "Zátěž" if cs else "Load", "level": worst["level"],
                  "bars": [{"label": "R", "progress": mem_pct, "level": level(mem_pct)},
                           {"label": "D", "progress": disk_pct, "level": level(disk_pct)},
                           {"label": "C", "progress": cpu_pct}]},
}))
