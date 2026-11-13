# Quick capture

A small window you open from anywhere, even when Kyllene is in the background: ask Hermes and read the answer right
there, note something down or add a task, with the text you have selected or a screenshot.

## Open it

| Way | How |
|---|---|
| **System-wide shortcut** | Switch it on in [Settings › Quick capture](settings.md#quick-capture) (suggested `Ctrl+Alt+Space`). The desktop asks you once to confirm it; change the keys in your system settings (*Apps › Kyllene › Global shortcuts*). |
| **Tray icon** | Its menu has *Quick capture…* and *Screenshot → Hermes…*. On GNOME it needs the AppIndicator extension. |
| **Palette** | `Ctrl+K` › *Quick capture…* or *Screenshot → Hermes…*. |

## What it does

Pick one of three kinds at the top:

| Kind | What happens |
|---|---|
| **Ask Hermes** | A question in a new conversation. The answer appears in the small window; **Continue in the main window** (`Enter`) opens the conversation in Kyllene, **New question** starts again. A question you drop does not clutter your conversation list. |
| **Note** | Hermes gets "Make a note: …" and stores it its own way. |
| **Task** | Into a **Tasklist** of a project you choose (and its section), the Kanban **Inbox** (a parked card, nothing starts it on its own), or Hermes' own **To-do**. |

- **Selected text**: text you selected in another app is attached by itself; **From clipboard** uses the clipboard
  instead.
- **Screenshot**: the system picker lets you take the whole screen, a window or an area. A tasklist stores only the
  text, not the picture.
- **Answer in the main window**: on = Kyllene comes up with the new conversation; off (default) = the answer shows
  in the small window and the conversation runs in a background tab.
- When Hermes needs your approval or an answer, the small window says so: continue in the main window.
- The window remembers what you picked for the last send (the kind, where a task goes, the project and tasklist,
  where the answer shows) and offers it again next time. It grows to fit the form.

## On Wayland

Wayland gives the selected text of another app only to the window with focus, so Kyllene reads it once the capture
window is focused. The small window may fall behind another one after you click elsewhere; keep it on top through
its window menu (`Alt+Space` › *Always on Top*).
