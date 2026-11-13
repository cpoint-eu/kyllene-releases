# Pet

The pet is a small animated character that sits in the corner of the conversation and shows what the agent is doing:
working, thinking, waiting for you, or done. No need to follow the text, a glance at the pet is enough. It can also
have a mood, comment on the work in a speech bubble and answer when you talk to it by name.

The pet belongs to Hermes, so you see the same pet in the terminal (`hermes`, TUI) too. Kyllene shows it and adds the
mood, the comments and the personality on top. *Česky: [Maskot](pet.cs.md).*

**On this page:** [Turn it on](#turn-it-on-and-off) · [Install and pick a pet](#install-and-pick-a-pet) ·
[Hatch your own](#hatch-your-own-pet-with-ai) · [Move it](#move-the-pet) · [Its own window](#the-pet-in-its-own-window) ·
[States](#what-the-pets-states-mean) · [Mood](#mood) · [Comments](#comments-in-a-speech-bubble) ·
[Line history](#line-history) · [Talk to it](#talk-to-the-pet-by-name) ·
[Personality](#personality) · [Pet brain](#pet-brain) · [Repair animations](#repair-animations-and-animation-length) ·
[Own moods](#generate-moods) · [Dialogs in a window](#pet-dialogs-in-their-own-window) ·
[Other computers](#on-your-other-computers) · [Palette and shortcuts](#palette-commands-and-shortcuts) ·
[Troubleshooting](#troubleshooting)

## Turn it on and off

1. Open **Settings** (gear icon in the top bar or `Ctrl+,`) and pick the **Pet** tab on the left.
2. Switch on **Show the pet**. Switching it off hides the pet everywhere: in Kyllene and in the terminal.
3. The **Size** slider sets how big it is (**Default** resets it). You can also resize it on the pet itself: hold
   `Alt` and turn the mouse wheel.

The palette does the same: `Ctrl+K` › *Pet: show* / *Pet: hide*. If the tab says *This Hermes has no pets yet*,
update Hermes (`hermes update`).

## Install and pick a pet

**In the app:** Settings › Pet has the **Petdex** at the bottom, a public gallery of pets. Search for one and click
**Adopt**. It shows up under **Your pets**; **Show** makes it the one you see (it then says **Shown**). Its **⋯** menu
(**More**) has **Rename**, **Personality…**, **Repair animations…** (pets you hatched), **Generate moods…** and
**Remove**. To switch quickly, `Ctrl+K` › *Pet…* lists your pets with search; `Enter` shows the one you pick.

**In a terminal:** one command downloads a pet and picks it, for example Boba:

```bash
hermes pets install boba --select
```

More: `hermes pets list` (the gallery), `hermes pets select <name>` (switch to another), `hermes pets off` (turn it
off). Kyllene notices the change by itself, no restart needed.

## Hatch your own pet with AI

**Hatch a new one…** in Settings › Pet (or `Ctrl+K` › *Pet: hatch a new one…*) lets AI draw a brand-new pet:

1. **Provider**: pick the **Image provider** (the ones Hermes has set up that can draw from a reference image, for
   example *ChatGPT (subscription)*, *OpenAI (API key)*, *OpenRouter*, *Nous Portal*) and, where the provider lets you,
   the **Image model**. The dialog says up front what it costs: paid per image, or counted against your
   subscription. Without a suitable provider it lists what to set up first.
2. **Description**: describe the pet, for example *a small green dragon with glasses and a cup of coffee*, then
   **Generate drafts**.
3. **Drafts** and **Pick**: AI draws four drafts. Pick one, give it a **Pet name** and, if you like, a **Nature**
   for its [personality](#personality) (**Invent with AI** suggests both). **New drafts** or **Edit description** when
   none fits, then **Hatch**.
4. **Hatching**: every animation is drawn and put together. Then **Show as my pet**, **Hatch another** or
   **Throw away**.

## Move the pet

- **Drag it** anywhere with the mouse. Dropped over text, it moves to the nearest free spot so it never covers an
  answer or the box you type in. The spot is remembered across restarts.
- **Double-click** puts it back in its corner (bottom right, above the box you type in), and its speech bubble back
  beside it.
- The spot is remembered per computer (each one has its own screen).
- **Let the pet wander the window** in Settings › Pet (off by default; palette *Pet: wander the window* / *Pet: stop
  wandering*) lets it stroll along free spots while the agent is at rest. As soon as the agent works, it goes back to
  its spot.

## The pet in its own window

**Shift+click** the pet to pop it out into its own small window on the desktop. It stays on top even when Kyllene is
hidden or behind other apps (palette *Pet: into its own window*). Drag that window anywhere, its spot is remembered
too. **Shift+click** again (or *Pet: back into the app window*) brings it back into Kyllene.

On the desktop the pet does more:

- **Click** opens a small message box (the [quick capture](quick-capture.md) window) that writes into the
  conversation you used last; the answer shows there.
- **Double-click** hides the main Kyllene window, or brings it back.
- A small bubble beside it says *Working…* while an agent works and *Your turn* when one waits for you.
- When an answer finished while you were in another app, a **letter** appears next to the pet. Click it to open that
  conversation (with several, the newest one).

## What the pet's states mean

| What the pet does | What it means |
|---|---|
| Stands at rest | The agent is idle, you can type. |
| Runs | The agent is working, for example using a tool (searching, reading files, running a command). |
| Thinks | The agent is working out what to do next. |
| Waits | The agent needs you: a question, an approval or a password. Also when another open conversation needs you, not just the one you look at. |
| Looks sad | Something failed (a tool or the answer). Have a look at the conversation. |
| Waves | Done, the agent finished its answer. |
| Jumps for joy | The agent finished its whole to-do list, or you thanked it ("thanks", ❤️); hearts float up over it. |

The short ones (wave, jump, failure) last a moment; then the pet goes back to rest or to work.

## Mood

On top of its state the pet has a **mood** that follows how the work goes on this computer: failures in a row make
it grumpy, then fed up, then angry; successes make it happy and excited; a long quiet spell makes it relaxed and
later sleepy. Over time it returns to calm. Settings › Pet shows the current **Mood** under the shown pet.

You see the mood in how the pet moves (pace, a shake, a bounce, a light tint) and, when a mood arrives, in a short
mark over its head: ❓ ❗ ✨ 💢 💧 ♪. The mark goes after a few seconds; only 💤 (sleepy) and ⏳ (impatient) stay while
the mood lasts. The mood also sets the tone of the pet's [comments](#comments-in-a-speech-bubble). Every pet shows
its moods for free; [Generate moods](#generate-moods) draws its own animations for them.

## Comments in a speech bubble

Now and then the pet comments on the agent's work in a speech bubble: a failed tool or test, a question for you, a
finished turn. The bubble stays until you click it or the next line replaces it.

- The bubble appears **beside the pet** and stays where it is, also when the pet walks on, so you can read it; thought
  dots lead from the bubble to the pet.
- **Drag the bubble** anywhere: later lines appear at the same spot (remembered on each computer). Double-click the pet
  to put the bubble back beside it.
- Hover the pet for **Line history (n)**, which opens [all its lines](#line-history).

Set it up in Settings › Pet › **Comments**:

| Option | What it does |
|---|---|
| **Mode** | **Off** (the pet stays quiet), **Prepared lines** (default: free ready-made lines that fit the moment and the pet's nature) or **AI lines** (a model writes each line from a short summary of the moment, never the whole conversation; costs tokens, and when it fails a prepared line is shown). |
| **Model of the lines** | For AI lines: **Like the conversation** (the model of the conversation the comment is about) or one model you pick. A pricey model shows what a line costs. |
| **Longest silence** | While an agent works and the pet has said nothing for this long (2–30 min, default 5), it comments on what is going on. With nothing running it stays quiet. |
| **Language** | **Like the app** (Kyllene's language on each computer), *Čeština* or *English*. |
| **Comment on my messages too** | Off by default. The pet now and then reacts to a message you send (not to short replies or commands, at most every 3 minutes). With AI lines your message goes to the comment model. |

## Line history

**Line history** shows every line the pet said since Kyllene started on this computer, newest first: when it said it,
what it reacted to (*Tool … failed*, *The agent finished its work*, *Your message to the agent: …*) and in which
conversation. The tabs at the top sort the lines into **Talking to it**, **Your messages**, **Agent's run** and
**Out of boredom** (**All** shows everything); **Newer** and **Older** page through them.

Open it by hovering the pet › **Line history (n)** (also on the popped-out pet), with a right-click on the pet ›
**Line history…**, or with `Ctrl+K` › *Pet: line history…*. The history covers only this run of Kyllene on this
computer.

## Talk to the pet by name

Write to the pet by its name in a conversation, for example *Boba, what do you think?* or *what do you say, Boba?*.
The pet answers in its bubble, and the agent leaves that reply to the pet. This works whenever **Comments** are not
**Off**. Talking *about* the pet (*Boba's animation is cute*) does not count. With the brain
[Memory or Combination](#pet-brain), *Boba, remember …* saves a note to its memory.

## Personality

Each pet can have a **Name** and a **Nature** (*endlessly curious, talks short and funny, hates red tests*); they
shape its comments. Set them when hatching, or later in the pet's **⋯** › **Personality…** (also on a right-click on
the pet); a pet without one offers **Add a personality**. **Invent with AI** suggests both. The personality is kept
in Kyllene's settings and travels with the pet to your other computers; Hermes is not changed.

A pet with its own agent ([Agent or Combination](#pet-brain)) has one personality: saving **Personality…** rewrites
the agent's personality (`SOUL.md`), and saving **Personality (SOUL.md)** in the agent's detail (**Basics**) changes
the pet's nature too (a SOUL you wrote yourself becomes the whole nature, so none of your instructions is lost). Its
next line already uses the new personality.

## Pet brain

**Pet brain** in Settings › Pet sets how much the shown pet knows and can do when it comments and answers. It is set
per pet and travels with it; each level says what it costs.

| Level | What the pet can do |
|---|---|
| **No memory** | Default. Every line stands alone and the pet remembers nothing; no extra cost. |
| **Memory** | Remembers you, its own lines and what happened, has small skills and does not repeat itself; about 1,000 extra tokens per line and one cheap call a day. |
| **Agent** | A whole Hermes agent with the pet's name: its own memory, skills and tools, it can look things up. Every line is a full agent turn (about 17,000 tokens). |
| **Combination** | Ordinary lines through Memory; when you talk to the pet by name, the whole agent answers. |

With **Memory** or **Combination** two more parts show:

- **Memory**: a note the pet gets with every AI line (up to 2,000 characters). Edit it and **Save**, or tell the pet
  in a conversation (*Boba, remember …*). Once a day the comment model tidies it. **What it knows about the user**
  (off by default) also gives the pet the first 1,000 characters of Hermes' `memories/USER.md`, read only.
- **Skills**: small packs of what the pet knows and jokes about (say *PHP and Symfony* or *running*). **Add skill**
  (**Name**, **When it fits**: the events it is for, optional keywords, **Content**) or **Think one up with AI**. An
  AI line gets at most one skill that fits.

**Agent** and **Combination** need a Hermes profile for the pet: Kyllene offers **Create profile** (a personality
from the pet's nature, its own memory, skills and tools). The profile then shows among your agents; delete it in
Hermes › Profiles. When the agent cannot answer, the pet speaks with Memory (Combination) or as with No memory (Agent).

With its own agent the pet has **one memory, one set of skills and one personality**, shared with that agent:

- **Memory** in Settings › Pet is the agent's own memory, the same note as in the agent's detail › **Memory**. What
  the pet remembers, rewrites or forgets shows there, and what you edit in either place, the other sees. With
  **Agent** the pet looks after this memory itself (no daily tidy).
- **What it knows about you** is a second note: what the agent remembers about you, the same as in the agent's detail
  › Memory › *What it knows about you*. The pet writes there itself, and so does Hermes after a conversation.
- **Skills** show with **Agent** too. Kyllene copies them into the agent's profile as Hermes skills; the agent's
  detail › **Skills** lists them under **Pet skills · Boba**. Edit them in Settings › Pet › Skills: a change made to
  the copies in the agent is replaced by the pet's version.
- Before each line the agent gets the pet's latest lines from all your computers, so it does not repeat itself.

Both notes and the skills travel with the pet to your other computers.

## Repair animations and animation length

**Animation length** in Settings › Pet (under the shown pet) sets how long each of the pet's animations plays, from
1 to 8 seconds (**Normal** is 1.1 s); **All back to normal** resets them. It is free and applies at once.

For a pet you hatched, **Repair animations…** (its **⋯** menu, a right-click on the pet, or `Ctrl+K` › *Pet: repair
animations…*) shows each animation on its own and redraws only the ones that look wrong:

1. **Pick an animation** in the list on the left. The detail on the right plays **Now**, exactly what the pet plays
   (with its frame count; *longer version* when it plays a longer one Kyllene drew), and says when the pet plays it,
   for example *When the agent finishes an answer*.
2. **Length**: how long this animation plays. It applies at once and for free; a new version also gets its number of
   frames from it.
3. **Draw a new version**: write **What should look different (optional)** and click **Draw a new version**. The
   frame count and the cost are shown next to the button; **Drawn by … · change** picks the **Image provider** and
   **Image model** as when hatching. One animation is drawn at a time; the others wait until it is done.
4. Compare **Now** and **New**, then **Use the new one** (the pet plays it at once) or **Discard**. **Draw again**
   tries once more. Animations with a new version are marked *new* in the list.
5. **Apply and close** saves every new version you did not discard; **Close (keeps drawing)** lets a running drawing
   finish. **Back to the original** drops a longer version, and **Restore previous look** undoes the last repair.

A longer animation gets enough frames for its length (about one per 0.3 s, up to 28) and is drawn in several images
(about one per six frames), all at one size, so the pet does not grow or shrink while it plays.

## Generate moods

Every mood is played for free by adjusting a standard animation. **Generate moods…** (the pet's **⋯** menu, a
right-click on the pet, or `Ctrl+K` › *Pet: generate moods…*) draws the pet's own animation for the moods you pick
instead; it works for any pet, also one from the Petdex. Each mood shows *free adjustment* or *own*; **Pick the
missing ones** ticks every mood without its own animation. Drawing is paid (one image per mood, the cost is shown).
Each finished mood is saved at once, and **Close (keep drawing)** lets the drawing run on. **Remove** on a mood goes
back to the free adjustment.

## Pet dialogs in their own window

**Hatch a pet**, **Repair animations** and **Generate moods** take a while. Move one into a window of its own with
**Open in a new window** (the window icon in its header) or the palette's *Pet: hatch a new one in a new window…*,
*Pet: repair animations in a new window…* and *Pet: generate moods in a new window…*, and keep working in the main
window. Nothing is lost on the way: drafts, notes and new animations you have not decided on yet stay.

- ✕ closes only the window; the drawing goes on in the main window. When it ends, the bell says so (for example
  *Repair animations: done*); a click shows the result.
- **Back to the main window** (dock icon in the window's header) shows the dialog in the main window again.
- The *n in windows* chip in the main window shows what each window is doing (*Drawing drafts 2/4*, *New animations to
  decide: 2*); a click brings it up.

More about dialog windows: [Everything in Kyllene](features.md#dialogs-in-their-own-window).

## On your other computers

With [sync](sync.md) on, the shown pet and its size follow you: a Petdex pet installs itself on the other computer, a
hatched one travels with its drawings, so you never hatch (and pay) twice. Its personality, brain, memory, skills,
own moods and animation lengths travel with it. Whether the pet is shown, where it sits on the screen and its current
mood stay on each computer.

## Palette commands and shortcuts

`Ctrl+K` offers *Pet…*, *Pet: show* / *Pet: hide*, *Pet: into its own window* / *Pet: back into the app window*,
*Pet: wander the window* / *Pet: stop wandering*, *Pet: line history…*, *Pet: hatch a new one…* / *Pet: hatch a new
one in a new window…*, *Pet: repair animations…* / *Pet: repair animations in a new window…* (hatched pets) and
*Pet: generate moods…* / *Pet: generate moods in a new window…*. Settings › Shortcuts has a **Pet** group: give
choosing the pet, show / hide, its own window, hatching (also in its own window) and the line history a key of your
own (**Set**); the mouse actions (Shift+click, click, double-click, Alt + wheel) are listed there too.

## Troubleshooting

| Problem | What to do |
|---|---|
| No pet to be seen | Check that **Show the pet** is on in Settings › Pet and that a pet is picked (**Show**). |
| The pet does not move | Reduced motion is on in your system; the pet then stands still and shows its state with one picture. |
| The pet says nothing | Settings › Pet › **Comments** › **Mode** is **Off**, or no agent is working (with nothing running it stays quiet). |
| AI lines sound like prepared ones | The model of the lines is not connected on this computer, or the call failed; a prepared line is shown instead. |
| Hatching cannot start | No image provider that can draw from a reference image is set up in Hermes; the dialog lists what to set up (for example an OpenRouter key in Hermes › Keys). |
| The pet's desktop window forgets its spot | On pure Wayland (no XWayland) a window cannot place itself. |
