# Kyllene documentation

| Guide | What it covers |
|---|---|
| [Install and update](../README.md#get-kyllene) | Requirements, installing Hermes and the AppImage, automatic updates |
| [Build your own widget](widgets.md) | Cards and windows with your own data: manifest, data script, view, settings, actions, notices, a ready-to-run example |
| [Troubleshooting](#troubleshooting) | The most common problems on the first start |

More guides (projects, Kanban, coding agents, sync between computers, voice) will follow, together with the web
version at [cpoint-eu.github.io/kyllene](https://cpoint-eu.github.io/kyllene/). Missing something?
[Open an issue](https://github.com/cpoint-eu/kyllene-releases/issues) and say what you were looking for.

## Troubleshooting

| Problem | What to do |
|---|---|
| The AppImage does not start: *"dlopen(): error loading libfuse.so.2"* | Install FUSE 2: `sudo pacman -S fuse2` (Manjaro, Arch). |
| The window stays empty or white | Start it once with `WEBKIT_DISABLE_COMPOSITING_MODE=1 ./Kyllene_*.AppImage` and [report your GPU and desktop](https://github.com/cpoint-eu/kyllene-releases/issues). |
| *"Hermes could not be started"* | Check that Hermes works in a terminal (`hermes`), then restart Kyllene. |
| Conversations start but the model does not answer | Hermes has no model yet: set one up with `hermes setup` (or in Kyllene › Settings › Models). |
| Something broke after a Hermes update | Kyllene checks itself after every Hermes update and tells you what does not work; until a new Kyllene is out you can go back to the Hermes version it was tested with (shown in Settings › About). |
