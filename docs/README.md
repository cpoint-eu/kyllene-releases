# Kyllene documentation

New here? Start with [Install and update](https://cpoint-eu.github.io/kyllene/#install), then [Settings](settings.md)
and [Manage Hermes](hermes.md). Wondering what something is for, or whether Kyllene can do it? See
[Everything in Kyllene](features.md).

| Guide | What it covers |
|---|---|
| [Install and update](https://cpoint-eu.github.io/kyllene/#install) | Requirements, the one-line installer, automatic updates, uninstall (also [in Czech](https://cpoint-eu.github.io/kyllene/cs/#install)) |
| [Everything in Kyllene](features.md) | A catalog of every feature by area: what it is for, where you find it (menu, shortcut, palette command) and the guide that explains it; also [dialogs in their own window](features.md#dialogs-in-their-own-window) |
| [Settings](settings.md) | Every Settings tab: what each option does, its default, and when to change it |
| [Manage Hermes](hermes.md) | The Hermes window: skills and the hub, MCP servers and tool selection, plugins, cron jobs, profiles, models and providers, keys, memory, logs, system, config, hooks, channels, webhooks, statistics |
| [Projects and tasklists](projects.md) | Projects, instructions and memory, files and outputs, the Git panel, focus mode, tasklists with AI |
| [Kanban](kanban.md) | Boards and the Inbox, columns, handing cards to agents, answers, runs and reviews |
| [Coding agents](coding-agents.md) | Claude Code and Codex inside Kyllene: what they need, conversations, history, Kanban |
| [Sync between computers](sync.md) | What travels between your computers and what stays, how to set it up |
| [Voice](voice.md) | Dictation, reading answers aloud, voice modes, voice commands, transcribing recordings |
| [Quick capture](quick-capture.md) | The small window from anywhere: ask, note, add a task, with a screenshot or selected text |
| [Pet](pet.md) | The animated pet that shows what the agent is doing: pick or hatch one, move it or pop it out onto the desktop, what its states and moods mean, comments and their history, talking to it by name, personality, pet brain, repairing animations, its dialogs in their own window (also [in Czech](pet.cs.md)) |
| [Keyboard shortcuts](shortcuts.md) | Every shortcut in one list |
| [Build your own widget](widgets.md) | Cards and windows with your own data: manifest, data script, view, settings, actions, notices, a ready-to-run example |
| [Troubleshooting](#troubleshooting) | The most common problems on the first start |

Also on the website [cpoint-eu.github.io/kyllene](https://cpoint-eu.github.io/kyllene/). Missing something?
[Suggest an improvement](https://github.com/cpoint-eu/kyllene-releases/issues/new?template=idea.yml) and say what you
were looking for.

## Troubleshooting

| Problem | What to do |
|---|---|
| The AppImage does not start: *"No suitable fusermount binary found on the $PATH"* | Install FUSE: `sudo apt install fuse3` (Debian, Ubuntu), `sudo dnf install fuse3` (Fedora) or `sudo pacman -S fuse3` (Manjaro, Arch), then start Kyllene again. The installer checks this for you. |
| The AppImage closes right at start: *"Couldn't open libGLESv2.so.2"* | Install OpenGL ES: `sudo apt install libgles2` (Debian, Ubuntu), `sudo dnf install libglvnd-gles` (Fedora) or `sudo pacman -S libglvnd` (Manjaro, Arch). Desktop installs have it; the installer warns when it is missing. |
| Kyllene is not in the app menu | Run the [installer](../install.sh) again; it adds the menu entry (`~/.local/share/applications/kyllene.desktop`). |
| The window stays empty or white | Start it once with `WEBKIT_DISABLE_DMABUF_RENDERER=1 ~/.local/bin/Kyllene.AppImage` (if still empty, `WEBKIT_DISABLE_COMPOSITING_MODE=1` instead) and [report your GPU and desktop](https://github.com/cpoint-eu/kyllene-releases/issues/new?template=bug.yml). |
| *"Hermes could not be started"* | The first start of Hermes after installing it can take up to a minute; Kyllene tries twice more before it shows this screen with the details. Check that Hermes works in a terminal (`hermes`), then restart Kyllene. |
| Colour emoji are missing, or the AppImage crashes at start (Fedora) | Update to Kyllene 0.0.3-beta or newer: the AppImage brings its own colour emoji font. |
| *Hermes management is already running an action* | An update, doctor or gateway restart is still running; only one runs at a time. Its live log is in Hermes › *System*; try again when it has finished. |
| A dialog window does not close with `Esc` | On purpose: a dialog moved into [its own window](features.md#dialogs-in-their-own-window) closes with the window's ✕ (a running job goes on in the main window). |
| Conversations start but the model does not answer | Hermes has no model yet: click **Connect a model** in the bar *Hermes has no model connected.* and sign in to a provider (the first one becomes the main model), or run `hermes setup` in a terminal. An empty conversation you opened before that uses the new main model too. |
| Dictation does nothing on the first try | Dictation needs a speech model once: Kyllene offers to download it (the smaller one dictates faster); change it later in [Settings › Speech to text](settings.md#speech-to-text). |
| Kanban cards stay in *Ready* | The Hermes gateway is not running; the board header says *tasks will not run*. Start it (`hermes gateway`) with Kanban dispatch enabled. See [Kanban](kanban.md#boards). |
| A widget from another computer does not run | Its code waits for your approval on this computer: [Sync between computers](sync.md#widgets-from-other-computers). |
| Something broke after a Hermes update | Kyllene checks itself after every Hermes update and tells you what does not work; until a new Kyllene is out you can go back to the Hermes version it was tested with (named in the release notes and in [Settings › About](settings.md#about)). |
