/*
    File Structure:
    SSC-AHK Scripts\
    ├── MainManager.ahk  <---- You are here
    └── Modules\
        ├── KeypadA.ahk (NTR profile)
        │       └── [Funct.01] 
        │       ├── [Funct.02]
        │       ├── [Funct.03]
        │       ├── [Funct.04]
        │       ├── [Funct.05]
        │       ├── [Funct.06]
        │       ├── [Funct.07]
        │       ├── [Funct.08]
        │       ├── [Funct.09]
        │       ├── [Funct.10]
        │       └── [Funct.11]
        ├── KeypadB.ahk
        │       └── [Funct.01] 
        │       ├── [Funct.02]
        │       ├── [Funct.03]
        │       ├── [Funct.04]
        │       ├── [Funct.05]
        │       ├── [Funct.06]
        │       ├── [Funct.07]
        │       ├── [Funct.08]
        │       ├── [Funct.09]
        │       ├── [Funct.10]
        │       └── [Funct.11]
        ├── KeypadC.ahk
        │       └── [Funct.01] 
        │       ├── [Funct.02]
        │       ├── [Funct.03]
        │       ├── [Funct.04]
        │       ├── [Funct.05]
        │       ├── [Funct.06]
        │       ├── [Funct.07]
        │       ├── [Funct.08]
        │       ├── [Funct.09]
        │       ├── [Funct.10]
        │       └── [Funct.11]
        └── KeypadD.ahk
        │       └── [Funct.01] 
        │       ├── [Funct.02]
        │       ├── [Funct.03]
        │       ├── [Funct.04]
        │       ├── [Funct.05]
        │       ├── [Funct.06]
        │       ├── [Funct.07]
        │       ├── [Funct.08]
        │       ├── [Funct.09]
        │       ├── [Funct.10]
        │       └── [Funct.11]

; -----------------------------------------------------    
File Structure:
    SSC-AHK Scripts\
    ├── MainManager.ahk  <---- You are here
    └── Modules\
        ├── KeypadA.ahk (NTR profile)
        │       └── [Funct.01] balance hold
        │       ├── [Funct.02] collections hold
        │       ├── [Funct.03] multiple holds
        │       ├── [Funct.04] missing credentials hold
        │       ├── [Funct.05] Mail Merge sent
        │       ├── [Funct.06] 
        │       ├── [Funct.07]
        │       ├── [Funct.08]
        │       ├── [Funct.09]
        │       ├── [Funct.10]
        │       └── [Funct.11]
        ├── KeypadB.ahk
        │       └── [Funct.01] 
        │       ├── [Funct.02]
        │       ├── [Funct.03]
        │       ├── [Funct.04]
        │       ├── [Funct.05]
        │       ├── [Funct.06]
        │       ├── [Funct.07]
        │       ├── [Funct.08]
        │       ├── [Funct.09]
        │       ├── [Funct.10]
        │       └── [Funct.11]
        ├── KeypadC.ahk
        │       └── [Funct.01] 
        │       ├── [Funct.02]
        │       ├── [Funct.03]
        │       ├── [Funct.04]
        │       ├── [Funct.05]
        │       ├── [Funct.06]
        │       ├── [Funct.07]
        │       ├── [Funct.08]
        │       ├── [Funct.09]
        │       ├── [Funct.10]
        │       └── [Funct.11]
        └── KeypadD.ahk
        │       └── [Funct.01] 
        │       ├── [Funct.02]
        │       ├── [Funct.03]
        │       ├── [Funct.04]
        │       ├── [Funct.05]
        │       ├── [Funct.06]
        │       ├── [Funct.07]
        │       ├── [Funct.08]
        │       ├── [Funct.09]
        │       ├── [Funct.10]
        │       └── [Funct.11]

-----------------------------------------------------
general lay out of the KB
[F10][F11][F12][  ]
[F07][F08][F09][  ]
[F04][F05][F06][  ]
[F01][F02][F03][||]
[        ][   ][||]
-----------------------------------------------------
General Layout of the Keyboard (landscape 01-12):
[F01][F02][F03][F04]
[F05][F06][F07][F08]
[F09][F10][F11][F12]
-----------------------------------------------------
General Layout of the Keyboard (landscape 12-01):
[F09][F10][F11][F12]
[F05][F06][F07][F08]
[F01][F02][F03][F04]
-----------------------------------------------------
*/
;Globals-
Global CurrentDate := FormatTime(, "MM/dd/yyyy")

; Comments:
    BalHold(){
        Send(CurrentDate . " - balance hold - LEBM")
        Sleep(75)
    }
    CollHold(){
        Send(CurrentDate . " - collections hold - LEBM")
        Sleep(75)
    }
    MultHold(){
        Send(CurrentDate . " - multiple holds - LEBM")
        Sleep(75)
    }
    MissCredHold(){
        Send(CurrentDate . " - missing credentials hold - LEBM")
        Sleep(75)
    }
    MailMerge1(){
        Send(CurrentDate . " - Mail Merge sent - LEBM")
        Sleep(75)
    }
    Send(CurrentDate . " -  - LEBM")
    Sleep(75)
    Send(CurrentDate . " - no answer, lvm - LEBM")
    Sleep(75)
    Send(CurrentDate . " - no answer, no VM - LEBM")
    Sleep(75)


; Status:
; In Progress
    Send("{Tab 2}")
    Sleep(1500) ;needs to be dialed in
    Send("i")   ;i = in progress
    Sleep(75)
; Contact 1
    Send("{Tab 2}")
    Sleep(1500) ;needs to be dialed in
    Send("con") ;con = should default to contact 1
    Sleep(75)
    Send("{Enter}")
    Sleep(250)

; Contact 2
    Send("{Tab 2}")
    Sleep(1500) ;needs to be dialed in
    Send("con") ;con = should default to contact 1
    Sleep(75)
    Send("{Down}")
	Sleep(75)    
    Send("{Enter}")
    Sleep(250)

; Contact 3
    Send("{Tab 2}")
    Sleep(1500) ;needs to be dialed in
    Send("con") ;con = should default to contact 1
    Sleep(75)
    Send("{Down 2}")
	Sleep(75)
    Send("{Enter}")
    Sleep(250)









; stage 1 example: write a comment
^!F1:: {
    CurrentDate := FormatTime(, "MM/dd/yyyy")
    ;comment
    Send(CurrentDate . " - coll hold - LEBM")
    Sleep(75)
}
; stage 2 example: set the status
^!F2:: {
    ; two tabs to go past "Session History" field over to "Status" field
    Send("{Tab 2}")
    Sleep(1000)
	;this needs the extra time. for some reason, sometimes the next command (i) will not go thru

    ; set status to "in progress"
    Send("i")
    Sleep(75)
	
    ; select "in progress"
    Send("{Enter}")
    Sleep(250)
}

; stage 3 example: set the registration status reason
^!F3:: {
    ; tab to "Registration Status Reason"
    Send("{Tab}")
    Sleep(75)

    ; set registration status reason "Balance Hold"
    Send("B")
    Sleep(75)

    ; select "Balance Hold"
    Send("{Enter}")
    Sleep(250)
}

