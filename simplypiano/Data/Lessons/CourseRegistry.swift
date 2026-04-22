import Foundation

enum CourseRegistry {
    static let all: [Course] = [
        beginner1,
        beginner2,
        beginner3,
        intermediate1,
        intermediate2,
        intermediate3,
        advanced1,
        advanced2,
        advanced3,
    ]

    static func course(id: String) -> Course? {
        all.first { $0.id == id }
    }

    // MARK: - Beginner 1

    private static let beginner1 = Course(
        id: "beginner-1",
        level: .beginner,
        number: 1,
        title: "Keyboard Basics",
        summary: "Meet the piano. Find the keys, learn your fingers, and play middle C.",
        units: [
            Unit(
                id: "b1-u1",
                title: "Your First Keys",
                summary: "Explore the keyboard. High and low, black and white, and where Cs live.",
                lessonIds: [
                    "orient-any-key",
                    "orient-black-keys",
                    "orient-white-black-groups",
                    "orient-find-c",
                    "orient-find-all-cs",
                ]
            ),
            Unit(
                id: "b1-u2",
                title: "Finger Numbers",
                summary: "Thumb is 1, pinky is 5. Train each finger on its own.",
                lessonIds: [
                    "orient-finger-numbers",
                    "rh-thumb-on-c",
                    "rh-pinky-on-g",
                    "rh-finger-isolation",
                    "rh-fingers-all-five",
                ]
            ),
            Unit(
                id: "b1-u3",
                title: "Middle C Zone",
                summary: "Anchor on middle C, then step out to D, E, F, G — five-finger territory.",
                lessonIds: [
                    "middle-c",
                    "middle-c-steady",
                    "rh-c-d-e",
                    "rh-step-drill",
                    "rh-five-notes-up-down",
                    "rh-skip-drill",
                ]
            ),
            Unit(
                id: "b1-u4",
                title: "Meet the Staff",
                summary: "Five lines, four spaces. See middle C and its neighbors on the page.",
                lessonIds: [
                    "staff-intro",
                    "middle-c-from-staff",
                    "reading-c-d-e",
                    "staff-line-space-drill",
                ]
            ),
        ]
    )

    // MARK: - Beginner 2

    private static let beginner2 = Course(
        id: "beginner-2",
        level: .beginner,
        number: 2,
        title: "Reading & First Rhythms",
        summary: "Read the treble staff and feel the beat — wholes, halves, and quarters.",
        units: [
            Unit(
                id: "b2-u1",
                title: "Treble Clef Reading",
                summary: "Lines EGBDF, spaces FACE, notes above the staff, and timed recall.",
                lessonIds: [
                    "treble-lines",
                    "treble-spaces",
                    "treble-mixed",
                    "treble-above-staff",
                    "treble-timed-drill",
                ]
            ),
            Unit(
                id: "b2-u2",
                title: "Long Notes",
                summary: "Whole notes hold for 4 beats. Half notes for 2. Count them out loud.",
                lessonIds: [
                    "whole-rhythm",
                    "rhythm-whole-counting",
                    "rhythm-halves",
                    "rhythm-whole-half-mix",
                ]
            ),
            Unit(
                id: "b2-u3",
                title: "Quarter Notes",
                summary: "The walking beat — one note per beat. Rests mean silence.",
                lessonIds: [
                    "rhythm-quarters",
                    "quarters-with-rests",
                    "rhythm-half-quarter-mix",
                    "rhythm-mixed",
                ]
            ),
            Unit(
                id: "b2-u4",
                title: "First Melodies",
                summary: "Short folk songs using what you know so far.",
                lessonIds: [
                    "hot-cross-buns",
                    "mary-had-a-little-lamb",
                    "melody-drill-stepwise",
                    "row-row-your-boat",
                ]
            ),
        ]
    )

    // MARK: - Beginner 3

    private static let beginner3 = Course(
        id: "beginner-3",
        level: .beginner,
        number: 3,
        title: "Five-Finger Positions",
        summary: "C, G, and F positions — three keys, three sets of five-finger patterns.",
        units: [
            Unit(
                id: "b3-u1",
                title: "C Position",
                summary: "Thumb on C through pinky on G — up, down, skips, and all together.",
                lessonIds: [
                    "c-five-finger-up",
                    "c-five-finger-down",
                    "c-five-finger-full",
                    "c-position-skips",
                ]
            ),
            Unit(
                id: "b3-u2",
                title: "G Position",
                summary: "Shift up: thumb on G, pinky on D. All white keys, plus skips.",
                lessonIds: [
                    "g-five-finger",
                    "g-five-finger-down",
                    "g-five-finger-full",
                    "g-position-skips",
                ]
            ),
            Unit(
                id: "b3-u3",
                title: "F Position",
                summary: "Thumb on F, pinky on C. The fourth key is B♭ — your first black key.",
                lessonIds: [
                    "f-five-finger",
                    "f-five-finger-down",
                    "f-five-finger-full",
                    "f-position-b-flat-drill",
                ]
            ),
            Unit(
                id: "b3-u4",
                title: "Songs in Position",
                summary: "Play real tunes without leaving your five-finger spot.",
                lessonIds: [
                    "position-shift-drill",
                    "c-position-melodic-pattern",
                    "twinkle-twinkle",
                    "london-bridge",
                    "jingle-bells",
                ]
            ),
        ]
    )

    // MARK: - Intermediate 1

    private static let intermediate1 = Course(
        id: "intermediate-1",
        level: .intermediate,
        number: 1,
        title: "Scales & Bass Clef",
        summary: "Bring the left hand in and stretch past five-finger into full scales.",
        units: [
            Unit(
                id: "i1-u1",
                title: "Bass Clef",
                summary: "Read the lower staff: lines GBDFA, spaces ACEG, and ledger notes.",
                lessonIds: [
                    "bass-clef-lines",
                    "bass-clef-spaces",
                    "bass-mixed",
                    "bass-timed-drill",
                    "ledger-lines",
                ]
            ),
            Unit(
                id: "i1-u2",
                title: "Left Hand Foundation",
                summary: "LH on C3. Pinky anchors low, thumb reaches high — whole notes and walking patterns.",
                lessonIds: [
                    "lh-c-position",
                    "lh-whole-notes",
                    "lh-stepwise-drill",
                    "lh-five-note-pattern",
                    "lh-walking",
                ]
            ),
            Unit(
                id: "i1-u3",
                title: "C Major Scale",
                summary: "Past five fingers — the thumb tuck. Up, down, and full-octave.",
                lessonIds: [
                    "c-major-scale",
                    "c-major-scale-descending",
                    "c-major-scale-full",
                    "c-scale-thumb-tuck-drill",
                ]
            ),
            Unit(
                id: "i1-u4",
                title: "G & F Scales",
                summary: "Other keys: G adds F♯, F adds B♭. Compare shapes, plus pattern drills.",
                lessonIds: [
                    "g-major-scale",
                    "f-major-scale",
                    "d-major-scale-intro",
                    "scale-pattern-drill",
                    "scales-review",
                ]
            ),
        ]
    )

    // MARK: - Intermediate 2

    private static let intermediate2 = Course(
        id: "intermediate-2",
        level: .intermediate,
        number: 2,
        title: "Chords & Progressions",
        summary: "Build harmony: triads, inversions, and the chord patterns behind pop and classical music.",
        units: [
            Unit(
                id: "i2-u1",
                title: "Primary Triads",
                summary: "Three chords, one key: I (C), IV (F), V (G) — plus the minor vi (Am).",
                lessonIds: [
                    "c-major-chord",
                    "f-major-chord",
                    "g-major-chord",
                    "a-minor-chord",
                ]
            ),
            Unit(
                id: "i2-u2",
                title: "Inversions",
                summary: "Same notes, different orders. Root → 1st → 2nd inversion, on C and F.",
                lessonIds: [
                    "c-first-inversion",
                    "c-second-inversion",
                    "c-inversion-cycle",
                    "f-inversions",
                ]
            ),
            Unit(
                id: "i2-u3",
                title: "Chord Progressions",
                summary: "Classic patterns: I-IV-V-I, I-V-IV-I, I-vi-IV-V, and the I-vi-ii-V cycle.",
                lessonIds: [
                    "chord-progression-c-f-g",
                    "progression-c-g-f-c",
                    "progression-c-am-f-g",
                    "progression-g-em-c-d",
                    "broken-chord-c",
                ]
            ),
            Unit(
                id: "i2-u4",
                title: "Eighths & Accompaniment",
                summary: "Faster notes and classical patterns — Alberti bass, waltz bass, mixed eighths.",
                lessonIds: [
                    "eighth-rhythm",
                    "eighth-patterns-mixed",
                    "alberti-bass-c",
                    "waltz-bass-c",
                ]
            ),
        ]
    )

    // MARK: - Intermediate 3

    private static let intermediate3 = Course(
        id: "intermediate-3",
        level: .intermediate,
        number: 3,
        title: "Repertoire & Hands Together",
        summary: "Bring it all together — 3/4 time, complete songs, and your first two-hand pieces.",
        units: [
            Unit(
                id: "i3-u1",
                title: "3/4 Time",
                summary: "Three beats per measure. Lilting hymns and waltzes.",
                lessonIds: [
                    "waltz-three-four",
                    "three-four-rhythm-drill",
                    "silent-night",
                    "amazing-grace",
                ]
            ),
            Unit(
                id: "i3-u2",
                title: "More Songs",
                summary: "Expand your repertoire with beloved melodies.",
                lessonIds: [
                    "ode-to-joy",
                    "happy-birthday",
                    "old-macdonald",
                ]
            ),
            Unit(
                id: "i3-u3",
                title: "Hands Together: Basics",
                summary: "Both hands, one pulse. Whole notes, blocked patterns, mirrored and parallel scales.",
                lessonIds: [
                    "hands-together-whole",
                    "hands-together-c-position",
                    "hands-together-scale-contrary",
                    "hands-together-scale-parallel",
                    "hands-together-alberti",
                ]
            ),
            Unit(
                id: "i3-u4",
                title: "Capstone",
                summary: "Two-hand versions of songs you know, plus a walking-bass and a chord-progression arrangement.",
                lessonIds: [
                    "hands-together-walking-bass",
                    "hands-together-twinkle",
                    "hands-together-ode-to-joy",
                    "hands-together-chord-progression",
                ]
            ),
        ]
    )

    // MARK: - Advanced 1

    private static let advanced1 = Course(
        id: "advanced-1",
        level: .advanced,
        number: 1,
        title: "Keys & Extended Scales",
        summary: "Two-octave scales, new major and minor keys, and full-handed arpeggios.",
        units: [
            Unit(
                id: "a1-u1",
                title: "Two-Octave Major Scales",
                summary: "C, G, F across two octaves. Fingering drills and varied rhythms.",
                lessonIds: [
                    "c-scale-two-oct",
                    "g-scale-two-oct",
                    "f-scale-two-oct",
                    "scale-fingering-drill",
                    "scale-varied-rhythm",
                ]
            ),
            Unit(
                id: "a1-u2",
                title: "More Major Keys",
                summary: "Sharp keys (D, A, E) and flat keys (B♭, E♭) — five new sounds.",
                lessonIds: [
                    "d-major-scale",
                    "a-major-scale",
                    "e-major-scale",
                    "b-flat-major-scale",
                    "e-flat-major-scale",
                ]
            ),
            Unit(
                id: "a1-u3",
                title: "Minor Scales",
                summary: "Natural and harmonic minor — A minor, D minor, E minor.",
                lessonIds: [
                    "a-minor-natural",
                    "a-minor-harmonic",
                    "d-minor-natural",
                    "e-minor-natural",
                ]
            ),
            Unit(
                id: "a1-u4",
                title: "Arpeggios",
                summary: "Rolling triads across one and two octaves — C, F, G.",
                lessonIds: [
                    "c-arpeggio-one-oct",
                    "c-arpeggio-two-oct",
                    "f-arpeggio",
                    "g-arpeggio",
                ]
            ),
        ]
    )

    // MARK: - Advanced 2

    private static let advanced2 = Course(
        id: "advanced-2",
        level: .advanced,
        number: 2,
        title: "Harmony & Seventh Chords",
        summary: "Seventh chords, jazz & blues progressions, voice leading, and left-hand patterns.",
        units: [
            Unit(
                id: "a2-u1",
                title: "Seventh Chords",
                summary: "Dominant 7, major 7, minor 7, and diminished 7 — the four flavors.",
                lessonIds: [
                    "g7-dominant",
                    "c-maj-7",
                    "a-m-7",
                    "d-m-7",
                    "dim-7-intro",
                ]
            ),
            Unit(
                id: "a2-u2",
                title: "Jazz & Blues Progressions",
                summary: "ii-V-I, 12-bar blues, circle of fifths, pop I-vi-IV-V, secondary dominants.",
                lessonIds: [
                    "ii-v-i-c",
                    "blues-12-bar",
                    "circle-of-fifths-drill",
                    "pop-vi-iv-v",
                    "secondary-dominants",
                ]
            ),
            Unit(
                id: "a2-u3",
                title: "Voice Leading",
                summary: "Move between chords with minimal motion — common tones, stepwise connections.",
                lessonIds: [
                    "voice-lead-i-iv",
                    "voice-lead-i-v",
                    "voice-lead-ii-v-i",
                    "smooth-connections-drill",
                ]
            ),
            Unit(
                id: "a2-u4",
                title: "Left-Hand Patterns",
                summary: "Broken chords, bass octaves, stride, and the blues shuffle.",
                lessonIds: [
                    "lh-broken-chords",
                    "lh-bass-octaves",
                    "lh-stride-simple",
                    "lh-shuffle-pattern",
                ]
            ),
        ]
    )

    // MARK: - Advanced 3

    private static let advanced3 = Course(
        id: "advanced-3",
        level: .advanced,
        number: 3,
        title: "Hands Together & Expression",
        summary: "Coordinated two-hand scales, chord voicings, pedal & dynamics, and capstone etudes.",
        units: [
            Unit(
                id: "a3-u1",
                title: "Hands-Together Scales",
                summary: "Parallel and contrary motion — C, G, two-octave, and rhythmic variety.",
                lessonIds: [
                    "ht-c-scale-parallel",
                    "ht-g-scale-parallel",
                    "ht-scale-contrary-one-oct",
                    "ht-c-scale-two-oct",
                    "ht-scale-varied-rhythm",
                ]
            ),
            Unit(
                id: "a3-u2",
                title: "Chord Voicings",
                summary: "Open (wide) voicings, chord-melody, and RH chords over an active LH bass.",
                lessonIds: [
                    "wide-voicing-c",
                    "wide-voicing-f",
                    "chord-melody-intro",
                    "rh-chords-lh-bass",
                ]
            ),
            Unit(
                id: "a3-u3",
                title: "Pedal & Dynamics",
                summary: "Sustain pedal, clean chord changes, forte/piano contrast, crescendo & decrescendo.",
                lessonIds: [
                    "sustain-pedal-intro",
                    "pedal-clean-changes",
                    "dynamics-forte-piano",
                    "crescendo-decrescendo",
                ]
            ),
            Unit(
                id: "a3-u4",
                title: "Capstone Etudes",
                summary: "Everything together — melody with chords, full Alberti, a waltz, contrary motion, and the final etude.",
                lessonIds: [
                    "etude-melody-with-chords",
                    "etude-alberti-full",
                    "etude-waltz-accompaniment",
                    "etude-contrary-motion",
                    "etude-hands-together-full",
                ]
            ),
        ]
    )
}
