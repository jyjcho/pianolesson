# SimplyPiano

A native iPadOS piano-learning app inspired by [Simply Piano](https://hellosimply.com). Plug a USB-MIDI digital piano into the iPad, work through a 160-lesson curriculum, and get real-time note feedback on both the sheet music and an on-screen keyboard.

Built for personal family use and sideloaded via Xcode — not distributed on the App Store.

## Status

End-to-end playable on device. Core MIDI input, polyphonic audio via `AVAudioUnitSampler`, VexFlow sheet rendering, scoring, streaks, badges, and local multi-profile progress are all live. Unit tests and on-hardware verification of a few 3/4-time pieces and sustain-pedal CC handling are still open.

## Features

- **160 lessons** across 9 courses (Beginner 1-3, Intermediate 1-3, Advanced 1-3), each split into 4 units, covering keyboard basics through two-octave scales, seventh chords, voice leading, and capstone etudes.
- **Real-time MIDI note detection** from any USB-MIDI piano (developed against a CASIO PX-150 via USB-B to USB-C).
- **Multi-touch on-screen keyboard** (C3-C7) for practice without hardware, auto-extending into the bass register for lessons that need it.
- **Finger-number hints** — the expected key lights up green with a white-numbered badge during a lesson step.
- **Sheet music rendering** via bundled VexFlow inside a `WKWebView`, with typed Swift to JS bridge.
- **Local multi-profile support** — each family member gets independent stars, streaks, badges, and "continue" state on the same iPad.
- **Dual-write persistence** — UserDefaults plus a per-profile JSON file in `Documents/`, so progress survives the 7-day free-provisioning re-sign.

## Hardware

- iPad running iPadOS 26 or newer (landscape primary)
- Any class-compliant USB-MIDI keyboard
- USB-B to USB-C adapter or a powered USB-C hub

Bluetooth MIDI is not supported.

## Stack

| Layer | Choice |
|---|---|
| UI | SwiftUI (iOS 26), `@Observable` state |
| MIDI | Core MIDI (`MIDIClientCreateWithBlock`, direct `MIDIPacketList` parsing) |
| Audio | `AVAudioEngine` + `AVAudioUnitSampler` with a bundled `GeneralUser-GS.sf2` |
| Keyboard UI | `UIViewRepresentable` wrapping a custom `UIView` for reliable multi-touch |
| Sheet music | `WKWebView` + VexFlow v5 (bundled as a resource) |
| Persistence | UserDefaults plus `Documents/progress-<profileId>.json` |

## Project layout

```
simplypiano/
  App/                  # @main, RootTabView
  Features/
    Home/               # Dashboard: progress ring, streak, continue, courses, badges
    Lessons/            # Course list, unit detail, lesson play, engine, scoring
    FreePlay/           # Sheet + keyboard sandbox
    Profiles/           # Picker and edit sheets
    Settings/           # MIDI, audio, display, developer tools
    Debug/              # MIDI diagnostic spike
  Services/
    MIDI/               # MidiManager
    Audio/              # AudioEngine singleton
    Input/              # NoteInputBus (MIDI + touch merge)
    Sheet/              # SheetMusicView, SheetBridge, sheet-music.html, vexflow.js
    Progress/           # ProgressStore, Badges (profile-scoped)
    Profiles/           # Profile, ProfileStore
  UI/                   # PianoKeyboard, MidiStatusBadge, shared components
  Data/
    Lessons/            # 160 lesson definitions, Registry, Course, CourseRegistry
  Resources/
    SoundFonts/         # GeneralUser-GS.sf2
```

## Build and run

Open the project in Xcode and press Cmd+R.

```bash
open simplypiano.xcodeproj
```

- Destination: physical iPad (recommended — simulator has no MIDI input).
- Signing: Personal Team works (7-day expiry). Paid Developer Program removes the re-sign cycle.
- Bundle id: `com.jeremycho.simplypiano`.

### First install on iPad

1. Connect the iPad via USB-C and select it as the run destination in Xcode.
2. Cmd+R.
3. On the iPad: Settings -> General -> VPN & Device Management -> trust the developer certificate.
4. Launch the app, plug in the piano, and play a key — the "MIDI Diagnostic" developer screen under Settings is a good smoke test.

## Adding a lesson

The Xcode project uses `PBXFileSystemSynchronizedRootGroup`, so new `.swift` files under `simplypiano/` auto-register on next build.

1. Create `Data/Lessons/Categories/<Name>Lesson.swift` with a `static let lesson: Lesson`.
2. Append it to `Data/Lessons/Registry.swift` at the right course position.
3. Add the lesson id to the matching `Unit.lessonIds` in `Data/Lessons/CourseRegistry.swift` (a lesson missing from any unit still loads by id but won't appear in the Courses UI).
4. Pick a `LessonCategory` for Badges and Free Play iconography.

Only four `Duration` cases exist (whole, half, quarter, eighth) — no dotted variants. Pass `finger: 1...5` to `MusicNote.note(...)` to show a finger hint on the on-screen keyboard.

## Why native Swift, not React Native

Originally scaffolded as Expo + React Native. Abandoned because:

- Web MIDI is blocked on iOS Safari.
- `@motiz88/react-native-midi` is experimental.
- `AVAudioUnitSampler` gives polyphonic SoundFont playback with three lines of Swift versus bridging JS to Web Audio.

The only remaining hybrid piece is sheet music, where bundled VexFlow in a `WKWebView` is cheaper than writing a native notation renderer.

## Acknowledgements

- [VexFlow](https://www.vexflow.com) for music notation rendering.
- [GeneralUser GS](https://schristiancollins.com/generaluser.php) SoundFont by S. Christian Collins.
- [Simply Piano](https://hellosimply.com) for the app pattern that inspired this project.

## License

Personal project. Not intended for redistribution.
