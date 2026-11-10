# Build your own Kyllene widget

A widget is a small card or window in Kyllene that shows whatever you need: your server's health, a sales number, a
feed, your team's tickets, a home sensor. This guide shows how to make one.

> **The quickest way:** let Hermes write it. In a Kyllene conversation, say something like
>
> *Read https://github.com/cpoint-eu/kyllene-releases/blob/main/docs/widgets.md and build me a Kyllene widget that
> shows the status of my GitHub Actions runs. Put it in ~/.local/share/kyllene/widgets/.*
>
> Hermes (or Claude Code) asks a few questions and writes the files. Then press **Publish** at the widget in
> **Settings › Widgets** and pick it in the **Widgets** menu.

**Contents:** [How a widget works](#how-a-widget-works) · [Your first widget in 5 minutes](#your-first-widget-in-5-minutes) ·
[Where widgets live](#where-widgets-live) · [Publishing](#publishing-a-widget) · [widget.json](#widgetjson) ·
[The data script](#the-data-script) · [widget.js](#widgetjs) · [States, bar and folded row](#states-bar-and-folded-row) ·
[Settings](#settings) · [Actions](#actions-buttons-that-do-something) · [Notices](#notices) ·
[More power](#more-power-ai-hermes-coding-agents-a2a) · [The api object](#the-api-object) · [Looks](#looks) ·
[Rules and safety](#rules-and-safety) · [Troubleshooting](#troubleshooting)

## How a widget works

A widget is a folder with a few files:

```
system-load/          ← the folder name is the widget id: a–z, 0–9, "-", "_"
  widget.json         ← the manifest: name, icon, where it lives, script, settings (required)
  widget.js           ← the view: what the card draws (required)
  widget.css          ← styles (optional)
  fetch.py            ← a data script in any language (optional)
```

- The **data script** gets the data (an API, a file, a command) and prints one JSON object. Kyllene runs it on a
  timer while the widget is on screen. It is a plain program: no AI runs, no tokens are spent.
- **widget.js** draws that data with small HTML templates (React under the hood, no build step).
- The **manifest** says where the widget lives, how often the script runs and what the user can set.

The app does the rest: the card frame, folding, the bar item, the dot on the icon, notices, settings form,
sync to your other computers.

## Your first widget in 5 minutes

The example [`examples/widgets/system-load`](../examples/widgets/system-load) shows memory, disk and CPU load of
your computer. It uses a data script, states, a folded row, a bar item, a setting and a notice.

1. Copy the folder into your widgets folder:

   ```bash
   mkdir -p ~/.local/share/kyllene/widgets
   cp -r examples/widgets/system-load ~/.local/share/kyllene/widgets/
   ```

2. Publish it (this tells Kyllene the folder is complete and may run): open **Settings › Widgets**. *System load*
   is listed with „Not published yet“; press **Publish** next to it.

3. In Kyllene open **Widgets** in the top bar. *System load* is in the *Personal* group; click it to put it on its
   place (the right column).

Change something in `widget.js` and publish again (**⋯ › Publish changes** on the card, or **Publish** in Settings ›
Widgets), and the card updates.

## Where widgets live

| Setup | Folder |
|---|---|
| Without sync | `~/.local/share/kyllene/widgets/<id>/` |
| With sync on (Settings › Backup &amp; sync) | `<your sync folder>/widgets/<id>/`, and every computer gets the widget |

Every widget's ⋯ menu has **Open widget folder**. Built-in widgets (Weather, Calendar, …) cannot be edited, but
**⋯ › Create own copy** puts a copy of their code into your widgets folder: a good start for your own.

## Publishing a widget

Kyllene runs only a **published** version of a widget. Saving a file is not enough, so a half-written widget (or one
still being copied) never runs. When all files are done, press **Publish**:

- **Settings › Widgets**: a widget with edits that do not run yet is marked „unpublished changes“ and has a
  **Publish** button,
- **⋯ › Publish changes** on the widget's card or window,
- the palette (Ctrl+K): **Publish widget: …**.

Publishing writes a `.widget-published` file with a fingerprint of the folder. Each edit needs a new publish; until
then the last published version keeps running.

Scripts and agents can publish without the app: [`tools/publish_widget.py`](../tools/publish_widget.py) writes the
same file and needs only Python 3 (Kyllene 0.0.1-beta has no Publish button yet, use this tool there). Without a clone
of this repository, download it once:

```bash
curl -fsSL -o ~/.local/bin/kyllene-publish-widget https://raw.githubusercontent.com/cpoint-eu/kyllene-releases/main/tools/publish_widget.py
chmod +x ~/.local/bin/kyllene-publish-widget
kyllene-publish-widget ~/.local/share/kyllene/widgets/my-widget
```

## widget.json

```json
{
  "id": "system-load",
  "version": "1.0.0",
  "author": "you",
  "name": { "en": "System load", "cs": "Zátěž systému" },
  "description": { "en": "CPU, memory and disk of this computer" },
  "category": { "en": "Personal" },
  "icon": "cpu",
  "color": "accent",
  "type": "sidebar-right",
  "notify": true,
  "permissions": ["files", "run"],
  "script": { "run": ["python3", "fetch.py"], "every": 60, "timeout": 10 },
  "settings": []
}
```

| Field | Meaning |
|---|---|
| `id` | Same as the folder name. |
| `name`, `description`, `category` | A string, or `{ "en": …, "cs": … }` per language. The category groups widgets in the Widgets menu. |
| `version`, `author` | Shown in Settings › Widgets. |
| `icon` | One of: `bell kanban clip x alert plus chat bot search cal mail sun moon globe trash pencil shield key users brain logs chart hook webhook cpu zap pin star file folder download sync panel tasks check flag code link info tag external dots book clock play plug puzzle sliders list`. |
| `color` | `#rgb`, `#rrggbb` or a theme colour `accent`, `ok`, `warn`, `err`. |
| `type` | Where the widget lives (table below). |
| `notify` | `true` = a new warn/error state becomes a notice (see [Notices](#notices)). |
| `permissions` | **Information only**: what the widget does, shown to the user before they trust it. `network`, `files`, `hermes`, `secrets`, `accounts`, `write`, `ai`, `run`. |
| `script` | The data script (see below). |
| `settings` | What the user can set (see [Settings](#settings)). |

**`type`: where the widget lives**

| `type` | Place | `ctx.place` in widget.js |
|---|---|---|
| `sidebar-right` | a card in the right column (also allowed on Overview › Today) | `rail` |
| `card` | a card on the Overview dashboard | `ov` |
| `sidebar-left` | a card in the left menu | `side` |
| `main` | the main area, instead of the conversations | `main` |
| `top-bar` / `bottom-bar` | an item in the top bar / status bar (needs a bar state) | `top` / `status` |
| `window` | only its own window, opened from the Widgets menu or the palette | `modal` |

Every widget can also open in a window (`ctx.place` = `modal`) from its ⋯ menu, and get a link in the navigation.

## The data script

```json
"script": { "run": ["python3", "fetch.py"], "every": 900, "timeout": 20 }
```

- `run`: the command. A bare name (`python3`, `node`, `bash`) is looked up in `PATH`, a path (`./fetch.sh`) is relative
  to the widget folder. The script runs **in** the widget folder.
- `every`: seconds between runs, 30 – 86400 (default 900). `timeout`: 1 – 120 s (default 20).
- It runs only while the widget is shown somewhere. Saving the settings and **Run now** run it at once.

**Input** (environment variables):

| Variable | Content |
|---|---|
| `KYLLENE_WIDGET_SETTINGS` | the settings values as JSON |
| `KYLLENE_WIDGET_ID` | the widget id |
| `KYLLENE_LANG` | the app language (`en`, `cs`) |
| `KYLLENE_HERMES_HOME` | Hermes' home folder (its logins, e.g. Google tokens: read them there, never copy them into the widget folder) |
| `<KEY NAME>` | every `secret` setting, as an environment variable with the key's value from Hermes' `.env` |

**Output:** ONE JSON object on stdout. Every part is optional:

```json
{
  "data": { "anything": "widget.js reads this" },
  "status": [{ "id": "mem", "level": "ok", "kind": "progress", "value": 49, "label": "RAM" }],
  "bar": { "value": "RAM 49 %", "level": "ok" },
  "collapsed": { "text": "Load", "value": "49 %" },
  "notify": [{ "id": "disk", "level": "warn", "title": "Disk almost full" }]
}
```

- A non-zero exit (the last stderr line is the reason), a timeout or output that is not a JSON object = an error
  state; the last good data stay on screen.
- **Not connected yet** (no key, no login, no address): do not fail. Print
  `{ "connect": { "kind": "key", "text": "Add your API key.", "key": "MY_SERVICE_KEY" } }` and exit 0. The card then
  shows a calm "Not connected" state with a **Connect…** button that opens the widget's settings. `kind` is one of
  `key`, `url`, `place`, `google`, `cli`, `other`.
- Test it alone first: `KYLLENE_WIDGET_SETTINGS='{"warnAt":80}' python3 fetch.py`

## widget.js

An ES module. Its default export gets the `api` object and returns the widget's parts:

```js
export default function (api) {
  const { html, ui, useText } = api;

  function Body({ ctx }) {                       // ctx.place: where it is drawn (rail, ov, modal, main…)
    const t = useText();
    const { data, error, loading, refresh } = api.data.useScript();
    if (!data) return html`<${ui.Empty} text=${loading ? "Loading…" : error} />`;
    return html`
      <div class="xw-hello">
        <b>${data.count}</b> ${t({ en: "open tickets", cs: "otevřených tiketů" })}
        ${ctx.place === "modal" && html`<button class="btn sm" onClick=${refresh}>Refresh</button>`}
      </div>`;
  }

  return { Body };   // optional too: useStatus, useBar, useCollapsed (see below)
}
```

- `html` is [htm](https://github.com/developit/htm) bound to React: JSX-like templates without a build step. `${}` for
  values and handlers, `class` works, `style` must be an object (`style=${{ flex: 1 }}`), never a string.
- `Body` is a React component: hooks (`api.useState`, `api.useEffect`, …) at its top level only, never conditionally.
- Draw more in the window (`ctx.place === "modal"` or `"main"`): history, a list, a chart.
- Keep widget.js self-contained: no imports from the network. Data files go next to it (`api.readFile(name)`).

## States, bar and folded row

The app draws these the same way for every widget, from plain data. Return them from the script (`status`, `bar`,
`collapsed`) or from hooks in widget.js (`useStatus(ctx)`, `useBar(ctx)`, `useCollapsed(ctx)`).

**States** (a list, the first one is the main state), used in the navigation link, the card, tooltips and notices:

```js
{ id: "open", level: "warn", kind: "count", value: 3, label: "open", tip: "3 open tickets" }
```

- `level`: `ok`, `info`, `warn`, `error`, `neutral`, `busy`. A `warn`/`error` state puts a dot on the widget's icon.
- `kind`: `dot`, `text`, `count`, `progress` (value in %), `spark` (a mini chart of `series`, up to 60 numbers),
  `off` (switched off or not signed in).

**Bar item** (top bar / status bar): `{ icon?, value?, level?, tip? }`, `value` max. 12 characters. Without it the
widget cannot sit in a bar.

**Folded row** (a folded card in a side panel): `{ icon?, text, value?, progress?, level?, bars? }`, `text` max.
40 characters; `bars` = up to 3 small labelled bars `{ label, progress, level? }`. Without it the card does not fold.

## Settings

Values the user sets in the widget's **⋯ › Widget settings…**. They sync to your other computers unless marked
`device`.

```json
"settings": [
  { "key": "place", "type": "text", "label": { "en": "Place" }, "help": "A town", "default": "" },
  { "key": "days", "type": "number", "label": "Days", "min": 1, "max": 14, "default": 7 },
  { "key": "units", "type": "select", "label": "Units", "options": [{ "value": "c", "label": "°C" }, { "value": "f", "label": "°F" }] },
  { "key": "alerts", "type": "toggle", "label": "Warn me", "default": true },
  { "key": "token", "type": "secret", "label": "API key", "default": "MY_SERVICE_KEY" },
  { "key": "repos", "type": "list", "label": "Repositories" },
  { "key": "folder", "type": "text", "label": "Local folder", "device": true }
]
```

- Types: `text`, `number`, `select`, `toggle`, `secret`, `list` (one value per line), `data` (a JSON object the widget
  saves from its own UI, not shown in the form).
- **`secret` stores only the NAME of a key** in Hermes' `.env` (`~/.hermes/.env`). The value never reaches widget.js
  or the sync folder; only the data script gets it, as an environment variable of that name.
- `device: true` keeps the value on this computer only (paths, ports, local accounts).
- In widget.js: `api.useSettings()` reads the values, `api.openSettings()` opens the form,
  `api.saveSettings({ key: value })` saves from the widget's own UI (e.g. a place picked in the card).

## Actions: buttons that do something

A button in the widget can run the **same data script** again as an action (send, delete, load another range):

```js
const res = await api.action("close", { id: ticket.id });   // → the JSON object the script prints
```

```python
action = os.environ.get("KYLLENE_WIDGET_ACTION")
if action == "close":
    payload = json.loads(os.environ["KYLLENE_WIDGET_PAYLOAD"])
    ...  # call the API
    print(json.dumps({"ok": True, "refresh": True}))   # refresh = run the data script right after
elif not action:
    print(json.dumps({"data": fetch()}))               # the normal data run
```

**Anything that writes outside the widget runs only after the user confirmed it in the widget**, with a sentence
saying what will happen. Never from a timer, never by itself.

## Notices

A widget can put notices into Kyllene's bell (and a system notification while the window is in the background):

- `"notify": true` in widget.json: every new `warn`/`error` state is announced once, and so is a failing script.
- From the script: `"notify": [{ "id": "disk", "key": "90", "level": "warn", "title": "Disk at 90 %", "body": "…" }]`.
- From widget.js: `api.notify({ id, key?, level, title, body? })`.

`id` is the topic (a new notice replaces the old one), `key` what counts as news (the same `id` + `key` is never
announced twice). The user can switch notices off per widget.

## More power: AI, Hermes, coding agents, A2A

| You want | Use |
|---|---|
| AI fills a form or drafts a text the user then confirms | `await api.ai.draft(instructions, input)` → the first JSON object of the answer from Hermes' main model |
| A job that needs judgement, handed to Hermes | `await api.hermes.start({ prompt, title?, model?, provider?, skill? })` opens a new Hermes conversation working on it |
| A coding job | `await api.code.start({ agent: "claude" \| "codex", dir, prompt })` opens Claude Code or Codex in that folder |
| Data from one of your agents | an A2A skill instead of a data script: `"a2a": { "skill": "<id>", "input": { … } }` in widget.json, `api.a2a.use()` in widget.js |
| A chart | `api.ui.Chart({ type: "line" \| "bar" \| "doughnut", labels, series })` in the app's colours |

Start AI, Hermes and coding agents only from a user's click: they spend the user's model limits.

## The api object

| Member | What it is |
|---|---|
| `html`, `h`, `React`, `useState`, `useEffect`, `useMemo`, `useRef` | templates and React |
| `data.useScript()` | the script's output: `{ data, status, bar, collapsed, error, at, loading, refresh }` |
| `data.useHermes()` | Hermes usage analytics, Kanban and cron data |
| `data.usePanes()` | open conversations `{ pid, title, state }` |
| `useSettings()`, `openSettings()`, `saveSettings(patch)` | the widget's settings |
| `useStore(key, init)` | a value kept across restarts on this computer, like `useState` |
| `action(name, payload)` | run the script as an action |
| `notify({ id, key?, level, title, body? })` | a notice in the bell |
| `openWindow()` | open this widget in its window |
| `openUrl(url)`, `pickFiles({ multiple? })`, `readFile(name)` | a link in the browser, the file picker, a file from the widget folder |
| `go.conversation(id)`, `go.kanban(projectId?)`, `go.widget(id)`, `go.file(path)` | open things in the app |
| `ai.draft`, `hermes.start`, `code.start`, `code.roots()`, `a2a.use`, `a2a.act` | see [More power](#more-power-ai-hermes-coding-agents-a2a) |
| `ui.Icon`, `ui.Empty`, `ui.Modal`, `ui.Menu`, `ui.Toggle`, `ui.Chart`, `ui.Delta` | the app's own components |
| `useLang()`, `useText()` | the language; `useText()({ en, cs })` picks the text |
| `fmt.num(n)`, `fmt.usd(n)` | number formatting like the app |
| `id`, `dir`, `version` | the widget id, its folder, the API version |

## Looks

Use the app's CSS variables so the widget follows the colour scheme and light/dark mode: `--ink`, `--ink-2`,
`--ink-3` (text, quieter, muted), `--accent`, `--ok`, `--warn`, `--err`, `--line`, `--hover`, `--r-sm` (corner
radius). Buttons: `class="btn sm"`, muted text: `class="muted"`. **Prefix every class** with `xw-<id>-`: widget CSS
is global.

## Rules and safety

- **Widgets run with the app's full rights** (no sandbox). Install only widgets you trust.
- Code that arrives by sync from another computer runs only after you approve it on this one.
- Anything that writes outside the widget (send, delete, publish) asks the user first.
- Keys stay in Hermes' `.env`, referenced by a `secret` setting. Never put keys into the widget folder: it syncs.
- Ids of built-in widgets are taken: `calendar`, `mail`, `google-tasks`, `weather`, `gitlab`, `teamwork`,
  `claude-code`, `codex`, `openrouter`, `kpi-tokens`, `kpi-cost`, `kpi-convs`, `kpi-done`, `tokens`, `models`, `work`,
  `kanban`, `activity`.

## Troubleshooting

| Problem | What to do |
|---|---|
| The widget is not in the Widgets menu | Settings › Widgets lists load errors (bad JSON, unknown `type`, missing widget.js). |
| "Not published yet" / "Widget is not published" | Press **Publish** at the widget in Settings › Widgets after the last edit. |
| An edit does not show | Publish again; until then the last published version runs. |
| Error state in the card | Run the script by hand with the same `KYLLENE_WIDGET_SETTINGS`; its last stderr line is the message. |
| The card does not fold / is missing in the bar | Add `collapsed` / `bar` (script) or `useCollapsed` / `useBar` (widget.js). |
| The widget crashed | `style` must be an object, and hooks may not be called conditionally. |

Questions or a widget you want to share? [Open an issue](https://github.com/cpoint-eu/kyllene-releases/issues).
