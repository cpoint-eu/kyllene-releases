# Voice

Talk to Hermes instead of typing, have answers read aloud, go fully hands-free, and turn recordings into text.
Speech recognition runs **locally** with Whisper inside Hermes: your voice stays on your computer.

## Dictation

- Click the **microphone** in the composer, or **hold `Ctrl+Space`**, speak and release: the text goes into the
  message field so you can check it and send it.
- The first time, Kyllene offers to download a speech model. The smaller one (*turbo*, ~1.5 GB) dictates faster,
  *large-v3* (~2.9 GB) writes most accurately. Without an NVIDIA graphics card, *turbo* is the usual choice. Change
  it later in [Settings › Speech to text](settings.md#speech-to-text) (recordings) and [Settings ›
  Voice](settings.md#voice) (a separate, smaller model just for dictation).
- When the local engine cannot run at all (no model, no Whisper), dictation uses Hermes' own speech recognition
  (*Automatic* engine).
- **`Ctrl+Shift+E`** tidies up the message text: the selection, the last dictation or the whole draft.
- The dictation keys can be changed in [Settings › Voice](settings.md#voice) or [Settings ›
  Shortcuts](settings.md#shortcuts).

## Reading answers aloud

- The **Read aloud** speaker icon in the corner of an answer reads it with Hermes' text-to-speech voice. `Esc`
  stops reading.
- The voice and the TTS provider are Hermes' settings (Hermes › Config › *Text to speech*). Edge voices are free and
  pick a voice for the reading language.

## Voice modes

Set in [Settings › Voice](settings.md#voice) (**Voice** button), saved on this computer only:

| Mode | How it works |
|---|---|
| **Manual** (default) | Use the microphone button or hold the shortcut to dictate. You send and read yourself. |
| **Semi-automatic** | Hold the shortcut, speak and release. `Enter` sends; finished answers are read automatically. |
| **Automatic** | Start listening once (or arm the wake word). A pause sends the message, the answer is read, then it listens again. |

The microphone is always off after a restart. In a noisy room raise *Speech volume threshold*; if it sends while
you are still thinking, raise *Pause before sending*.

**Voice commands** while dictating: say *new conversation*, *send*, *clear*, *read again* or *stop* and Kyllene
does it instead of typing the words.

**Wake word**: with Hermes' wake-word detector set up, Kyllene can listen for the wake phrase on this computer
(Settings › Voice › *Wake word on this computer*, off by default).

## Transcribe a recording

The **Transcribe a recording** widget turns an audio file (a meeting, an interview) into text with speakers marked
(Speaker 1, 2…), locally with Whisper. It saves the transcript next to the recording, into a project, or into a
conversation with a summary. Switch it on in the **Widgets** menu; speaker detection is set up in [Settings › Speech
to text](settings.md#speech-to-text).

## Test your microphone

[Settings › Voice](settings.md#voice) › **Say something** records five seconds and shows the transcript (never sent
anywhere); **Play sample** plays the reading voice. If nothing is recorded, check the microphone access and the
selected input device in your system settings.
