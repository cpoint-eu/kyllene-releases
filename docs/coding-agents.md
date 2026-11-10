# Coding agents

Kyllene runs **Claude Code** and **OpenAI Codex** inside the app, next to your Hermes conversations: the same
composer, live tool activity, approvals in the thread, their slash commands, and their whole history.

![Claude Code inside Kyllene](../media/screenshots/coding.webp)

## What you need

Each agent needs, on this computer:

1. **Its command installed**: `claude` (Claude Code) or `codex` (Codex CLI).
2. **Its own sign-in**: run `claude` or `codex` once in a terminal and log in.
3. **A signed-in Hermes provider** for it: Anthropic for Claude Code, ChatGPT/Codex for Codex. Connect it in
   [Hermes › Models & providers](hermes.md#models--providers).

[Settings › Coding agents](settings.md#coding-agents) shows for each agent what is ready and what is missing, plus
its current limits. **Check again** after you install or sign in.

## Conversations

Open **Coding agents** in the left menu. It has three tabs:

| Tab | What it shows |
|---|---|
| **In Kyllene** | Conversations you started or continued in Kyllene. |
| **History** | Every Claude Code and Codex conversation on this computer, read from the agents' own logs, also those from the terminal. *This project only* narrows it to the current project's folder. |
| **Running** | Open agent tabs and agents working right now: folder, branch, card or task, state, tokens. |

- **New conversation** asks for the folder the agent works in: your Kyllene projects, recently used folders and the
  subfolders of the [folders with projects](settings.md#coding-agents) are offered.
- A conversation from **History** can be **continued in Kyllene** (the next message continues it in the same agent)
  or **taken over into Hermes** (copied into a normal Hermes conversation that Hermes continues).
- **End process** stops the agent's process and whatever it started; the next message continues the conversation.
- **Remote Control** (Claude Code): continue the conversation on claude.ai or in the Claude app on your phone;
  prompts written there show up here. Needs Claude Code's own claude.ai login.

## Coding agents and Kanban

A [Kanban](kanban.md) card can be handed to a coding agent: **Process with …** gives it its own git worktree and
branch of the project's code repository; the card moves to *Running* and to *Review* when the agent finishes.
**Review with …** lets another agent review that branch read-only and writes its findings into the card's comments.

## Limits

The **Claude Code** and **OpenAI Codex** widgets show your plan limits with a pace line: is your usage on track to
last until the reset? They read the logins on this computer; switch them on in the **Widgets** menu.
