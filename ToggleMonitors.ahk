; Set the path to NirCmd
nircmdPath := "C:\Program Files\nircmd\nircmd.exe"  ; Adjust if necessary

; Hotkey to toggle Monitor 1 on/off
^!m::  ; Ctrl + Alt + M
{
    static monitor1State := "on"  ; Start with Monitor 1 ON

    if (monitor1State == "on") {
        ; Turn off Monitor 1
        Run(nircmdPath " monitor off 0")  ; Off for Monitor 1
        monitor1State := "off"  ; Update state to OFF
        MsgBox("Monitor 1 has been turned off.")
    } else {
        ; Notify that the monitor is off and needs interaction to turn back on
        MsgBox("Please move the mouse or press any key to turn Monitor 1 back on.")
        monitor1State := "on"  ; Update state to ON
        ; Note: Moving the mouse or pressing a key will turn it back on.
    }
}
