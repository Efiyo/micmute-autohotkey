; Initialize variables
micMuted := false

; Set up the hotkey
#ScrollLock::
    ; Toggle microphone mute/unmute
    micMuted := !micMuted

    ; Run SoundVolumeView command to mute/unmute microphone by name (adjust as needed)
    if (micMuted)
        Run, svcl.exe /Unmute "YOUR MIC NAME HERE", , Hide
    else
        Run, svcl.exe /Mute "YOUR MIC NAME HERE", , Hide

    ; Toggle Scroll Lock LED based on microphone mute state
    if (micMuted)
        SetScrollLockState, Off
    else
        SetScrollLockState, On

return
