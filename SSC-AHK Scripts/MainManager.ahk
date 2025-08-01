; MainManager.ahk (AHK v2)

; Gobal Variables/Settings/Functions
#Requires AutoHotkey v2.0

SetWorkingDir(A_ScriptDir)



; -----------------------------------------------------
;Notes:
;------------------------------------------------------
;   SSC-AHK Scripts\
;   ├── MainManager.ahk <---- You are here
;   └── Modules\
;       ├── KeypadA.ahk
;       ├── KeypadB.ahk
;       ├── KeypadC.ahk
;       └── KeypadD.ahk
;
; general lay out of the KB
; [F09][F10][F11][F12]
; [F05][F06][F07][F08]
; [F01][F02][F03][F04]
;
;------------------------------------------------------
;
;------------------------------------------------------
KeySetA() {
    local scriptFolder := A_ScriptDir . "\Modules"

    ; close any other running keypad scripts
    ProcessClose("KeypadB.ahk")
    ProcessClose("KeypadC.ahk")
;    ProcessClose("KeypadD.ahk")

    ; this constructs the path to the script
    Run(scriptFolder . "\KeypadA.ahk")
    return
}

KeySetB() {
    local scriptFolder := A_ScriptDir . "\Modules"

    ; close any other running keypad scripts
    ProcessClose("KeypadA.ahk")
    ProcessClose("KeypadC.ahk")
;    ProcessClose("KeypadD.ahk")

    ; this constructs the path to the script
    Run(scriptFolder . "\KeypadB.ahk")
}

KeySetC() {
    local scriptFolder := A_ScriptDir . "\Modules"

    ; close any other running keypad scripts
    ProcessClose("KeypadA.ahk")
    ProcessClose("KeypadB.ahk")
;    ProcessClose("KeypadD.ahk")

    ; this constructs the path to the script
    Run(scriptFolder . "\KeypadC.ahk")
}

;KeySetD() {
;    local scriptFolder := A_ScriptDir . "\Modules"
;
;    ; close any other running keypad scripts
;    ProcessClose("KeypadA.ahk")
;    ProcessClose("KeypadB.ahk")
;    ProcessClose("KeypadC.ahk")
;
;    ; this constructs the path to the script
;    Run(scriptFolder . "\KeypadA.aDhk")
;}
;