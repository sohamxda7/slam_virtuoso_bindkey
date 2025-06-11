#ARF Configuration

#~ ediSetFieldValue default default layerName m1

#When enabled, the create path command will remember the width associated with each layer.
ssSysConfig -pathWidthByLayer yes 

#default width
ssSysConfig -defWinWidth 1500

#Establish a set of directories to be available in the file and library browsers “<“ quick directory menu.
#set ediBrowseQuickDirList { /home/me/stdcells /home/me/macros}

#To get the Console
#source /opt/arfscripts/ssoft/arfTkcon.tcl; tkcon::Init

#To have Delta move option
#source /opt/arfscripts/ssoft/arfLayEdit.tcl

#To modify the spice format
#~ source /opt/arfscripts/ssoft/arfExtractSpiceFormat.tcl

#To open the Browser
ediCreateLBrowser :0.0

# To Set the View Depth
set ediDefaultViewDepth 0

#Will draw a rectangle around a instance when in edit in place
ssSysConfig -drwEipBoundary yes

#When set, hitting a return key in a form with an OK button will perform the same action as clicking the OK button.
ssSysConfig -returnDoOk yes
#~ ssSysConfig -showToolTips yes


