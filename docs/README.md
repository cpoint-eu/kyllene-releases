# Kyllene documentation

| Guide | What it covers |
|---|---|
| [Install and update](https://cpoint-eu.github.io/kyllene/#install) | Requirements, the one-line installer, automatic updates, uninstall (also [in Czech](https://cpoint-eu.github.io/kyllene/cs/#install)) |
| [Build your own widget](widgets.md) | Cards and windows with your own data: manifest, data script, view, settings, actions, notices, a ready-to-run example |
| [Troubleshooting](#troubleshooting) | The most common problems on the first start |

More guides (projects, Kanban, coding agents, sync between computers, voice) will follow, also on the website
[cpoint-eu.github.io/kyllene](https://cpoint-eu.github.io/kyllene/). Missing something?
[Open an issue](https://github.com/cpoint-eu/kyllene-releases/issues) and say what you were looking for.

## Troubleshooting

| Problem | What to do |
|---|---|
| The AppImage does not start: *"No suitable fusermount binary found on the $PATH"* | Install FUSE: `sudo pacman -S fuse3` (Manjaro, Arch), then start Kyllene again. The installer checks this for you. |
| Kyllene is not in the app menu | Run the [installer](../install.sh) again; it adds the menu entry (`~/.local/share/applications/kyllene.desktop`). |
| The window stays empty or white | Start it once with `WEBKIT_DISABLE_DMABUF_RENDERER=1 ~/.local/bin/Kyllene.AppImage` (if still empty, `WEBKIT_DISABLE_COMPOSITING_MODE=1` instead) and [report your GPU and desktop](https://github.com/cpoint-eu/kyllene-releases/issues/new?template=bug.yml). |
| *"Hermes could not be started"* | Check that Hermes works in a terminal (`hermes`), then restart Kyllene. |
| Conversations start but the model does not answer | Hermes has no model yet: click **Connect a model** in the bar *Hermes has no model connected.* and sign in to a provider (the first one becomes the main model), or run `hermes setup` in a terminal. |
| Dictation does nothing on the first try | Dictation needs a speech model once: Kyllene offers to download it (the smaller one dictates faster); change it later in Settings › Speech to text. |
| Something broke after a Hermes update | Kyllene checks itself after every Hermes update and tells you what does not work; until a new Kyllene is out you can go back to the Hermes version it was tested with (named in the release notes). |
