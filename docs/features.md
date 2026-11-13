# Everything in Kyllene

A catalog of what the app can do, by area: what each feature is for, where you find it, and the guide that explains
it in detail. Lost? Press `Ctrl+K` and type what you are looking for: the **command palette** runs every command
listed here (the names in *italics* below are exactly what the palette shows), and from two letters on it also
searches your conversations, tasklists, Kanban cards, project files and memory.

**Areas:** [Conversations](#conversations-and-the-thread) · [Activity](#activity) ·
[Writing a message](#the-message-box-and-commands) · [Attachments](#attachments) ·
[Prompt templates](#prompt-templates) · [Continue later](#continue-later-later) · [Bookmarks](#bookmarks-and-pins) ·
[Compare models](#compare-models) · [Choosing a model](#choosing-a-model) · [Windows and layout](#windows-and-layout) ·
[Dialogs in their own window](#dialogs-in-their-own-window) ·
[Left menu](#left-menu-and-navigation) · [Top menu](#top-menu) · [Palette and search](#palette-and-search) ·
[Overview](#overview-today-and-timeline) · [Projects](#projects) · [Kanban](#kanban) ·
[Agents and rooms](#agents-rooms-and-delegated-agents) · [Coding agents](#coding-agents) · [Widgets](#widgets) ·
[Voice](#voice) · [Quick capture](#quick-capture) · [Pet](#pet) · [Servers and Gateway](#servers-and-gateway) ·
[Safety](#safety-and-approvals) · [Notifications](#notifications-and-the-bell) · [Achievements](#achievements) ·
[Look](#appearance-and-themes) · [Sync and backups](#sync-backups-and-clean-up) · [Hermes](#managing-hermes) ·
[Updates and help](#updates-help-and-first-start)

How to read the tables: **Where** gives the path in the app (› = then click), the keyboard shortcut if there is one,
and the palette command. Every shortcut in one list: [Keyboard shortcuts](shortcuts.md).

## Conversations and the thread

A conversation is a chat with Hermes (or one of your [agents](#agents-rooms-and-delegated-agents)). Answers stream
live and render tables, Mermaid diagrams, charts and syntax-highlighted code.

| Feature | What it is for | Where |
|---|---|---|
| New conversation | Start a chat. Inside a project or an agent (left menu) it starts there, with that folder or agent. | **+** in the tab strip or the left menu, `Ctrl+N` / `Ctrl+T`, palette *New conversation*; with an agent: *New conversation with Builder* (one command per agent) |
| Close conversation | Close the tab; the conversation stays in the list and keeps running if it is working. | ✕ on the tab, `Ctrl+W`, palette *Close conversation* |
| All conversations | Every conversation without a project, by day, with search: open, rename, move, delete. | Left menu › *Conversations*, Top menu › Work › *Conversations*, palette *All conversations* |
| Rename | Give the conversation a title. | Double-click the tab, or the conversation's row in the left menu |
| Move to a project or agent | Put a conversation into a project (its folder and instructions apply) or hand it to another agent (its model, personality and skills continue it). | Click the project label on the tab, drag the conversation onto a project, or ⋯ *Conversation tools* › *Move to project…* |
| Delete conversation | Delete it from Hermes for good (asks first). | *Delete conversation* at the end of the bar under the message box, or the conversation's row in the left menu |
| Delete old conversations | Preview which old conversations would go, then delete them in one go. | Palette *Delete old conversations…*; automatic deletion: [Settings › Automatic deletion](settings.md#automatic-deletion), palette *Settings: automatic deletion* |
| Stop | Stop the running answer; *Stop all running conversations (3)* stops every busy conversation at once. | `Esc` in the message box, the stop button, the status bar; palette *Stop all running conversations (n)* (shown while something runs) |
| Edit and resend | Rewrite one of your messages and send it again (later answers go away). | Hover your message › *Rewrite this message and send it again* |
| Branch | A new conversation with everything before a message, that message ready to edit; the original stays. | Hover your message › *New conversation with everything before this message* |
| Copy | Copy one code block, the whole conversation, or the n-th answer. | *copy* on a code block; palette *Conversation: copy as Markdown*; `/copy` |
| Undo file changes | Put files an answer changed back the way they were (Hermes' checkpoints, kept 7 days). | *Undo file changes* under an answer that changed files |
| Diagrams | Edit a Mermaid diagram from an answer as a draggable canvas or as Excalidraw and save it into the project. | *edit & save* on a diagram; keys: [shortcuts › Diagram](shortcuts.md#diagram-canvas) |
| Conversation details | Context window used (with a breakdown: system prompt, tools, skills, memory…), tokens, cache hits, cost at API prices, speed, compressions, running sub-agents, time since the last answer, folder and git branch. | The bar under the message box; click any value for *Conversation details* |
| Context and compression | See what fills the context and compress the conversation when it gets long. | ⋯ *Conversation tools* › *Context and compression…*, palette *Conversation: context and compression* |
| Export | Save the conversation as Markdown, HTML or PDF. | ⋯ *Conversation tools* › *Save as …*, palette *Conversation: save as Markdown* / *Conversation: save as HTML* / *Conversation: save as PDF* |
| Hand over | A handoff document for a person or another AI: asks who it is for and what to include. | ⋯ *Conversation tools* › *Hand over (/handover)*, palette *Conversation: hand over (/handover)* |
| Carry into a new conversation | Picked messages, word for word or as an AI summary, start a new conversation, also in another project, agent or model. | ⋯ *Conversation tools* › *Carry into a new conversation…*, palette *Conversation: carry into a new conversation…* |
| Terminal view | Show the same conversation in the real Hermes terminal (TUI), with everything the terminal can do, and back. | *Terminal* in the bar under the message box, ``Ctrl+` ``, palette *Conversation ⇄ terminal (Hermes TUI)* |
| Questions with choices | When the agent asks, the question shows as a card with clickable answers. | In the thread; also in the [bell](#notifications-and-the-bell) and in [Today](#overview-today-and-timeline) |
| Background processes | Commands the agent left running in the background: a strip shows them; click for the last output lines and *Stop*. When one finishes, Hermes' reaction shows as a grey note, not as a new answer. | The strip above the message box, palette *Background processes of the conversation* |
| Side questions | `/btw <question>`: a quick side question while the work goes on; `/bg <prompt>`: a task in a separate session whose result comes back here. | Type the command in the message box |
| Self-improvement notes | When Hermes changes its own skills or memory after a turn, a small note says what changed, with a link to the skill. | In the thread after the turn |
| Stuck conversation | When Hermes shows no sign of life for minutes, a bar offers *Stop and send again*. | In the thread |
| Keeps running | A conversation keeps running when you close the app; on the next start it reconnects and shows what happened. Drafts and unsent attachments survive restarts. | Automatic |

## Activity

Every tool call the agent makes, live: what ran, how long it took and what it returned. Delegated agents and the
agent's browser show here too.

| Feature | What it is for | Where |
|---|---|---|
| Activity row | One line per turn in the thread with what the agent is doing right now. | In the thread, above the answer |
| Activity panel | The full list of tool calls of a turn on the side; *Previous turn* / *Next turn*, *↓ latest*. | Click the Activity row (*Open in the Activity panel*), `Ctrl+Shift+F9`, palette *Activity: toggle panel*; resize with the arrow keys ([shortcuts](shortcuts.md#activity-panel-edge-focused)) |
| In place | Unfold the tool calls right in the conversation instead of the panel. | *Unfold here in the conversation* on the row; default in [Settings › Appearance](settings.md#appearance) |
| Agent's browser | Watch the agent's browser live while it works on a web page; *Stop the agent* from there. | Right panel (opens by itself, [Settings › Appearance](settings.md#appearance)), the globe next to the Activity row, palette *Agent's browser* / *Hide the agent's browser* |

## The message box and commands

| Feature | What it is for | Where |
|---|---|---|
| Write and send | `Enter` sends, `Shift+Enter` = new line. A message sent while an answer runs waits for it, steers the running turn or interrupts it, as `/busy queue`, `/busy steer` or `/busy interrupt` sets; waiting messages show as *Queued: 2* and can be cancelled. | The message box; `Ctrl+L` or palette *Write into the conversation* puts the cursor there |
| Slash commands | Hermes' commands and skills with suggestions as you type `/`. Kyllene adds its own: `/later`, `/compare`, `/widget`, `/queue`, `/steer`. | Type `/` in the message box; palette *Search commands*, or `/` in the palette |
| Command prefix | Prefix one message with a command or skill picked from a list; resets after sending. | *No command* chip in the toolbar under the message box |
| Model and thinking | Switch the model of this conversation and how hard it thinks (this conversation only). | Model chip and thinking chip under the message box, palette *Switch model of this conversation*; see [Choosing a model](#choosing-a-model) |
| Ask another agent | Send a question to another of your agents; it runs as that agent's own conversation in the background and the answer comes back as a card (*Pass the answer into the conversation*). | *Ask another agent* under the message box; overview in Top menu › Agents › *Agent calls* |
| Tidy up the text | Fix typos, punctuation and dictation mistakes in the selection, the last dictation or the whole draft; *Restore original* undoes it. | *Tidy up the text* under the message box, `Ctrl+Shift+E`, palette *Tidy up the message text* / *Restore original* |
| Goal | `/goal` gives the conversation a goal Hermes keeps working towards; a chip shows its state and verdict. | Type `/goal <what>` |
| Remember | Save an answer to the project memory (in a project) or to a memory tool you set, optionally with a note. | *Remember in the project memory* on a message (*More ways to remember* for a note), palette *Remember the latest answer*; the memory tool: [Settings › Projects](settings.md#projects) |

## Attachments

| Feature | What it is for | Where |
|---|---|---|
| Attach files | Send files with the next message. | *Attach files* under the message box, or drag files into the conversation |
| Paste an image | A screenshot or picture from the clipboard becomes an attachment. | `Ctrl+V` in the message box |
| PDFs | The agent reads a PDF's text; one click sends its pages as images instead (scans, charts, layout). | The *as text* / *pages* chip on an attached PDF |
| Files from answers | Files the agent created open in the right panel: preview, source, *Edit*, *Open in the system app*, *Download*. | Click the file in the answer |

## Prompt templates

Saved prompts you start with one click; `{{Name}}` in a template asks for a value first.

| Feature | What it is for | Where |
|---|---|---|
| Run a template | Start a saved prompt in the current (empty) conversation or a new one. | Palette *Template: Summary* (one command per template, named *Template: name*), or the templates list in an empty conversation |
| Manage templates | Create, edit, delete; the three built-in examples go away once you make your own list. | [Settings › Prompt templates](settings.md#prompt-templates), palette *Prompt templates…* / *New prompt template* |

## Continue later (`/later`)

Let a conversation continue by itself later, even with the app closed (while the computer is on).

| Feature | What it is for | Where |
|---|---|---|
| At a time | `/later 22:00`, `/later in 2 hours check the build`, `/later tomorrow morning`: the message (or a plain „continue“) is sent at that time. | Type `/later` in the message box, or ⋯ *Conversation tools* › *Continue later…* (*In an hour*, *This evening*, *Tomorrow morning*), palette *Continue later…* |
| When a process ends | Continue when a background process of the conversation (a build) finishes. | `/later when done [what to continue with]`, *Continue later…* › *When a process finishes* |
| List and cancel | What is scheduled in this conversation; cancel one. | Palette *Scheduled continuations*, `/later list`, `/later cancel <id>` |

## Bookmarks and pins

| Feature | What it is for | Where |
|---|---|---|
| Bookmark a message | Keep important messages across all conversations, with a label and a note. | *Add to bookmarks* on a message (*More bookmark actions* for a label and a note), palette *Add the last answer to bookmarks* |
| Bookmarks window | All bookmarks, searchable; per project too. | Left menu › *Bookmarks*, the project menu › *Bookmarks*, `Ctrl+Shift+D`, palette *Bookmarks* / *Bookmarks: project* |
| Pin in conversation | Up to 10 messages per conversation stay reachable from a strip at the top of the thread. | *Pin in conversation* on a message, palette *Pin the last answer* |

## Compare models

| Feature | What it is for | Where |
|---|---|---|
| Model comparison | Send one prompt to 2–4 models side by side (read-only: web and images only), then continue with the best answer. | `/compare`, palette *Compare models* |
| Comparison in its own window | Once the comparison runs, move it into a window of its own and keep working in the main window; follow-up prompts, *Stop* and the winner work there too. | *Open in a new window* in the comparison's header ([dialog windows](#dialogs-in-their-own-window)) |

## Choosing a model

| Feature | What it is for | Where |
|---|---|---|
| Model picker | Every model of every provider Hermes knows: favourites first, then the detailed choice with search, description, price, context window, capabilities and benchmark classes. | Model chip under the message box, palette *Switch model of this conversation* |
| Thinking | How hard the model thinks, per conversation. | Thinking chip next to the model |
| Defaults | The model for new conversations, backup models, the provider per model maker. | [Settings › Models](settings.md#models), palette *Settings › Models*; providers: [Hermes › Models & providers](hermes.md#models--providers) |
| Limits | Plan limits of the current provider (session, week) with the time to reset. | Bottom of the left menu (*Limits · provider*); click for models and providers |

## Windows and layout

| Feature | What it is for | Where |
|---|---|---|
| Tabs, side by side, free windows | Several conversations at once: tabs, a grid (2–4 side by side or stacked) or free windows you move and resize. | *Layout* button in the tab strip, palette *Layout: tabs* / *Layout: side by side* / *Layout: free windows* |
| Switch and move tabs | Go to the next, previous or n-th conversation; move a tab; drag tabs to reorder. | `Ctrl+Tab`, `Ctrl+1`…`Ctrl+9`, `Ctrl+Shift+PageUp`/`PageDown` |
| Conversation in its own window | Pop a conversation out into a separate window (for another monitor); *Bring all windows back*. | ⋯ *Conversation tools* › *Open in a new window*, palette *Open conversation in a new window* / *Bring all conversation windows back*; the *n in windows* chip |
| Hide panels | Hide the left menu or the right panel behind the edge (they slide out on hover) or pin them again. | `Ctrl+B`, `Ctrl+.`, palette *Hide the left menu* / *Pin the left menu*, *Hide the right panel* / *Pin the right panel* |
| Right panel | Widgets, an opened file, project outputs, the Git panel or the agent's browser: one at a time. | Right side of the window; see [Widgets](#widgets) and [Projects](#projects) |
| Layouts | Saved arrangements of the whole app: which parts show where (menus, bars, widgets); switch between them. | *Layout: presets, edit, new* in the top bar, palette *Edit layout* / *New layout* / *Layout: Default* (one command per layout, *Layout: name*) |
| Edit layout | Hide (eye) or drag (grip) any part: status bar parts, toolbar buttons, widgets, top-menu widgets. | Palette *Edit layout*; `Esc` finishes |

## Dialogs in their own window

Many dialogs can leave the main window and live in a window of their own, for example on a second monitor, while
you keep working in the main window. The work itself (a hatch, a drawing, a Hermes update, a transcription) keeps
running in the main window; the dialog window only shows it and sends your clicks there.

| Feature | What it is for | Where |
|---|---|---|
| Open a dialog in a new window | Moves the open dialog into its own window with everything you typed or picked. Dialogs that can do this: *Hatch a pet*, *Repair animations*, *Generate moods*, *Transcribe a recording*, *Delegated agent's progress*, Hermes › *System*, the model comparison, Loops › *Runs*, the Kanban board with the card detail, *Agent detail*, *Settings* and *Kyllene help*. | *Open in a new window* (the window icon left of ✕ in the dialog's header); in Hermes only on the *System* tab, in Loops only on the *Runs* tab |
| Palette commands | Open a dialog straight in its own window (an existing one is only brought up). Each one has an editable row in [Settings › Shortcuts](settings.md#shortcuts), except the two repair commands, which act on the pet shown at that moment. | Palette *Pet: hatch a new one in a new window…*, *Pet: repair animations in a new window…*, *Pet: generate moods in a new window…*, *Transcribe a recording in a new window…*, *Hermes › System in a new window…*, *Loops › runs in a new window…*, *Kanban in a new window…* |
| The *n in windows* chip | Lists every conversation and dialog in its own window; a dialog row shows its title and what it is doing (*Drawing drafts 2/4*, *Updating Hermes…*, *Running: 1*); a click brings that window up. | The *n in windows* chip in the main window › *Show the window* |
| Back to the main window | Shows the dialog in the main window again, in the same state, and closes its window. | *Back to the main window* (dock icon) in the dialog window's header |
| Closing a dialog window | ✕ closes only the window: a running job goes on in the main window. When it ends, one notice in the bell (and a desktop notification when Kyllene is not focused) says so, for example *Repair animations: done*; a click shows the result. `Esc` and a click beside the dialog do not close a dialog window. | ✕ of the window; the dialog's own *Cancel* stops the job |
| Opening it again | Opening a dialog that already has a window (from a menu, the bell or the palette) only brings that window up; there is never a second copy in the main window. | Automatic |
| Size | Each kind of dialog window remembers its size on this computer. Dialog windows do not reopen after an app restart; a job that still runs shows in its dialog and can be moved into a window again. | Automatic |

## Left menu and navigation

| Entry | What it is for | Where |
|---|---|---|
| New conversation / on a server | A new conversation here, or on one of your [servers](#servers-and-gateway). | **+** buttons at the top of the left menu |
| Overview | The dashboard: usage, costs, running work, Kanban. | Left menu › *Overview*, palette *Overview (dashboard)* |
| Conversations | All conversations by day, with search. | Left menu › *Conversations* |
| Bookmarks | Bookmarked messages across conversations. | Left menu › *Bookmarks* |
| Projects | The list of projects in the menu; a click opens a project's own menu. | Left menu › *Projects*, palette *Projects (2)* |
| Kanban | All boards; the number = unfinished cards and how many run now. | Left menu › *Kanban*, palette *Kanban: all boards* |
| Agents | Your agents (Hermes profiles) by category; a click shows the agent and its conversations. | Left menu › *Agents*, palette *Agents (3)* |
| Rooms | Rooms where several agents talk with you. | Left menu › *Rooms*, palette *Agent rooms* |
| Coding agents | Claude Code and Codex: their conversations, history, running agents, loops. | Left menu › *Coding agents*, palette *Coding agents* |
| Gateway | Threads from Discord, Telegram and other channels as conversations (shown when Hermes has some). | Left menu › *Gateway*, palette *Gateway – conversations from channels (Discord, Telegram…)* |
| Automation | Cron jobs: scheduled tasks and their runs. | Left menu › *Automation*, Top menu › Work › *Automation* |
| Favourites | Projects and conversations you starred, at the top of the menu. | *Add to favourites* on a project or conversation in the left menu |
| Project menu | Inside a project: *Overview*, *Conversations*, *Files*, *Git*, *Outputs*, *Tasklists*, *Bookmarks*, *Kanban*, *Loops* and widgets you added. | Click a project in the left menu; **‹ Back** returns. See [Projects](#projects) |

## Top menu

| Menu | What is in it | Where |
|---|---|---|
| Work | *Conversations*, *New project*, *Kanban*, *Automation*, your first projects, the last conversation. | Top bar › *Work*, palette *Menu: Work* |
| Agents | Tab *Agents*: *New agent*, *Agent calls* (who asked whom and what), your agents by category (a click starts a conversation), *Manage agents*. Tab *Rooms*: your rooms, *New room*, *Quick room*, *All rooms (1)*. | Top bar › *Agents*, palette *Menu: Agents* |
| Hermes | *Skills*, *MCP servers*, *Plugins*, *Models & providers*, *Keys*, *Cron jobs*, *Memory*, *Logs*, *System*, *Open management*. See [Managing Hermes](#managing-hermes). | Top bar › *Hermes*, palette *Menu: Hermes* |
| Widgets | *Overview* and every widget by group; a click shows a widget or puts a closed one back. | Top bar › *Widgets*; see [Widgets](#widgets) |
| Help | *Documentation*, *What's new*, *First-run guide*, *Check for updates*, *Report a bug*, *Suggest an improvement*, *About*, *Support development ☕*. | Top bar › *Help*, palette *Menu: Help*; see [Updates and help](#updates-help-and-first-start) |
| Your widgets in a menu | Put any widget into the Work, Agents or Hermes menu as a live link. | In *Edit layout* › *+ Widget* at the bottom of the menu |

Keyboard in the top menu: [shortcuts › Top menu](shortcuts.md#top-menu-work--agents--hermes).

## Palette and search

| Feature | What it is for | Where |
|---|---|---|
| Command palette | Every command, conversation, project, agent, widget and template in one searchable list; accents and word order do not matter. | `Ctrl+K`, the search field in the top bar |
| Search everywhere | From two letters on: message content of all agents, tasklists, project files, Kanban cards and memory, also on your servers. A click opens the exact place. | Type into the palette |
| Hermes commands | `/` in the palette lists the active conversation's commands and skills. | `Ctrl+K`, then `/` |
| New task in Inbox | Write a task into the Kanban Inbox without leaving what you do (parked, nothing starts it). | Palette *New task in Inbox* |

## Overview, Today and Timeline

| Feature | What it is for | Where |
|---|---|---|
| Overview | A dashboard of cards: tokens, value at API prices, conversations, finished tasks, usage over time, by model, running and recent work, Kanban, cost breakdown, limits. Pick the period (7, 30, 90 days; daily or weekly) and *All devices*. | Left menu › *Overview*, Top menu › Widgets › *Overview*, palette *Overview (dashboard)* |
| Tabs | *Today*, *Summary*, *Costs*, *Agents* (table per agent), *Projects* (table per project + Kanban), *Timeline*. | Tabs at the top of the Overview |
| Today | What waits for you (approvals, questions, reviews, blocked cards), what is in progress (tasklist items, Kanban cards), last night's scheduled jobs, plus calendar and tasks widgets. | Overview › *Today* |
| Timeline | What Hermes, your agents, coding agents, cron jobs, Kanban runs (and servers, n8n) did, with the cost of each entry; filter by agent, provider, project, day or range. | Overview › *Timeline*, palette *Timeline: what Hermes did* |
| Cards as widgets | Each card is a widget: show one in its own window or add it elsewhere. | Overview › *Edit* (hide, reorder, resize, *Add widget*), palette *Widget: Tokens* (one command per card, *Widget: name*) |

## Projects

A project is a folder with its conversations, files, instructions, memory, tasklists and Kanban board. Guide:
[Projects and tasklists](projects.md).

| Feature | What it is for | Where |
|---|---|---|
| New project | Create a project (new or existing folder). | **+** next to *Projects* in the left menu, Top menu › Work › *New project*, palette *New project* |
| Project overview | Everything about the project in one place: conversations, files with their origin, tasklists, Kanban, tokens, models. | *Project overview* next to the project, project menu › *Overview* ([guide](projects.md#project-overview)) |
| Edit project | *Basics* (code repository, file-write review, safety mode), *Look*, *Instructions* (default agent), *Memory*, *Files*, *Tasklists*, *Storage*, *Sensitive data*. | ⋯ › *Edit project* ([guide](projects.md#the-project-window)) |
| Files | Browse and preview the project's files in the right panel. | Project menu › *Files* |
| Tasklists | Markdown checklists the agent reads and ticks; edit like a document, *Ask AI…* on a task, *Send to Kanban*, *Tasklist by AI…*. | Project menu › *Tasklists* ([guide](projects.md#tasklists)) |
| Export a tasklist | Copy the tasks or save them as Markdown or PDF to hand them to someone: the whole tasklist or one section, all tasks or only unfinished, with or without notes. | ⋯ of a tasklist or section › *Export…* ([guide](projects.md#tasklists)) |
| Outputs | A gallery of what agents made in the project: HTML, images, diagrams, PDFs, documents. | Project menu › *Outputs*, `Ctrl+Shift+O`, palette *Project outputs* / *Close project outputs* |
| Git | Changes with diffs, an AI commit message, branches, pull and push, each write confirmed first. | Project menu › *Git*, palette *Git: project* ([guide](projects.md#outputs-git-and-focus)) |
| Focus mode | Narrow the app to one project; other conversations keep running hidden, their notifications wait in the bell. | ⋯ › *Focus mode*, `Ctrl+Shift+F`, palette *Focus mode: project* / *End focus mode (project)* |
| Project agents | Agents that belong to one project and work in its folder. | The project's Agents section in the left menu (+) |
| Move to a server | Copy a project with its conversations to one of your servers. | *Edit project* › *Move to a server…* (when you have a server) |
| Delete project | Deletes for good, also on your other computers; shows what goes first and asks for the name. | ⋯ › *Delete project…*, palette *Project: delete… – project* ([guide](projects.md#move-archive-and-delete)) |

## Kanban

Hand work to agents as cards; they run in the background, ask when stuck, and you review. Guide: [Kanban](kanban.md).

| Feature | What it is for | Where |
|---|---|---|
| Boards | One board per project plus the shared *Inbox*. | Left menu › *Kanban*, project menu › *Kanban*, palette *Kanban: all boards* / *Kanban: project* |
| Cards and runs | Create, assign, drag between columns; follow a run live or in its own window. | On the board; `Ctrl+Shift+R` / palette *Open card run – card* opens the last run ([guide](kanban.md#working-with-cards)) |
| Answer a question | A blocked card shows the agent's question; *Answer and resume*. | Card detail; also in the bell and in Today |
| Process with a Hermes agent | Pick a card and hand it to an agent. | Palette *Process a card with a Hermes agent…* |
| Review | Let another agent review a finished card. | Palette *Review a card with …* |
| Clean up | Delete archived cards older than a set age. | *Archived* column header, palette *Kanban: clean up the archive* ([guide](kanban.md#old-cards)) |
| Board in its own window | The board and the card detail in a window of their own; starting agents and moving a card to another board stay in the main window (*Open the card in the main window*). | *Open in a new window* in the board's header, palette *Kanban in a new window…* ([guide](kanban.md#the-board-in-its-own-window)) |

## Agents, rooms and delegated agents

| Feature | What it is for | Where |
|---|---|---|
| Agents | Hermes profiles with their own model, personality, skills, memory and cron jobs, grouped in categories. | Left menu › *Agents*, Top menu › Agents |
| New agent | A wizard: name, purpose, personality, groups. | Top menu › Agents › *New agent*, palette *New agent*; details: [Hermes › Profiles](hermes.md#profiles) |
| Agent window | *Basics* (model and its own *Thinking* level), *Skills*, *Memory*, *Cron*, *Groups*, *Project*, *Look*, *Calls*. Can move into its own window ([dialog windows](#dialogs-in-their-own-window)). | *Agent settings* next to an agent in the left menu, Top menu › Agents › *Manage agents* |
| Thinking per agent | How hard this agent's model thinks in its new conversations; *Hermes default* removes its own level. Agents without their own level do not take over the level from Settings › Models. | Agent window › *Basics* › *Thinking*; also Hermes › *Profiles* ([guide](hermes.md#profiles)) |
| Categories | Fold agents into categories in the menus; drag a category header to reorder. | *Categories…* on an agent |
| Rooms | A named room with 2–6 agents: everyone answers your message and they may discuss; `@name` addresses one. | Left menu › *Rooms*, palette *Agent rooms* / *New room* |
| Quick room | Just pick agents and write; keep it as a named room later. | Top menu › Agents › Rooms › *Quick room*, palette *Quick room* |
| Agent calls | Which agent asked which, and what. | Top menu › Agents › *Agent calls* |
| Delegated agents | When Hermes delegates work to sub-agents, each shows as a card in the thread with its state, tools and result; send it a message while it runs. Its progress can move into its own window and keeps updating there. | In the thread; *Open in a new window* in the agent's progress dialog |

## Coding agents

Claude Code and OpenAI Codex inside the app, with approvals, their slash commands and history. Guide:
[Coding agents](coding-agents.md).

| Feature | What it is for | Where |
|---|---|---|
| Coding agents window | Tabs *In Kyllene*, *Running*, *Loops*, *History*. | Left menu › *Coding agents*, palette *Coding agents* / *Coding agents history (Claude Code, Codex)* / *Coding agents: who works on what* |
| New conversation | Claude Code or Codex in a folder you pick. | Palette *New coding-agent conversation (Claude Code, Codex)…*, *New conversation with Claude Code in project project*, *New conversation with Claude Code in this folder (folder)* |
| Process a tasklist task | Pick an open task of a project; the agent starts on it in the project folder. | Palette *Process a tasklist task with Claude Code…* (one per agent) |
| Remote Control | Continue a Claude Code conversation on claude.ai or your phone. | Palette *Remote Control: continue this conversation on claude.ai / phone* / *Remote Control: turn off* |
| Setup | What each agent needs (installed, signed in, provider) and its limits. | [Settings › Coding agents](settings.md#coding-agents), palette *Coding agents: status, install and sign-in* |
| Loops | Unattended workflows that run in rounds (even with the app closed): steps with Claude Code, Codex, a Hermes agent or a shell command, conditions, safety limits. | Project menu › *Loops*, palette *Loops: workflow editor* / *Loops: running loops* ([guide](coding-agents.md#loops)) |
| Loop runs in their own window | The *Runs* tab (running and finished loops with their log) in a window of its own; pause, continue, answer and stop work there too. | *Open in a new window* on the *Runs* tab, palette *Loops › runs in a new window…* |

## Widgets

Cards and windows with live data: in the right panel, the Overview, the top or bottom bar or the main area. Guide for
your own: [Build your own widget](widgets.md).

| Feature | What it is for | Where |
|---|---|---|
| Built-in widgets | Calendar, Google Tasks, Mail, Weather, Claude Code, OpenAI Codex, OpenRouter, GitLab, Teamwork, Achievements, Transcribe a recording. | Top menu › *Widgets*, palette *Widget: Weather* (one command per widget, *Widget: name*); `/widget` in a conversation |
| Connect | Sign in or give a key for widgets that need one; Google accounts for Calendar, Mail and Tasks. | The widget's card, palette *Connect widget: Weather*, *Connect a Google account (Calendar, Mail, Tasks)* |
| Widget settings | Where it shows, its own options and shortcut. | ⋯ on the card › *Widget settings…*; [Settings › Widgets](settings.md#widgets) |
| Own copy | Copy a built-in widget into your own widgets to change its code. | ⋯ › *Create own copy*, palette *Create own copy of widget: Weather* |
| Your own widgets | Publish changes to your widget so it runs (and syncs). | ⋯ › *Publish changes*, palette *Publish widget: name* ([guide](widgets.md#publishing-a-widget)) |
| Approve code from other computers | A widget's code that came by sync runs only after you approve it on this computer. | Palette *Widgets waiting for approval (n)* ([guide](sync.md#widgets-from-other-computers)) |

## Voice

Guide: [Voice](voice.md).

| Feature | What it is for | Where |
|---|---|---|
| Dictation | Speak into the message box; transcribed locally with Whisper. | *Dictate* under the message box, hold `Ctrl+Space`, palette *Dictate into the conversation (start / stop)* ([guide](voice.md#dictation)) |
| Read aloud | Have answers read to you. | *Read aloud* on an answer, palette *Read the latest answer aloud* / *Read answers aloud* / *Stop reading* ([guide](voice.md#reading-answers-aloud)) |
| Voice modes | *Manual*, *Semi-automatic* (answers are read), *Automatic* (a pause sends, hands-free). | The *Voice* chip under the message box, palette *Voice: Manual* / *Voice: Semi-automatic* / *Voice: Automatic* ([guide](voice.md#voice-modes)) |
| Conversation mode | Speak, pause to send, hear the answer; say *stop* to finish. | Palette *Conversation mode* |
| Wake word | Start listening with a spoken phrase (Hermes' local detector). | Palette *Toggle wake word*, [Settings › Voice](settings.md#voice) |
| Transcribe a recording | A meeting recording to text with speakers; the window can move out of the main window while it transcribes. | Top menu › Widgets › *Transcribe a recording*, palette *Transcribe a recording in a new window…* ([guide](voice.md#transcribe-a-recording)) |
| Settings and test | Speech model, voice, microphone and speaker test. | Palette *Settings › Speech to text*, *Settings › Voice*, *Settings › Microphone and speaker test* |

## Quick capture

A small window from anywhere, even with Kyllene in the background: ask Hermes, make a note or add a task, with a
screenshot or the selected text. Guide: [Quick capture](quick-capture.md).

| Feature | What it is for | Where |
|---|---|---|
| Quick capture | Ask / note / task in a small window; the answer shows there. | System-wide shortcut (switch on in [Settings › Quick capture](settings.md#quick-capture)), tray icon, palette *Quick capture…* |
| Screenshot → Hermes | Take a screenshot and ask about it. | Tray menu, palette *Screenshot → Hermes…* |

## Pet

An animated pet in the corner of the conversation shows what the agent is doing; it can have a mood, comment in a
speech bubble and answer when you talk to it by name. Guide: [Pet](pet.md).

| Feature | What it is for | Where |
|---|---|---|
| Show or hide the pet | Turn the pet on or off (in the terminal too) and set its size. | [Settings › Pet](settings.md#pet) › *Show the pet*, `Alt` + wheel over the pet, palette *Pet: show* / *Pet: hide* ([guide](pet.md#turn-it-on-and-off)) |
| Pick a pet | Adopt one from the public Petdex gallery and switch between your pets. | Settings › Pet › *Petdex* › *Adopt*, *Your pets* › *Show*; palette *Pet…* ([guide](pet.md#install-and-pick-a-pet)) |
| Hatch a new pet | AI draws a pet from your description: pick the image provider and model, four drafts, pick one, hatch (paid image generation, the cost is shown first). | Settings › Pet › *Hatch a new one…*, palette *Pet: hatch a new one…* / *Pet: hatch a new one in a new window…* ([guide](pet.md#hatch-your-own-pet-with-ai)) |
| Move and wander | Drag it anywhere (it never covers text), double-click returns it to its corner; let it stroll the window while the agent rests. | On the pet; Settings › Pet › *Let the pet wander the window*, palette *Pet: wander the window* / *Pet: stop wandering* ([guide](pet.md#move-the-pet)) |
| Pet in its own window | The pet on the desktop, on top of other apps: click = a message to the last conversation, double-click hides / shows Kyllene, a bubble says *Working…* / *Your turn*, a letter shows answers that finished while you were away. | `Shift`+click on the pet, palette *Pet: into its own window* / *Pet: back into the app window* ([guide](pet.md#the-pet-in-its-own-window)) |
| Mood | The pet's mood follows how the work goes (grumpy after failures, happy after successes, sleepy when quiet), with a short mark over its head; hearts when you say thanks. | Settings › Pet shows the current *Mood* ([guide](pet.md#mood)) |
| Comments | Short lines in a speech bubble about failures, questions and finished turns: prepared (free) or written by AI, in your language, optionally also on your own messages. The bubble appears beside the pet and stays put; drag it anywhere. | Settings › Pet › *Comments* ([guide](pet.md#comments-in-a-speech-bubble)) |
| Line history | Every line the pet said in this run of the app, with what it reacted to, by group (*Talking to it*, *Your messages*, *Agent's run*, *Out of boredom*). | Hover the pet › *Line history (n)*, right-click the pet › *Line history…*, palette *Pet: line history…* ([guide](pet.md#line-history)) |
| Talk to the pet | Write to it by name (*Boba, what do you think?*) and it answers in its bubble. | In any conversation ([guide](pet.md#talk-to-the-pet-by-name)) |
| Personality | The pet's name and nature, written by you or suggested by AI; they shape its comments. | The pet's ⋯ › *Personality…* in Settings › Pet, or right-click the pet ([guide](pet.md#personality)) |
| Pet brain | *No memory*, *Memory* (a memory note and small skills), *Agent* (its own Hermes profile with tools) or *Combination*. With its own agent, the pet's memory, skills and personality are the agent's. | Settings › Pet › *Pet brain* ([guide](pet.md#pet-brain)) |
| Repair animations | For a hatched pet: each animation with what the pet plays now, when it plays and how long; set its length (free) or draw a new version with an instruction, then *Use the new one* or *Discard*. | The pet's ⋯ › *Repair animations…*, right-click the pet, palette *Pet: repair animations…* / *Pet: repair animations in a new window…*; *Animation length* in Settings › Pet ([guide](pet.md#repair-animations-and-animation-length)) |
| Moods of its own | Draw the pet's own animation for chosen moods (any pet; paid, one image per mood). | The pet's ⋯ › *Generate moods…*, right-click the pet, palette *Pet: generate moods…* / *Pet: generate moods in a new window…* ([guide](pet.md#generate-moods)) |
| On other computers | The shown pet, its personality, brain and own moods follow you with sync; a hatched pet is never hatched twice. | [Sync between computers](sync.md) ([guide](pet.md#on-your-other-computers)) |

## Servers and Gateway

| Feature | What it is for | Where |
|---|---|---|
| Servers | Hermes on another machine over SSH; its conversations work with that server's files. | [Settings › Servers](settings.md#servers); **+** *New conversation on a server* in the left menu |
| Cron jobs on a server | Manage the scheduled jobs of a server. | Palette *Hermes › Cron jobs on server* |
| Gateway | Threads of Hermes' bots (Discord, Telegram…) as normal conversations: what you write goes to the channel too. | Left menu › *Gateway*; channels are set up in [Hermes › Channels](hermes.md#channels) |

## Safety and approvals

| Feature | What it is for | Where |
|---|---|---|
| Command approvals | Risky commands wait for *Allow once* / *Allow in this conversation* / *Always allow* or deny. Mode *manual*, *smart* or *off*. | Card in the thread; mode in the status bar (*Approvals*) ([status bar](settings.md#the-status-bar)) |
| YOLO | Don't ask before commands in this one conversation. | *YOLO* in the bar under the message box, palette *Don't ask before commands (YOLO) – this conversation* / *Ask before commands again – this conversation* |
| Review file writes | Before Hermes writes a file, see the diff and approve or reject it. | The *writes* chip in the bar under the message box, palette *Review file writes in this conversation* / *Write files without review in this conversation* / *File review as the project*; per project in *Edit project* › *Basics* |
| Safety mode | Which tools the agent may use: all, no terminal, read only, or custom. | The 🛡 chip in the bar under the message box, ⋯ *Conversation tools* › *Safety mode…*, palette *Conversation: safety mode…*; per project in *Edit project* › *Basics* |
| Sensitive data | Warns before keys, passwords or personal data go to a provider the project does not allow. | *Edit project* › *Sensitive data* ([guide](projects.md#the-project-window)) |
| Plugins in open conversations | Activate a newly installed Hermes plugin in conversations that are already open. | Palette *Activate a plugin in open conversations* |

## Notifications and the bell

| Feature | What it is for | Where |
|---|---|---|
| Bell | Everything that needs you or finished: approvals, questions, finished answers, Kanban, widgets, updates. *All* / *Unread*, *Mark all as read*, *Remove read notifications*; a click opens the place. | The bell in the top bar, `Ctrl+Shift+N`, palette *Notifications* / *Mark all notifications as read* |
| Read notifications aloud | The first line of new notifications is read while the app is visible. | Switch in the bell |
| System notifications | Desktop notifications while the window is not focused, per kind. | [Settings › Notifications](settings.md#notifications), palette *Settings › Notifications* |

## Achievements

| Feature | What it is for | Where |
|---|---|---|
| Achievements | Hermes' achievements with tiers and progress. | [Hermes › Achievements](hermes.md#achievements), palette *Hermes › Achievements*; the *Achievements* widget |
| Your own achievements | Create achievements of your own (synced to every device). | Palette *Hermes › New custom achievement*; [Settings › Widgets](settings.md#widgets) |

## Appearance and themes

| Feature | What it is for | Where |
|---|---|---|
| Light / dark | Switch the mode. | Status bar, palette *Light mode* / *Dark mode* |
| Colours and surface | Colour scheme and surface style. | Status bar |
| Themes | Your own look in the theme editor (from the current look or a preset), *Import…* and *Export…*. | [Settings › Appearance](settings.md#appearance), palette *Look: edit theme* / *Look: restore default* |
| Language | English or Czech. | Status bar (`EN` / `CS`) |
| Project look | A project's colour and icon (symbol, emoji, image, or generated by AI). | *Edit project* › *Look* |

## Sync, backups and clean-up

| Feature | What it is for | Where |
|---|---|---|
| Sync between computers | Projects, settings, widgets and layouts follow you to your other computers (GitHub or cloud). | [Settings › Backup & sync](settings.md#backup--sync), palette *Settings › Backup & sync* ([guide](sync.md)) |
| Backups | Daily backups of the app settings and projects (not conversations, not passwords) to this computer, git or a cloud. | [Settings › Backup & sync](settings.md#backup) |
| Project storage | Each project on this computer, in GitHub or in a cloud folder. | *Edit project* › *Storage* |
| Automatic deletion | Delete old conversations and archived Kanban cards on a schedule (off by default). | [Settings › Automatic deletion](settings.md#automatic-deletion) |

## Managing Hermes

The **Hermes** window manages Hermes itself without a terminal. Guide: [Manage Hermes in Kyllene](hermes.md).

| Tab | Palette | Guide |
|---|---|---|
| Skills, Download skills | *Hermes › Skills*, *Hermes › Download skills* | [Skills](hermes.md#skills) |
| MCP servers | *Hermes › MCP servers* | [MCP servers](hermes.md#mcp-servers) |
| Plugins | *Hermes › Plugins* | [Plugins](hermes.md#plugins) |
| Cron jobs | *Hermes › Cron jobs*, *Hermes › New cron job from a template* | [Cron jobs](hermes.md#cron-jobs) |
| Profiles | *Hermes › Profiles*, *Hermes › New profile (wizard)*, *Hermes › Import profile*, *Hermes › Export profile* | [Profiles](hermes.md#profiles) |
| Models & providers | *Hermes › Models & providers* | [Models & providers](hermes.md#models--providers) |
| Keys, Memory, Logs, System, Config | *Hermes › Keys*, *Hermes › Memory*, *Hermes › Logs*, *Hermes › System*, *Hermes › System in a new window…*, *Hermes › Config* | [Keys](hermes.md#keys) · [Memory](hermes.md#memory) · [Logs](hermes.md#logs) · [System](hermes.md#system) · [Config](hermes.md#config) |
| Hooks | *Hermes › Hooks*, *Hermes › Hooks › Gateway*, *Hermes › Hooks › Outbound webhooks* | [Hooks](hermes.md#hooks) |
| Channels, Webhooks | *Hermes › Channels*, *Hermes › Webhooks* | [Channels](hermes.md#channels) · [Webhooks](hermes.md#webhooks) |
| Statistics, Achievements, Documentation | *Hermes › Statistics*, *Hermes › Achievements*, *Hermes › Documentation* | [Statistics](hermes.md#statistics) · [Achievements](hermes.md#achievements) · [Documentation](hermes.md#documentation) |

Open the window with `Ctrl+Shift+H`, Top menu › Hermes › *Open management*, or palette *Hermes management*. When the
Hermes engine stops, Kyllene restarts it by itself and reconnects the conversations; palette *Start again* restarts
it by hand. After every Hermes update Kyllene checks that everything it uses still works and tells you if not.
Update, doctor and gateway restart run one at a time: reopening the window shows the action that is running, with
its log.

## Updates, help and first start

| Feature | What it is for | Where |
|---|---|---|
| Updates | Kyllene checks once a day; a new version opens *What's new* and *Update and restart*. | Top menu › Help › *Check for updates*, palette *Check for updates* (in the released app) |
| Documentation and What's new | These guides and the release notes of every version; the help can move into its own window. | Top menu › Help, palette *Help › Documentation* / *Help › What's new* |
| Report a bug, suggest an improvement | Forms on GitHub. | Top menu › Help, palette *Help › Report a bug* / *Help › Suggest an improvement* |
| About | Version and the Hermes versions it was tested with. | Top menu › Help › *About*, palette *About* ([Settings › About](settings.md#about)) |
| Support development | A tip on Ko-fi, if you like the app. | Top menu › Help › *Support development ☕*, palette *Help › Support development ☕* |
| Settings | Everything Kyllene itself remembers; can move into its own window (some tabs then point back to the main window). | The gear in the top bar, `Ctrl+,`, palette *Settings* ([guide](settings.md)) |
| First-run guide | A welcome window on the first start: checks Hermes, helps you connect a model and create a first project, then a short tour that highlights each part of the window. Every step can be skipped. | Opens by itself on a fresh install; Top menu › Help › *First-run guide*, palette *Help › First-run guide* |
| First start | Without Hermes, Kyllene offers *Install Hermes Agent*; without a model, *Connect a model*. When Hermes is installed but does not come up, Kyllene tries twice more and then shows *Hermes could not be started* with the details. | Shown by itself ([troubleshooting](README.md#troubleshooting)) |
