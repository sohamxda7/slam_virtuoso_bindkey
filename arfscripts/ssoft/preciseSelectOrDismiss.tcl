# This procedure performs the actual selection or deselection.
proc preciseSelectOrDismiss { win x y } {
    set objPair [ediFindObjectByPt -win $win "$x $y"]
    set objectToSelect ""
    if { $objPair != "" } {
        set primaryId [lindex $objPair 0]
        set cellId [lindex [lindex [ediGetWinInfo -win $win -editCellId] 0] 1]
        set bbox [edbFetchObjBBox $cellId $primaryId]
        if { [edbPointInBox "$x $y" $bbox] } {
            set objectToSelect $primaryId
        }
    }
    if { $objectToSelect == "" } {
        ediClearChoiceBin -win $win -allBins
    } else {
        ediClearChoiceBin -win $win
        ediAddObjectToChoiceBin $objectToSelect -win $win
    }
    ediPanByFactor -win $win 0 0
}

# This procedure decides whether to select an object OR pass the click to an active command.
proc smartSelect { win x y } {
    # Check if any command is currently active on the stack.
    set activeCmds [ediGetWinCmdInfo -win $win]

    if { [llength $activeCmds] == 0 } {
        # If NO command is active, perform our precise selection logic.
        preciseSelectOrDismiss $win $x $y
    } else {
        # If a command IS active (like draw rectangle), pass the coordinate to it.
        # This preserves the original functionality for all other commands.
        ediEnterCoord -win $win "$x $y"
	ediPanByFactor -win $win 0 0
    }
}