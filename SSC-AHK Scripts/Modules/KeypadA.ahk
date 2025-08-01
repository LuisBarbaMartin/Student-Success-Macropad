; KeypadA.ahk (AHK v2)

;Global Variables/Settings/Functions
#Requires AutoHotkey v2.0

Global CurrentDate := FormatTime(, "MM/dd/yyyy")

; -----------------------------------------------------
;Notes:
;------------------------------------------------------
;   SSC-AHK Scripts\
;   ├── MainManager.ahk
;   └── Modules\
;       ├── KeypadA.ahk <---- You are here
;       ├── KeypadB.ahk
;       ├── KeypadC.ahk
;       └── KeypadD.ahk
;
; SSC-AHK Scripts\
; ├── MainManager.ahk
; └── Modules\
/*
    SSC-AHK Scripts\
    ├── MainManager.ahk
    └── Modules\
        ├── KeypadA.ahk
        │   └── ChildScripts\
        │       ├── Child_1.ahk
        │       └── Child_2.ahk
        ├── KeypadB.ahk
        ├── KeypadC.ahk
        └── KeypadD.ahk
*/
; general lay out of the KB
; [F09][F10][F11][F12]
; [F05][F06][F07][F08]
; [F01][F02][F03][F04]
;
;------------------------------------------------------
;
;------------------------------------------------------