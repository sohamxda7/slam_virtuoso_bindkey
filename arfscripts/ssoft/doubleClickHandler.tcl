# --- Double-Click Configuration and State Variables ---
# Set the double-click speed in milliseconds. Adjust as needed.
set doubleClickTimeout 300

# Initialize global state variables to track clicks.
set ::lastClickTime 0
set ::lastClickWindow ""
set ::doubleClickPending ""

# This procedure will be bound to button1 and will decide what action to take.
proc doubleClickHandler { win x y } {
    global doubleClickTimeout
    set currentTime [clock milliseconds]

    # Check if this click qualifies as a double-click
    if { [expr {$currentTime - $::lastClickTime}] < $doubleClickTimeout && $::lastClickWindow == $win } {
        
        # --- DOUBLE-CLICK ACTION ---
        # It's a double-click. Cancel the pending single-click action.
        if { $::doubleClickPending != "" } {
            after cancel $::doubleClickPending
        }

        # Reset the state variables
        set ::lastClickTime 0
        set ::doubleClickPending ""

        # Execute the "complete" command
        ediCompleteEnter -win $win
        
    } else {

        # --- SINGLE-CLICK ACTION ---
        # This is the first click, or it was too slow to be a double-click.
        # Schedule the "smartSelect" procedure from preciseSelectOrDismiss to run after the timeout.
        set ::doubleClickPending [after $doubleClickTimeout "smartSelect $win $x $y"]

        # Save the state of this click for the next one to check against.
        set ::lastClickTime $currentTime
        set ::lastClickWindow $win
    }
}