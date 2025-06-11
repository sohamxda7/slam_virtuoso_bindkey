# key & mouse defines
# the special @x @y symbols are replaced with the XY location
# the special symbol @window is replaced with the window name
# the special symbol @screen is replaced with the screen name

#ediDefineMouseButton button1 "ediEnterCoord -win @window {@x @y}"
ediDefineMouseButton button1 "smartSelect @window @x @y"
#ediDefineMouseButton "{Shift}button1" "ediEnterSnapCoord -win @window {@x @y}"
ediDefineMouseButton "{Shift}button1"  "addSelectByClick @window @x @y"
#ediDefineMouseButton "{Control}button1" "ediTrackSnapCoord @window @x @y"
ediDefineMouseButton "{Control}button1" "dismissSelectByClick @window @x @y"
ediDefineMouseButton button3 "ediCompleteEnter -win @window"
# DMU is the Down Move Up sequence.
ediDefineMouseButton -DMU button3 "ediZoomIn -win @window"
ediDefineMouseButton -DMU button2 "ediChooseObjectsByBox -win @window"
# menu is for the fixed menu button def's if you are using fixed menu's
ediDefineMouseButton -menu button1 "ediFixedMenuDo @window @x @y"
ediDefineMouseButton -menu button3 "ediFit -win @window"

ediDefineKey BackSpace "ediUndoCoord -win @window"
ediDefineKey Escape "ediAbortEnter -win @window"
ediDefineKey Return "ediCompleteEnter -win @window"

# create stuff
ediDefineKey r "layCreateRectangle -win @window "
ediDefineKey p "layCreatePath -win @window "
ediDefineKey t "layCreateText -win @window "
ediDefineKey i "layCreateInst -win @window "
ediDefineKey h "layCreateWire -win @window "
ediDefineKey o "layCreateVia -win @window "
ediDefineKey "{Shift}j" "layCreateViaByBox -win @window "
ediDefineKey "{Shift}i" "layCreateInstArray -win @window "
ediDefineKey "{Shift}p" "layCreatePolygon -win @window "
ediDefineKey "{Control}p" "layCreatePin -win @window "
ediDefineKey "{Control}i" "layCreateTLG -win @window "
ediDefineKey "{Shift}b" "layCrBusText @window "

# edit stuff
ediDefineKey Delete "layDelete -win @window"
ediDefineKey u "edbUndo ; ediPanByFactor -win @window 0 0"
ediDefineKey "{Shift}u" "edbRedo ; ediPanByFactor -win @window 0 0"
ediDefineKey m "layMove -win @window"
ediDefineKey c "layCopy -win @window"
ediDefineKey "{Shift}m" "layMovePoint -win @window"
ediDefineKey "{Control}r" "layReShape -win @window"
ediDefineKey "{Shift}t" "layTranMove -win @window"
ediDefineKey s "layStretch -win @window"
ediDefineKey "{Shift}s" "layLineStretch -win @window"
ediDefineKey "{meta}s" "layWinStretch -win @window"
ediDefineKey "{Control}s" "layCutStretch -win @window"
ediDefineKey "{Shift}c" "laySplit -win @window"
ediDefineKey "{Control}j" "layJoinPaths -win @window"
ediDefineKey q "layVary -win @window"
#~ ediDefineKey l "layAlign -win @window"
ediDefineKey "{Shift}l" "layStack -win @window"
ediDefineKey "{Control}l" "layStep -win @window"
ediDefineKey "g" "layCreatePasteBuffer -win @window"
ediDefineKey "{Meta}g" "layCreatePasteBufferByBox -win @window"
ediDefineKey "{Shift}g" "layPaste -win @window"
ediDefineKey "{Control}g" "layMakeCell -win @window"
ediDefineKey "{Alt}g" "LayExpandInstByBin @window"
#~ ediDefineKey n "nelGlue -bin default @window"
ediDefineKey "{Shift}n" "layDecomposeTLG -win @window"
# Default for nelGlue are the id's in the window buffer. Glue resets this too.
#~ ediDefineKey "{Control}n" "nelGlue @window"

# boolean stuff
#~ ediDefineKey k "layAppendRect -win @window"
#~ ediDefineKey "{Shift}k" "laySubtractRect -win @window"

#strategy stuff
ediDefineKey x "nelBindKeyExtract @window"
#ediDefineKey q "sttRatInstance -win @window"
#ediDefineKey "{Shift}q" "sttClearRats -win @window"

#misc stuff
ediDefineKey e "layDescend -mode write -disposition hold -win @window"
ediDefineKey "{Control}e" "layDescend -mode read -disposition hold -win @window"
#ediDefineKey i "layMenuInquire @window"
# save by default use -disposition reject to abort
ediDefineKey "{Shift}e" "layAscendMenu @window"
ediDefineKey "{Control}q" "CloseWindowMenu @window"
ediDefineKey "{Control}w" "WinMenuDo edbSaveCell @window Save"
ediDefineKey "{Shift}x" "layDTrace -win @window"

#draw stuff
ediDefineKey f "ediFit 1.1 -win @window"
ediDefineKey "{alt}f" "ediFitBin @window"
ediDefineKey z "ediZoomIn -win @window"
ediDefineKey "{Shift}z" "ediScaleWindow 2 -win @window"
ediDefineKey "{Control}z" "ediScaleWindow 0.5 -win @window"
ediDefineMouseButton button4 "ediScaleWindow 0.5 -win @window"
ediDefineMouseButton button5 "ediScaleWindow 2 -win @window"
ediDefineKey w "ediRestoreWinViewBox -prev @window"
ediDefineKey "{Shift}w" "ediRestoreWinViewBox -next @window"

ediDefineKey Left "ediPanByFactor -win @window -0.5 0"
ediDefineKey "{Control}Left" "ediPanByFactor -win @window -0.8 0"
ediDefineKey "{Shift}Left" "ediPanByFactor -win @window -0.2 0"
ediDefineKey Right "ediPanByFactor -win @window 0.5 0"
ediDefineKey "{Control}Right" "ediPanByFactor -win @window 0.8 0"
ediDefineKey "{Shift}Right" "ediPanByFactor -win @window 0.2 0"
ediDefineKey Down "ediPanByFactor -win @window 0 -0.5"
ediDefineKey "{Control}Down" "ediPanByFactor -win @window 0 -0.8"
ediDefineKey "{Shift}Down" "ediPanByFactor -win @window 0 -0.2"
ediDefineKey Up "ediPanByFactor -win @window 0 0.5"
ediDefineKey "{Control}Up" "ediPanByFactor -win @window 0 0.8"
ediDefineKey "{Shift}Up" "ediPanByFactor -win @window 0 0.2"
# F31 is the keypad 5 key on a sparc keyboard
ediDefineKey "F31" "ediPanToPoint -win @window"
# KP_5 or KP_Begin for a PC.
ediDefineKey "KP_5" "ediPanToPoint -win @window"
ediDefineKey "KP_Begin" "ediPanToPoint -win @window"
ediDefineKey space "ediPanByFactor 0 0 -win @window"
ediDefineKey "{Shift}f"  "ediSetWinDisplayStyle -win @window -displayViewDepth \[expr 1 + \[lindex \[lindex \[ediGetWinDisplayStyle -win @window -displayViewDepth\] 0\] 1\]\] ; ediPanByFactor 0 0 -win @window"
ediDefineKey "{Control}f" "ediSetWinDisplayStyle -win @window -displayViewDepth \[expr -1 + \[lindex \[lindex \[ediGetWinDisplayStyle -win @window -displayViewDepth\] 0\] 1\]\] ; ediPanByFactor 0 0 -win @window"
ediDefineKey "{Shift}space" "if { \[lindex \[lindex \[ediGetWinDisplayStyle -win @window -contextDataOnly\] 0\] 1\] == \"off\" } {ediSetWinDisplayStyle -win @window -contextDataOnly on} else {ediSetWinDisplayStyle -win @window -contextDataOnly off}"
#ediDefineKey "{Control}i" "layMenuContext @window"
ediDefineKey k "ediRuler -win @window"
ediDefineKey "{Shift}k" "ediRemoveRulers -win @window"
ediDefineKey period "ediSetWinRefPt -win @window @x @y"
#ediDefineKey "o" "WindowConfigMenu @window"
ediDefineKey "{Shift}o" "WindowLayerByNameMenu @window"
ediDefineKey "{Control}o" "WindowLayerMenu @window"



#~ ediDefineKey "{Control}f" "ediFormDisplayControl -win @window toggle"

# Note the interrupt definitions MUST match between all windows.
# Interrupt key checking is done on all types of windows
# and cannot be defined differently between window types
ediDefineKey "{Control}x" SOFT_INTERRUPT
ediDefineKey "{Control}c" MEDIUM_INTERRUPT
ediDefineKey "{Control}v" HARD_INTERRUPT
ediDefineKey F11 HARD_INTERRUPT

# choice stuff
ediDefineKey a "ediChooseObjectByPt -win @window "
ediDefineKey "{Control}a" "ediChooseAllObjects -win @window "
ediDefineKey d "ediDismissObjectByPt -win @window "
ediDefineKey "{Alt}a" "ediChooseObjectsByLine -win @window "
ediDefineKey "{meta}a" "ediChooseObjectsByBox -checkIntersect -win @window"
ediDefineKey "{Shift}a" "ediChooseObjectsByBox -nocheckIntersect -win @window "
ediDefineKey "{Alt}d" "ediDismissObjectsByLine -win @window "
ediDefineKey "{meta}d" "ediDismissObjectsByBox -checkIntersect -win @window"
ediDefineKey "{Shift}d" "ediDismissObjectsByBox -nocheckIntersect -win @window "
ediDefineKey Tab "ediAmendChoice -win @window "
ediDefineKey "{Control}d" "ediClearChoiceBin -curBin -win @window"
ediDefineKey "{Shift}Tab" "ediNextChoiceBin  @window"
ediDefineKey "{Control}Tab" "ediPrevChoiceBin  @window"

ediDefineKey "Help" "ediPHelpCmd -win @window"
ediDefineKey "{Control}h" "ediPHelpCmd -win @window"
ediDefineKey -DLD "Help" "helpPDF ediCreateDLD"
ediDefineKey -DLD "{Control}h" "helpPDF ediCreateDLD"
ediDefineMouseButton -DLD "button2" "DLDPopupCreateDLD @screen"
ediDefineMouseButton -DLD "button3" "helpPDF ediCreateDLD"
ediDefineMouseButton -DLD "button4" "ediDLDScroll -screen @screen -direction up"
ediDefineMouseButton -DLD "button5" "ediDLDScroll -screen @screen -direction down"
ediDefineKey -DLD  s "DLDUtilSetLayer @layer"
#ediDefineKey -DLD  e "DLDChgLayerMenu @screen @window @libId @layer"
ediDefineKey -DLD  e "ediInitiateLPanel @window @layer"
ediDefineKey -DLD  c "ediCloseDLD -screen @screen"
ediDefineKey -DLD "{Shift}c" "ediCloseDLD -screen @screen"
#~ ediDefineKey -DLD "{Control}f" "DLDSetFillSolid @screen @window @libId @layer"
#~ ediDefineKey -DLD "{Shift}f" "DLDSetFillOff @screen @window @libId @layer"
ediDefineKey -DLD "f" "DLDSetFillOn @screen @window @libId @layer"
ediDefineKey -DLD "{Control}r" "DLDRestoreFill @screen @window @libId @layer"
ediDefineKey -DLD "r" "DLDReloadCfg @screen @window @libId @layer"
ediDefineKey -DLD "{Shift}v" "DLDSetAllVis @window 1"
ediDefineKey -DLD "u" "ediDLDRefresh -screen @screen"
ediDefineKey -DLD "v" "DLDSetAllVis @window 0"
ediDefineKey -DLD "o" "DLDSetOptions @screen @window @libId"


# Schematic key defs
# Basic stuff
ediDefineMouseButton -schematic button1 "ediEnterCoord -win @window {@x @y}"
ediDefineMouseButton -schematic "{Shift}button1" "ediEnterSnapCoord -win @window {@x @y}"
ediDefineMouseButton -schematic button3 "ediCompleteEnter -win @window"
# DMU is the Down Move Up sequence.
ediDefineMouseButton -schematic -DMU button3 "ediZoomIn -win @window"
ediDefineMouseButton -schematic -DMU button2 "ediChooseObjectsByBox -win @window"
ediDefineMouseButton -schematic button2 "ediSymPlacePop @window"

ediDefineKey -schematic BackSpace "ediUndoCoord -win @window"
ediDefineKey -schematic Escape "ediAbortEnter -win @window"
ediDefineKey -schematic Return "ediCompleteEnter -win @window"

# create stuff
ediDefineKey -schematic r "schCreateRectangle -win @window "
ediDefineKey -schematic p "schCreatePath -win @window "
ediDefineKey -schematic j "schCreateWire -win @window "
ediDefineKey -schematic t "schCreateText -win @window "
ediDefineKey -schematic i "schCreateInst -win @window "
ediDefineKey -schematic "{Shift}p" "schCreatePolygon -win @window "
ediDefineKey -schematic "{Control}p" "schCreatePin -win @window "


#misc stuff
ediDefineKey -schematic "{Shift}x" "schShowMeNetByPt -win @window"


# edit
ediDefineKey -schematic Delete "schDelete -win @window"
ediDefineKey -schematic u "edbUndo ; ediPanByFactor -win @window 0 0"
ediDefineKey -schematic "{Shift}u" "edbRedo ; ediPanByFactor -win @window 0 0"
ediDefineKey -schematic m "schMove -win @window"
ediDefineKey -schematic c "schCopy -win @window"
ediDefineKey -schematic "{Control}m" "schAdjustText -win @window"
ediDefineKey -schematic l "schUpdateText -win @window"
ediDefineKey -schematic "{Shift}t" "schTranMove -win @window"
ediDefineKey -schematic "{Control}r" "schReShape -win @window"
ediDefineKey -schematic s "schStretch -win @window"
ediDefineKey -schematic "{Control}s" "schSplit -win @window"
ediDefineKey -schematic "{Shift}k" "schChop -win @window"
ediDefineKey -schematic "k" "schChop -splitAllIntersects -win @window"
ediDefineKey -schematic "{Alt}s" "schWinStretch -win @window"
ediDefineKey -schematic "{Shift}m" "schMovePoint -win @window"
ediDefineKey -schematic q "schVary -win @window"
# ^Q is the old very general property editor. Too hard to use though
# Superceded by param edit and occasionally the property editor (Q)
ediDefineKey -schematic "{control}q" "schMenuModifyObjProp @window"
ediDefineKey -schematic "{shift}q" "schMenuModifyObjProperty @window"
#ediDefineKey -schematic q "schMenuModifyObjParam @window"

ediDefineKey -schematic "g" "schCreatePasteBuffer -win @window"
ediDefineKey -schematic "{Shift}g" "schPaste -win @window"

#misc stuff
ediDefineKey -schematic e "schPush -disposition hold -win @window"
#ediDefineKey -schematic "{Control}i" "schMenuContext @window"
ediDefineKey -schematic "{Shift}e" "schPopMenu @window"
#ediDefineKey -schematic i "schMenuInquire @window"
# save by default use -disposition reject to abort
ediDefineKey -schematic "{Control}q" "CloseWindowMenu @window"
ediDefineKey -schematic "{Control}w" "WinMenuDo edbSaveCell @window Save"
# extract schematic with default options
ediDefineKey -schematic x "schBindKeyDistill @window"

#draw stuff
ediDefineKey -schematic f "ediFit 1.1 -win @window"
ediDefineKey -schematic "{alt}f" "ediFitBin @window"
ediDefineKey -schematic z "ediZoomIn -win @window"
ediDefineKey -schematic "{Shift}z" "ediScaleWindow 2 -win @window"
ediDefineKey -schematic "{Control}z" "ediScaleWindow 0.5 -win @window"
ediDefineMouseButton -schematic button4 "ediScaleWindow 2 -win @window"
ediDefineMouseButton -schematic button5 "ediScaleWindow 0.5 -win @window"
ediDefineKey -schematic w "ediRestoreWinViewBox -prev @window"
ediDefineKey -schematic "{Shift}w" "ediRestoreWinViewBox -next @window"

ediDefineKey -schematic Left "ediPanByFactor -win @window -0.5 0"
ediDefineKey -schematic Right "ediPanByFactor -win @window 0.5 0"
ediDefineKey -schematic Down "ediPanByFactor -win @window 0 -0.5"
ediDefineKey -schematic Up "ediPanByFactor -win @window 0 0.5"
# F31 is the keypad 5 key on a sparc keyboard
ediDefineKey -schematic "F31" "ediPanToPoint -win @window"
# KP_5 or KP_Begin for a PC.
ediDefineKey -schematic "KP_5" "ediPanToPoint -win @window"
ediDefineKey -schematic "KP_Begin" "ediPanToPoint -win @window"
ediDefineKey -schematic space "ediPanByFactor 0 0 -win @window"
ediDefineKey -schematic "{Shift}i" "ediRuler -win @window"
ediDefineKey -schematic "{Shift}r" "ediRemoveRulers -win @window"
ediDefineKey -schematic period "ediSetWinRefPt -win @window @x @y"
ediDefineKey -schematic "o" "SchWindowConfigMenu @window"
ediDefineKey -schematic "{Shift}o" "WindowLayerByNameMenu @window"

# choice stuff
ediDefineKey -schematic a "ediChooseObjectByPt -win @window "
ediDefineKey -schematic "{Control}a" "ediChooseAllObjects -win @window "
ediDefineKey -schematic d "ediDismissObjectByPt -win @window "
ediDefineKey -schematic "{Alt}a" "ediChooseObjectsByLine -win @window "
ediDefineKey -schematic "{meta}a" "ediChooseObjectsByBox -checkIntersect -win @window"
ediDefineKey -schematic "{Shift}a" "ediChooseObjectsByBox -nocheckIntersect -win @window "
ediDefineKey -schematic "{Alt}d" "ediDismissObjectsByLine -win @window "
ediDefineKey -schematic "{meta}d" "ediDismissObjectsByBox -checkIntersect -win @window"
ediDefineKey -schematic "{Shift}d" "ediDismissObjectsByBox -nocheckIntersect -win @window "
ediDefineKey -schematic Tab "ediAmendChoice -win @window "
ediDefineKey -schematic "{Control}d" "ediClearChoiceBin -curBin -win @window"
ediDefineKey -schematic "{Shift}Tab" "ediNextChoiceBin  @window"
ediDefineKey -schematic "{Control}Tab" "ediPrevChoiceBin  @window"

ediDefineKey -schematic "Help" "ediPHelpCmd -win @window"
ediDefineKey -schematic "{Control}h" "ediPHelpCmd -win @window"

ediDefineKey -schematic F3 "ediFormDisplayControl -win @window toggle"
#~ ediDefineKey -schematic "{Control}f" "ediFormDisplayControl -win @window toggle"

# Note the interrupt definitions MUST match between all windows.
# Interrupt key checking is done on all types of windows
# and cannot be defined differently between window types
ediDefineKey -schematic "{Control}x" SOFT_INTERRUPT
ediDefineKey -schematic "{Control}c" MEDIUM_INTERRUPT
ediDefineKey -schematic "{Control}v" HARD_INTERRUPT
ediDefineKey -schematic F11 HARD_INTERRUPT

# Secours stuff; Define the same for "dual" commands"
ediDefineKey -schematic F25 "nelXprobeNet -win @window"
ediDefineKey  F25 "nelXprobeNet -win @window"
ediDefineKey -schematic F26 "nelXprobeInst -win @window"
ediDefineKey  F26 "nelXprobeInst -win @window"
# Next release
#ediDefineKey -schematic KP_Add "nelCreateComponent -win @window"
#ediDefineKey KP_Add "nelCreateComponent -win @window"

#~ --Mahesh
#~ source /opt/arfSourceCodes/ssoft/arfBindKeysProcs.tcl
loadEncryptedTcl /opt/arfscripts/ssoft/arfBindKeysProcs.etcl
#layer on-off
ediDefineKey 0 "ediSetWinDisplayStyle -win @window -visibleLayers {0 - 4095 off} ; ediPanByFactor 0 0 -win @window"
ediDefineKey 9 "ediSetWinDisplayStyle -win @window -visibleLayers {0 - 4095 on} ; ediPanByFactor 0 0 -win @window"
ediDefineKey 1 "ToggleLayerStatus @window Metal1_Layer"
ediDefineKey "{Shift}1" "ToggleLayerStatus @window Via1_Layer"
ediDefineKey 2 "ToggleLayerStatus @window Metal2_Layer"
ediDefineKey "{Shift}2" "ToggleLayerStatus @window Via2_Layer"
ediDefineKey 3 "ToggleLayerStatus @window Metal3_Layer"
ediDefineKey "{Shift}3" "ToggleLayerStatus @window Via3_Layer"
ediDefineKey 4 "ToggleLayerStatus @window Metal4_Layer"
ediDefineKey "{Shift}4" "ToggleLayerStatus @window Via4_Layer"
ediDefineKey 8 "ToggleLayerStatus @window Poly_Layer"
ediDefineKey "{Shift}8" "ToggleLayerStatus @window Cont_Layer"
ediDefineKey "{Alt}w" "ToggleLayerStatus @window NwellLayer"
ediDefineKey "{Alt}t" "ToggleLayerStatus @window TextLayer"

#Select Layer
ediDefineKey "{Control}1" "SetLayer m1"
ediDefineKey "{Control}2" "SetLayer m2"
ediDefineKey "{Control}3" "SetLayer m3"
ediDefineKey "{Control}4" "SetLayer m4"

#Swich Metal Layer
ediDefineKey "{Shift}v" "SwitchMetalLayer @window"

#Generate Abstract View
ediDefineKey F8 "absgenbindkey @window"
ediDefineKey F9 "CalcWidth @window"
ediDefineKey F10 "CalcRes @window"

#Change Origin
ediDefineKey "{Alt}o" "laySetNewCellOrigin -win @window"

ediDefineKey "{Alt}n" "laySetAA -win @window"
ediDefineKey "{Control}n" "laySet45 -win @window"
ediDefineKey n "laySet90 -win @window"
#~ ediDefineKey 8 "laySet90L -win @window"

ediDefineKey -schematic "{Alt}n" "schSetAA -win @window"
ediDefineKey -schematic "{Control}n" "schSet45 -win @window"
ediDefineKey -schematic n "schSet90 -win @window"
#~ ediDefineKey -schematic 8 "schSet90L -win @window"

ediDefineKey F1 "ediShowAllDisplay -screen @screen"
ediDefineKey F2 "ediToggleWinInterlock -win @window toggle"
ediDefineKey F3 "ediFormDisplayControl -win @window toggle"
ediDefineKey F4 "FDRCMenu :0.0"
ediDefineKey F5 "FLVSMenu :0.0"
ediDefineKey F6 "ediVioViStepperMenu @window"
ediDefineKey F7 "ediVioClearErrors @window"
ediDefineKey "{Control}t" "RemoveLVSText @window"
#~ --Mahesh


