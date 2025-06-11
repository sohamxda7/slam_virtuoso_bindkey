proc abortAndDeselectAll { win } {
    # First, abort any active command in the window.
    ediAbortEnter -win $win

    # Second, clear all objects from all 16 choice bins to deselect everything.
    ediClearChoiceBin -win $win -allBins
}