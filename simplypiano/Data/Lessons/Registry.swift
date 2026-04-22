import Foundation

enum LessonRegistry {
    static let all: [Lesson] = [
        // === Beginner 1 — Keyboard Basics ===
        AnyKeyLesson.lesson,
        BlackKeysLesson.lesson,
        OrientWhiteBlackGroupsLesson.lesson,
        FindCLesson.lesson,
        AllCsLesson.lesson,
        FingerNumbersLesson.lesson,
        RHThumbOnCLesson.lesson,
        RHPinkyOnGLesson.lesson,
        RHFingerIsolationLesson.lesson,
        RHFingersAllFiveLesson.lesson,
        MiddleCLesson.lesson,
        MiddleCSteadyLesson.lesson,
        RHCDELesson.lesson,
        RHStepDrillLesson.lesson,
        RHFiveNotesUpDownLesson.lesson,
        RHSkipDrillLesson.lesson,
        StaffIntroLesson.lesson,
        MiddleCFromStaffLesson.lesson,
        ReadingCDELesson.lesson,
        StaffLineSpaceDrillLesson.lesson,

        // === Beginner 2 — Reading & First Rhythms ===
        TrebleLinesLesson.lesson,
        TrebleSpacesLesson.lesson,
        TrebleMixedLesson.lesson,
        TrebleAboveStaffLesson.lesson,
        TrebleTimedDrillLesson.lesson,
        WholeRhythmLesson.lesson,
        RhythmWholeCountingLesson.lesson,
        HalfRhythmLesson.lesson,
        RhythmWholeHalfMixLesson.lesson,
        QuarterRhythmLesson.lesson,
        QuartersWithRestsLesson.lesson,
        RhythmHalfQuarterMixLesson.lesson,
        MixedRhythmLesson.lesson,
        HotCrossBunsLesson.lesson,
        MaryLambLesson.lesson,
        MelodyDrillStepwiseLesson.lesson,
        RowBoatLesson.lesson,

        // === Beginner 3 — Five-Finger Positions ===
        CFiveFingerUpLesson.lesson,
        CFiveFingerDownLesson.lesson,
        CFiveFingerFullLesson.lesson,
        CPositionSkipsLesson.lesson,
        GFiveFingerLesson.lesson,
        GFiveFingerDownLesson.lesson,
        GFiveFingerFullLesson.lesson,
        GPositionSkipsLesson.lesson,
        FFiveFingerLesson.lesson,
        FFiveFingerDownLesson.lesson,
        FFiveFingerFullLesson.lesson,
        FPositionBFlatDrillLesson.lesson,
        PositionShiftDrillLesson.lesson,
        CPositionMelodicPatternLesson.lesson,
        TwinkleLesson.lesson,
        LondonBridgeLesson.lesson,
        JingleBellsLesson.lesson,

        // === Intermediate 1 — Scales & Bass Clef ===
        BassLinesLesson.lesson,
        BassSpacesLesson.lesson,
        BassMixedLesson.lesson,
        BassTimedDrillLesson.lesson,
        LedgerLinesLesson.lesson,
        LHCPositionLesson.lesson,
        LHWholeNotesLesson.lesson,
        LHStepwiseDrillLesson.lesson,
        LHFiveNotePatternLesson.lesson,
        LHWalkingLesson.lesson,
        CMajorScaleLesson.lesson,
        CMajorScaleDownLesson.lesson,
        CMajorScaleFullLesson.lesson,
        CScaleThumbTuckDrillLesson.lesson,
        GMajorScaleLesson.lesson,
        FMajorScaleLesson.lesson,
        DMajorScaleIntroLesson.lesson,
        ScalePatternDrillLesson.lesson,
        ScalesReviewLesson.lesson,

        // === Intermediate 2 — Chords & Progressions ===
        CMajorChordLesson.lesson,
        FMajorChordLesson.lesson,
        GMajorChordLesson.lesson,
        AMinorChordLesson.lesson,
        CFirstInversionLesson.lesson,
        CSecondInversionLesson.lesson,
        CInversionCycleLesson.lesson,
        FInversionsLesson.lesson,
        ChordProgressionLesson.lesson,
        ProgressionCGFCLesson.lesson,
        ProgressionCAmFGLesson.lesson,
        ProgressionGEmCDLesson.lesson,
        BrokenChordLesson.lesson,
        EighthRhythmLesson.lesson,
        EighthPatternsMixedLesson.lesson,
        AlbertiBassCLesson.lesson,
        WaltzBassCLesson.lesson,

        // === Intermediate 3 — Repertoire & Hands Together ===
        WaltzRhythmLesson.lesson,
        ThreeFourRhythmDrillLesson.lesson,
        SilentNightLesson.lesson,
        AmazingGraceLesson.lesson,
        OdeToJoyLesson.lesson,
        HappyBirthdayLesson.lesson,
        OldMacDonaldLesson.lesson,
        HandsTogetherWholeLesson.lesson,
        HandsTogetherCPositionLesson.lesson,
        HandsTogetherScaleContraryLesson.lesson,
        HandsTogetherScaleParallelLesson.lesson,
        HandsTogetherAlbertiLesson.lesson,
        HandsTogetherWalkingBassLesson.lesson,
        HandsTogetherTwinkleLesson.lesson,
        HandsTogetherOdeToJoyLesson.lesson,
        HandsTogetherChordProgressionLesson.lesson,

        // === Advanced 1 — Keys & Extended Scales ===
        CScaleTwoOctLesson.lesson,
        GScaleTwoOctLesson.lesson,
        FScaleTwoOctLesson.lesson,
        ScaleFingeringDrillLesson.lesson,
        ScaleVariedRhythmLesson.lesson,
        DMajorScaleLesson.lesson,
        AMajorScaleLesson.lesson,
        EMajorScaleLesson.lesson,
        BFlatMajorScaleLesson.lesson,
        EFlatMajorScaleLesson.lesson,
        AMinorNaturalLesson.lesson,
        AMinorHarmonicLesson.lesson,
        DMinorNaturalLesson.lesson,
        EMinorNaturalLesson.lesson,
        CArpeggioOneOctLesson.lesson,
        CArpeggioTwoOctLesson.lesson,
        FArpeggioLesson.lesson,
        GArpeggioLesson.lesson,

        // === Advanced 2 — Harmony & Seventh Chords ===
        G7DominantLesson.lesson,
        CMaj7Lesson.lesson,
        AM7Lesson.lesson,
        DM7Lesson.lesson,
        Dim7IntroLesson.lesson,
        IIVICLesson.lesson,
        Blues12BarLesson.lesson,
        CircleOfFifthsDrillLesson.lesson,
        PopViIVIVLesson.lesson,
        SecondaryDominantsLesson.lesson,
        VoiceLeadIIVLesson.lesson,
        VoiceLeadIVLesson.lesson,
        VoiceLeadIIVILesson.lesson,
        SmoothConnectionsDrillLesson.lesson,
        LHBrokenChordsLesson.lesson,
        LHBassOctavesLesson.lesson,
        LHStrideSimpleLesson.lesson,
        LHShufflePatternLesson.lesson,

        // === Advanced 3 — Hands Together & Expression ===
        HTCScaleParallelLesson.lesson,
        HTGScaleParallelLesson.lesson,
        HTScaleContraryOneOctLesson.lesson,
        HTCScaleTwoOctLesson.lesson,
        HTScaleVariedRhythmLesson.lesson,
        WideVoicingCLesson.lesson,
        WideVoicingFLesson.lesson,
        ChordMelodyIntroLesson.lesson,
        RHChordsLHBassLesson.lesson,
        SustainPedalIntroLesson.lesson,
        PedalCleanChangesLesson.lesson,
        DynamicsFortePianoLesson.lesson,
        CrescendoDecrescendoLesson.lesson,
        EtudeMelodyWithChordsLesson.lesson,
        EtudeAlbertiFullLesson.lesson,
        EtudeWaltzAccompanimentLesson.lesson,
        EtudeContraryMotionLesson.lesson,
        EtudeHandsTogetherFullLesson.lesson,
    ]

    static func lesson(id: String) -> Lesson? {
        all.first { $0.id == id }
    }

    static func lessons(in category: LessonCategory) -> [Lesson] {
        all.filter { $0.category == category }
    }

    static func course(containing lessonId: String) -> Course? {
        CourseRegistry.all.first { $0.lessonIds.contains(lessonId) }
    }

    static func unit(containing lessonId: String) -> (course: Course, unit: Unit)? {
        for course in CourseRegistry.all {
            if let unit = course.units.first(where: { $0.lessonIds.contains(lessonId) }) {
                return (course, unit)
            }
        }
        return nil
    }
}
