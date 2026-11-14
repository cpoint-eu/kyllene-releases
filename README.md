<p align="center">
  <img src="media/icon.png" width="96" alt="Kyllene icon">
</p>

<h1 align="center">Kyllene</h1>

<p align="center">
  <b>The desktop workspace for <a href="https://hermes-agent.nousresearch.com/">Hermes Agent</a>.</b><br>
  Projects, tasklists, Kanban, coding agents and many conversations at once, in one fast native window.
</p>

<p align="center">
  <a href="https://github.com/cpoint-eu/kyllene-releases/releases/latest"><img alt="Download" src="https://img.shields.io/badge/download-AppImage%20%7C%20deb%20%7C%20rpm%20%7C%20msi-2f81f7?style=flat-square"></a>
  <img alt="Platform" src="https://img.shields.io/badge/platform-Linux%20%7C%20Windows%20(beta)%20x86__64-1f2a44?style=flat-square">
  <img alt="Status" src="https://img.shields.io/badge/status-beta-f5a524?style=flat-square">
  <img alt="Languages" src="https://img.shields.io/badge/UI-English%20%7C%20Czech-1f2a44?style=flat-square">
  <a href="https://ko-fi.com/cpointeu"><img alt="Support on Ko-fi" src="https://img.shields.io/badge/support-Ko--fi-ff5e5b?style=flat-square&logo=ko-fi&logoColor=white"></a>
</p>

<p align="center">
  <a href="https://cpoint-eu.github.io/kyllene/"><b>Website</b></a> ·
  <a href="#get-kyllene"><b>Install</b></a> ·
  <a href="#-let-your-ai-install-it"><b>🤖 Let your AI install it</b></a> ·
  <a href="docs/README.md"><b>Documentation</b></a> ·
  <a href="docs/features.md"><b>Everything in Kyllene</b></a> ·
  <a href="docs/widgets.md"><b>Build your own widget</b></a> ·
  <a href="https://github.com/cpoint-eu/kyllene-releases/releases"><b>Release notes</b></a> ·
  <a href="https://github.com/cpoint-eu/kyllene-releases/issues/new?template=bug.yml"><b>Report a bug</b></a>
</p>

<p align="center">
  <img src="media/hero.gif" width="900" alt="Kyllene: an answer streams in with a table and a diagram">
</p>

### ▶ The 3-minute tour

https://github.com/user-attachments/assets/548e8352-62e9-4b43-9666-2d06aa878c99

<sub>All data in the video and the screenshots is made up.</sub>

---

## Why Kyllene

Hermes is a great agent. It remembers, learns new skills and works for you around the clock. But most of the time
you meet it in a terminal or a chat box, one conversation at a time.

Kyllene turns Hermes into a place where your work lives. Every project gets a home with its conversations, files,
tasklists, a Kanban board and git. You can run five conversations side by side, hand a task to an agent and come
back when it is done, see what each day cost, and manage all of Hermes without touching a config file. And when
something is missing, you add it: widgets let you put anything on screen, and Hermes can write them for you. And a
small animated pet in the corner tells you at a glance whether the agent is working, stuck or waiting for you.

It is the same Hermes underneath. Kyllene talks to your existing install, so sessions, memory, skills and profiles
are shared: start something in Kyllene and continue it in the terminal, or the other way round. No lock-in, no
account, no cloud of its own.

*Kyllene is the mountain in Arcadia where Hermes was born. Hence the tagline: home of Hermes.*

## Hermes alone vs. Hermes in Kyllene

| | Hermes in a terminal | Hermes in Kyllene |
|---|---|---|
| **Conversations** | One per terminal window | Tabs, a grid or free windows; pop any conversation out into its own window |
| **Answers** | Text and ASCII | Rendered Markdown: tables, Mermaid diagrams, highlighted code, a live panel of every tool call |
| **Questions and approvals** | Type the answer or `y`/`n` | Clickable choices, approval cards, a diff of every file change before it is written |
| **Models** | `/model` and a model name | Search all providers with price, context and benchmark class; compare two models on one prompt |
| **Projects** | A folder you `cd` into | A project home: conversations, files with previews, outputs gallery, git, tasklists, Kanban |
| **Background work** | `hermes kanban` commands | A drag-and-drop board; agents run cards in the background and ping you when they need you |
| **Coding agents** | Separate terminals | Claude Code and Codex inside the app, with the same approval cards |
| **Managing Hermes** | Editing YAML, CLI commands | Skills, MCP servers, plugins, cron, profiles, keys, memory, logs and gateways in one screen |
| **Costs and usage** | Numbers per session | Overview of tokens and costs by model, agent and project; subscription limits with a pace line; a timeline of the whole day |
| **Several computers** | Each one on its own | Projects, tasklists, settings and widgets sync through GitHub or your cloud drive |
| **Your own additions** | Skills and plugins for the agent | Plus widgets for the app: anything you want on screen, written by you or by Hermes itself |
| **The pet** | A pet in the TUI | The same pet with moods, comments in a speech bubble and a memory; talk to it by name, hatch your own with AI, pop it out onto the desktop |
| **Getting started** | `hermes setup` | Kyllene offers to install Hermes, then a first-run guide checks it, connects a model, creates a project and gives a short tour of the window |

## Features

The highlights below; every feature with where to find it: **[Everything in Kyllene](docs/features.md)**.

### Conversations

- Answers stream live with tables, Mermaid diagrams and syntax-highlighted code; copy, save or edit a diagram.
- **Activity panel** shows every tool call as it happens: what ran, how long it took, what it returned.
- The agent asks with **clickable choices**; risky commands wait for your OK; file writes can be reviewed as a diff.
- **Many conversations at once**: tabs, a grid, free windows, or a conversation in its own window.
- **Dialogs in their own window**: move Kanban, Settings, Hermes › System, a model comparison, a pet hatch and more
  out of the main window (onto a second monitor, say); the work keeps running and the bell tells you when it is done.
- **Search everything** with `Ctrl+K`: conversations, projects, files, tasklists and every command.
- **Quick capture**: a global shortcut takes a screenshot, you add a question, the answer appears in a small window.
- Attachments and pasted images, prompt templates, bookmarks, export, `/later` (continue at a set time or when a background job ends).
- A conversation keeps running when you close the app; drafts and attachments survive restarts.

### A pet that keeps an eye on the agent

- An animated **pet** in the corner shows what the agent is doing: working, thinking, waiting for you, done or failed. One glance, no reading.
- Pick one from the public **Petdex** gallery, or **hatch your own** with AI from a description (with your image provider; the cost is shown first). Repair single animations or **generate moods**: pick a mood, say what should look different, compare *Now* and *New*, and nothing changes before you click *Use the new one*.
- It has a **mood** that follows how the work goes, **comments** in a speech bubble you can drag anywhere (free prepared lines or AI lines) with a **line history** of what each line reacted to, a personality, and answers when you **talk to it by name**. Give it a memory and skills, or make it a full Hermes agent that shares one memory, skills and personality with the pet.
- **Shift+click** pops it out onto the desktop: it tells you when an agent needs you, leaves a letter for answers that finished while you were away, and a click sends a message to your last conversation.
- With sync on it follows you to your other computers. More: **[Pet](docs/pet.md)**.

### Models

- One picker for every provider Hermes knows: search, description, price, context window, capabilities.
- Benchmark classes and favourites; switch the model of a running conversation in one click.
- **Compare**: send one prompt to two models side by side and continue with the winner.

### Projects and tasks

- A project = a folder with its conversations, files (with previews), an **outputs gallery** of everything the agents made, and a **git panel** (diff, commit message written by AI, every write confirmed first).
- **Tasklists** in plain Markdown: the agent ticks items off while it works; you edit them like a document.
- **Ask AI on any task**: split it into subtasks, rephrase or estimate; edits land in the file, with Undo.
- **Kanban**: hand cards to agents; they run in the background, ask when they are stuck, and you review the result. Watch any run live in its own window.
- **Focus mode** hides everything outside the current project and mutes its notifications.
- The top menu **Work** shows live what waits for you, what runs, your projects, projects on servers and prompt templates, each in a section you can fold.

### Agents

- Hermes profiles as **agents** with their own model, thinking level, memory and personality; group them in categories and rooms.
- **Claude Code and Codex** run inside the app with approvals, slash commands and their history.
- Delegated sub-agents and background processes are visible in the conversation while they run.

### Widgets: make it do what you need

Kyllene is meant to be shaped to your work, not the other way round. Widgets are small cards and windows you put
wherever you want: the side panel, the Overview, the top or bottom bar, or the main area.

- **Ready to use**: Claude Code, Codex and OpenRouter limits with a pace line (will it last until the reset?),
  weather with rain alerts, Google Calendar, Gmail and Google Tasks (several accounts), GitLab merge requests.
- **Build your own** for anything else: your server's health, a sales number, an RSS feed, a home sensor, your team's
  tickets. A widget is just a folder with a small manifest, a view in plain JavaScript and an optional data script in
  any language, no build step. Easiest of all: describe what you want and **let Hermes or Claude Code write it for
  you**. How: **[docs/widgets.md](docs/widgets.md)** with a ready-to-run example.
- Widgets can do real work, not just show numbers: buttons that run actions (always after your OK), AI drafts you
  confirm, a Hermes conversation or a coding agent started from a click, warnings to the notification bell.
- Change a built-in widget by making your own copy of it.
- Data can also come from an agent over the **A2A** protocol, so a widget can show what your other agents know.
- With sync on, your widgets and their layout follow you to every computer; code that arrives from another device
  runs only after you approve it there.

### Overview

- **Overview**: tokens, costs (at API prices), usage by model, agent and project, running work, and a **Today** page with what waits for you.
- **Timeline**: what Hermes, your agents, cron jobs and Kanban runs did all day, with the cost of each entry.

### Manage Hermes

- Skills and the skills hub, MCP servers (with per-tool selection), plugins, cron jobs, profiles, API keys, memory, logs, hooks, webhooks, config and stats, all without a terminal.
- Hermes on your own servers over SSH, and threads from Discord and other gateways as normal conversations.
- After every Hermes update Kyllene checks that everything it uses still works and tells you if something broke.

### Voice

- Dictation with a local Whisper model (on the GPU if you have one), answers read aloud, three voice modes up to hands-free.
- Transcribe recordings with speaker detection.

### Safety and privacy

- Approval of commands, a read-only safety mode per conversation, review of file writes, and a warning before sensitive data leaves for a model provider.
- **No telemetry, no account, no server.** Kyllene talks only to your Hermes. The only call home is the update check, a static file on GitHub.

### Make it yours

- Light and dark mode, colour schemes and a theme editor, a layout you can rearrange, keyboard shortcuts for everything.
- English and Czech.

## Screenshots

| | |
|---|---|
| ![Chat with a table and a diagram](media/screenshots/chat.webp) <br> **Chat**: tables, diagrams, live tool activity | ![The agent asks and waits for an OK](media/screenshots/agent-asks.webp) <br> **The agent asks, you decide** |
| ![Six conversations at once](media/screenshots/layout.webp) <br> **Many conversations at once** | ![Model picker](media/screenshots/models.webp) <br> **Every model, searchable** |
| ![Tasklist with subtasks written by AI](media/screenshots/tasklist.webp) <br> **Tasklists: AI splits a task, with Undo** | ![Kanban card detail](media/screenshots/kanban.webp) <br> **Kanban for agents** |
| ![Git panel with diff](media/screenshots/git.webp) <br> **Git with AI commit messages** | ![Claude Code inside Kyllene](media/screenshots/coding.webp) <br> **Claude Code inside** |
| ![Overview › Today](media/screenshots/overview.webp) <br> **Overview: what waits for you today** | ![Timeline of the day](media/screenshots/timeline.webp) <br> **Timeline of the whole day** |
| ![Claude Code limits widget](media/screenshots/widgets.webp) <br> **Limits and costs at a glance** | ![Manage Hermes](media/screenshots/admin.webp) <br> **Manage Hermes without a terminal** |

## Get Kyllene

**Requirements:** Linux x86_64 or Windows 10/11 x64 (beta). Linux is tested on Manjaro, Ubuntu 22.04 and 24.04 and
Fedora (GNOME, Wayland); the same AppImage runs on other modern distros too.

### Linux

Install it with one line (no `sudo`, everything goes into your home folder):

```bash
curl -fsSL https://raw.githubusercontent.com/cpoint-eu/kyllene-releases/main/install.sh | bash
```

The [installer](install.sh) downloads the latest AppImage to `~/.local/bin/Kyllene.AppImage`, adds Kyllene with its
icon to your app menu and checks that AppImages can run (FUSE and OpenGL ES; desktop installs ship both). Then start **Kyllene** from the
app menu. [Hermes Agent](https://hermes-agent.nousresearch.com/) is not needed beforehand: when it is missing,
Kyllene offers to install it on the first start (about 2.7 GB, a few minutes) and then lets you sign in to a model
(**Connect a model**; the first provider you connect becomes the main model). A **first-run guide** walks you
through it: it checks Hermes, connects a model, creates your first project and ends with a short tour of the window
(Help › *First-run guide* opens it again).

Kyllene **updates itself**: when a new version is out it shows what is new and offers *Update and restart*.
Every release is signed and tied to the Hermes versions it was tested with, so an update never lands on a Hermes it
cannot work with.

<details>
<summary>Other options: a specific version, manual download, .deb / .rpm, uninstall</summary>

- A specific version: `curl -fsSL https://raw.githubusercontent.com/cpoint-eu/kyllene-releases/main/install.sh | bash -s -- --version v0.0.3-beta`
- An AppImage you already downloaded: `bash install.sh --appimage ~/Downloads/Kyllene_0.0.1-beta_amd64.AppImage`
- Without the installer: download `Kyllene_<version>_amd64.AppImage` from the
  [latest release](https://github.com/cpoint-eu/kyllene-releases/releases/latest), `chmod +x` it and run it.
- As a system package (releases newer than 0.0.3-beta): every release also has a `.deb` (Ubuntu, Debian, Mint) and an `.rpm`
  (Fedora and relatives). Download it from the [latest release](https://github.com/cpoint-eu/kyllene-releases/releases/latest)
  and install it with `sudo apt install ./Kyllene_<version>_amd64.deb` or `sudo dnf install ./Kyllene-*.x86_64.rpm`.
  It uses your distro's own WebKit and GStreamer and is smaller than the AppImage. Kyllene updates it by itself too;
  the update asks for your password (administrator rights). The `.rpm` is signed: for its updates import the
  [Kyllene key](kyllene-rpm-key.asc) once with
  `sudo rpm --import https://raw.githubusercontent.com/cpoint-eu/kyllene-releases/main/kyllene-rpm-key.asc`
  (fingerprint `F63B EED1 D3A3 9A63 6D8F  BFB5 0312 0649 27BA AF1E`). Uninstall with `sudo apt remove kyllene` or
  `sudo dnf remove kyllene` (your data stays). Use either the package or the AppImage, not both.
- Uninstall (your data in `~/.local/share/kyllene` and Hermes in `~/.hermes` stay):

  ```bash
  curl -fsSL https://raw.githubusercontent.com/cpoint-eu/kyllene-releases/main/install.sh | bash -s -- --uninstall
  ```

</details>

### Windows (beta)

Kyllene for Windows 10 and 11 (x64) is new and still a beta: it runs the same app, but some parts are less tested
there (see below).

1. Download **[Kyllene for Windows](https://github.com/cpoint-eu/kyllene-releases/releases/latest)** (the `.msi` file under Assets)
   (or `Kyllene_<version>_x64_en-US.msi` from the [latest release](https://github.com/cpoint-eu/kyllene-releases/releases/latest)).
2. Double-click it. Kyllene installs for all users of the PC, so Windows asks for the administrator's OK.
3. The installer is not code-signed yet, so **SmartScreen** may say *Windows protected your PC*: click **More info** →
   **Run anyway**.
4. Start **Kyllene** from the Start menu. When Hermes Agent is missing, Kyllene offers **Install Hermes Agent**: the
   official Hermes installer puts everything into `%LOCALAPPDATA%\hermes` without administrator rights and brings
   its own Git and Python (up to about 15 minutes). Then **Connect a model** and the first-run guide as on Linux.

Updates come from the app too (Help › *Check for updates*): Windows asks for the administrator's OK, then Kyllene
closes, updates and starts again by itself. Uninstall in **Settings › Apps › Kyllene**; Hermes in
`%LOCALAPPDATA%\hermes` and your data in `%APPDATA%\kyllene` stay.

<details>
<summary>Known limits of the Windows beta</summary>

- The automatic check that everything still works after a Hermes update runs on Linux only for now.
- Dictation, coding agents, sync between computers, the pet and Kanban are less tested on Windows than on Linux.
- App data (settings, logs) lives in `%APPDATA%\kyllene`; attach what is relevant to a
  [bug report](https://github.com/cpoint-eu/kyllene-releases/issues/new?template=bug.yml).

</details>

### 🤖 Let your AI install it

Already using Hermes, Claude Code, Codex or another coding agent? Paste this to it:

```text
Install Kyllene for me by following the "Install guide for AI agents" in
https://github.com/cpoint-eu/kyllene-releases/blob/main/README.md
```

<details>
<summary><b>Install guide for AI agents</b> (exact steps; humans can follow them too)</summary>

You are installing Kyllene, a desktop app for Hermes Agent, for the user of this computer. Run the steps
in order, check each result, and stop and tell the user when a check fails. Do not use `sudo` (or administrator
rights on Windows) unless a step says so, and then ask the user first.

1. **Check the platform.** On Linux `uname -sm` must print `Linux x86_64`: go on with step 2. On Windows 10/11 x64
   (PowerShell: `$env:PROCESSOR_ARCHITECTURE` prints `AMD64`) follow [Windows](#windows-for-ai-agents) below instead.
   Anything else (macOS, ARM): stop, it is not supported yet. Linux is tested on Manjaro, Ubuntu and Fedora; other
   modern distros work too.
2. **Check for Hermes Agent.** `command -v hermes || ls ~/.local/bin/hermes`
   - Found: go on.
   - Missing: install it without questions (no sudo, a few GB in `~/.hermes`, needs `git` and `curl`;
     `--skip-setup` makes the installer non-interactive):

     ```bash
     curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash -s -- --skip-setup
     ```

     Then check `~/.local/bin/hermes --version`. The installer adds `~/.local/bin` to PATH only for new shells.
3. **Install Kyllene** with its installer (downloads the latest AppImage to `~/.local/bin/Kyllene.AppImage`, adds the
   menu entry and icon, checks FUSE and OpenGL ES; no sudo):

   ```bash
   curl -fsSL https://raw.githubusercontent.com/cpoint-eu/kyllene-releases/main/install.sh | bash
   ```

   It must end with `Done.` and exit code 0. When it stops instead, it says why:
   - *No Kyllene release is published yet*: stop and tell the user.
   - *FUSE is missing*: ask the user to run the install command the installer prints for their distro
     (`sudo apt install fuse3` on Debian/Ubuntu, `sudo dnf install fuse3` on Fedora, `sudo pacman -S fuse3` on
     Manjaro/Arch), then run the installer again.
   - *belongs to another Kyllene install*: the user already has Kyllene built from source; ask before re-running
     with `bash -s -- --force`.
   - *libGLESv2.so.2 (OpenGL ES) was not found*: it installs anyway, but the window would close right at start;
     ask the user to run the printed command (`sudo apt install libgles2`, `sudo dnf install libglvnd-gles`,
     `sudo pacman -S libglvnd`).
4. **Start it:** `gtk-launch kyllene` (or run `~/.local/bin/Kyllene.AppImage` from the user's desktop session).
   A window titled Kyllene opens and connects to Hermes.
5. **Tell the user what is left for them:**
   - When Hermes has no model yet (fresh install), Kyllene shows the bar *Hermes has no model connected.*: the user
     clicks **Connect a model** and signs in to a provider (or adds an API key); the first connected provider also
     becomes the main model. This needs the user's own account or API key: never enter keys or passwords for them.
   - Kyllene updates itself: it offers *Update and restart* when a new version is out.

**Uninstall:** `curl -fsSL https://raw.githubusercontent.com/cpoint-eu/kyllene-releases/main/install.sh | bash -s -- --uninstall`.
The user's data in `~/.local/share/kyllene` and Hermes in `~/.hermes` stay; delete them only when the user asks.

<a id="windows-for-ai-agents"></a>**Windows (beta), in PowerShell:**

1. **Download the installer** (no administrator rights needed):

   ```powershell
   $msi = "$env:USERPROFILE\Downloads\Kyllene.msi"
   $rel = Invoke-RestMethod https://api.github.com/repos/cpoint-eu/kyllene-releases/releases/latest
   $url = ($rel.assets | Where-Object name -like '*_x64_en-US.msi').browser_download_url
   Invoke-WebRequest $url -OutFile $msi
   ```

   Check: `$url` is not empty and `Test-Path $msi` prints `True`. Empty `$url` = no Windows build is published yet:
   stop and tell the user.
2. **Install it.** Kyllene installs for all users, so this needs the administrator's OK: ask the user first, then run
   `Start-Process msiexec.exe -ArgumentList "/i `"$msi`" /passive" -Verb RunAs -Wait` and let the user confirm the
   Windows prompt. Check: `Test-Path "$env:ProgramFiles\Kyllene\kyllene.exe"` prints `True`. (A double-click on the
   `.msi` works too; SmartScreen may then show *Windows protected your PC* because the installer is not code-signed
   yet: **More info** → **Run anyway**.)
3. **Start it** from the Start menu (**Kyllene**). Do not install Hermes Agent yourself: when it is missing, Kyllene
   shows *Hermes Agent is missing* and the user clicks **Install Hermes Agent** (official installer, into
   `%LOCALAPPDATA%\hermes`, no administrator rights, up to about 15 minutes).
4. **Tell the user what is left for them:** **Connect a model** with their own account or API key (never enter keys or
   passwords for them); updates come from the app (Help › *Check for updates*) and ask for the administrator's OK.

**Uninstall on Windows:** Settings › Apps › Kyllene. Hermes in `%LOCALAPPDATA%\hermes` and the data in
`%APPDATA%\kyllene` stay; delete them only when the user asks.

</details>

## Documentation

- **[Documentation](docs/README.md)**: all guides and troubleshooting, among them every
  [setting](docs/settings.md), [managing Hermes](docs/hermes.md), [projects and tasklists](docs/projects.md),
  [Kanban](docs/kanban.md), [coding agents](docs/coding-agents.md), [sync](docs/sync.md), [voice](docs/voice.md),
  [quick capture](docs/quick-capture.md), the [pet](docs/pet.md) and [shortcuts](docs/shortcuts.md).
- **[Everything in Kyllene](docs/features.md)**: every feature by area, what it is for and where to find it.
- **[Build your own widget](docs/widgets.md)**: put anything on screen, with a ready-to-run example.
- **[Website](https://cpoint-eu.github.io/kyllene/)** ([česky](https://cpoint-eu.github.io/kyllene/cs/)): install, updates, uninstall and troubleshooting on one page.

## FAQ

**Is it free?** Yes.

**How is it different from Hermes Desktop?** [Hermes Desktop](https://hermes-agent.nousresearch.com/desktop) is the
official app by Nous Research and a fine general client. Kyllene is an independent app built around projects and
daily work: tasklists, Kanban, git, coding agents, several conversations at once, costs and widgets. Both talk to the
same Hermes, so you can use either, or both.

**Do I need an account or an API key from Kyllene?** No. Kyllene uses whatever models and keys your Hermes already has.

**Windows or macOS?** Windows 10/11 is in beta: [install it](#windows-beta) from the `.msi`. macOS is planned.

**Where is the source code?** The code is not public yet. This repository holds the releases and the issue tracker.

## Feedback and support

- Found a bug or have an idea? [Report a bug](https://github.com/cpoint-eu/kyllene-releases/issues/new?template=bug.yml) or [suggest an improvement](https://github.com/cpoint-eu/kyllene-releases/issues/new?template=idea.yml) — or use **Help** in the app's top bar.
- Kyllene is free and built in spare time. If it saves you time, you can support its development:

<p>
  <a href="https://ko-fi.com/cpointeu"><img alt="Support Kyllene on Ko-fi" src="https://img.shields.io/badge/Buy%20me%20a%20coffee-Ko--fi-ff5e5b?style=for-the-badge&logo=ko-fi&logoColor=white"></a>
</p>

<sub>Kyllene is an independent project and is not affiliated with Nous Research. Hermes Agent is a project of Nous Research.</sub>
