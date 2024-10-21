; Toggle between 1 and 2 monitors
; Press Ctrl + Alt + M to toggle

^!m:: {
    ; Get the current display mode
    monCount := SysGetMonitorCount()
    
    if (monCount > 1) {
        ; If more than one monitor, set the second monitor as primary and switch to it
        Run("C:\Program Files\NirCmd\nircmd.exe setprimarydisplay 1") ; Set the second monitor as primary
        Sleep(500)  ; Wait for a moment
        Run("DisplaySwitch.exe /internal") ; Switch to the internal (single monitor)
    } else {
        ; If only one monitor, switch to extend mode
        Run("DisplaySwitch.exe /extend")
    }
}
