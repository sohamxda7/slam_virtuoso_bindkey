proc dismissSelectByClick { win x y } {
    # Find the object at the clicked location.
    set objPair [ediFindObjectByPt -win $win "$x $y"]

    # If an object was found...
    if { $objPair != "" } {
        # ...extract the primary object ID...
        set primaryId [lindex $objPair 0]
        # ...and dismiss it from whatever bin it's in.
        ediDismissObjFromBins $primaryId -win $win
    }

    # Redraw the window to show the updated selection.
    ediPanByFactor -win $win 0 0
}