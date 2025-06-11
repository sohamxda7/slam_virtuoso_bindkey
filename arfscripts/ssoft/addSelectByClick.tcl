proc addSelectByClick { win x y } {
    # Find the object at the clicked location. This returns a two-element list (a pair).
    set objPair [ediFindObjectByPt -win $win "$x $y"]

    # Check if an object was found.
    if { $objPair != "" } {
        # Extract the first element from the pair, which is the primary object ID.
        set primaryId [lindex $objPair 0]

        # Add the primary object ID to the current choice bin.
        ediAddObjectToChoiceBin $primaryId -win $win
    }

    # Redraw the window to show the updated selection.
    ediPanByFactor -win $win 0 0
}