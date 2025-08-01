; ============================================
; Master Script: Consolidated Hold Comment Tools
; Version: AutoHotKey v2
; ============================================
#Requires AutoHotkey v2.0

; Exit hotkey: Ctrl + Esc
^Esc::ExitApp

; -----------------------------------------------------
; Hotkey: Ctrl + Alt + F1 — Collections Hold Comment
; -----------------------------------------------------
^!F1:: {
    CurrentDate := FormatTime(, "MM/dd/yyyy")
    ;comment
    Send(CurrentDate . " - coll hold - LEBM")
    Sleep(75)
    ; two tabs to go past "Session History" field over to "Status" field
    Send("{Tab 2}")
    Sleep(1000)	;this needs the extra time. for some reason, sometimes the next command (i) will not go thru

    ; set status to "in progress"
    Send("i")
    Sleep(75)
	
    ; select "in progress"
    Send("{Enter}")
    Sleep(250)

    ; tab to "Registration Status Reason"
    Send("{Tab}")
    Sleep(75)

    ; set registration status reason "Balance Hold"
    Send("B")
    Sleep(75)

    ; select "Balance Hold"
    Send("{Enter}")
    Sleep(250)

    ;this instruction can be removed
    Send("{Tab}")
    Sleep(75)

    Send("^s")
    Sleep(500)
}

; -----------------------------------------------------
; Hotkey: Ctrl + Alt + F2 — Missing Credentials Hold
; -----------------------------------------------------
^!F2:: {
    CurrentDate := FormatTime(, "MM/dd/yyyy")

    Send(CurrentDate . " - missing credentials hold - LEBM")
    Sleep(75)

    Send("{Tab 2}")
    Sleep(600)
	;this needs the extra time. for some reason, sometimes the next command (i) will not go thru

    Send("i")
    Sleep(75)

    Send("{Enter}")
    Sleep(250)

    Send("{Tab}")
    Sleep(75)

    Send("a")
    Sleep(75)
	
	Send("{down}")
	Sleep(75)

    Send("{Enter}")
    Sleep(250)

    Send("{Tab}")
    Sleep(75)

    Send("^s")
    Sleep(500)
}

; -----------------------------------------------------
; Hotkey: Ctrl + Alt + F3 — Balance Hold Comment
; -----------------------------------------------------
^!F3:: {
    CurrentDate := FormatTime(, "MM/dd/yyyy")

    Send(CurrentDate . " - balance hold - LEBM")
    Sleep(75)

    Send("{Tab 2}")
    Sleep(800)
	;this needs the extra time. for some reason, sometimes the next command (i) will not go thru

    Send("i")
    Sleep(500)

    Send("{Enter}")
    Sleep(500)

    Send("{Tab}")
    Sleep(500)

    Send("B")
    Sleep(500)

    Send("{Enter}")
    Sleep(500)

    Send("{Tab}")
    Sleep(500)

    Send("^s")
    Sleep(500)
}

; -----------------------------------------------------
; Hotkey: Ctrl + Alt + F4 — LVM Comment
; -----------------------------------------------------
^!F4:: {
    CurrentDate := FormatTime(, "MM/dd/yyyy")

    Send(CurrentDate . " - no answer, lvm - LEBM")
    Sleep(75)

}

; -----------------------------------------------------
; Hotkey: Ctrl + Alt + F5 — Template Comment
; -----------------------------------------------------
^!F5:: {
    CurrentDate := FormatTime(, "MM/dd/yyyy")

    Send(CurrentDate . " -  - LEBM")
    Sleep(75)
	
	Send("{Left 7}")
	Sleep(75)
}

; -----------------------------------------------------
; Hotkey: Ctrl + Alt + F6 — Mail Merge(1) sent Comment
; -----------------------------------------------------
^!F6:: {
    CurrentDate := FormatTime(, "MM/dd/yyyy")

    Send("06/02/25 - Mail Merge sent - LEBM")
    Sleep(75)

}

; -----------------------------------------------------
; Hotkey: Ctrl + Alt + F8 — Mail Merge(2) sent Comment
; -----------------------------------------------------
^!F8:: {
    CurrentDate := FormatTime(, "MM/dd/yyyy")

    Send (CurrentDate . " - Mail Merge sent - LEBM")
    Sleep(75)

}

; -----------------------------------------------------
; Hotkey: Ctrl + Alt + F11 — Save Note Con 1
; -----------------------------------------------------
^!F11:: {
    CurrentDate := FormatTime(, "MM/dd/yyyy")
    
    Send("{Tab 2}")
    Sleep(400)
    
    Send("con")
    Sleep(300)

    Send("{Enter}")
    Sleep(100)
	
	Send ("{Tab}")
    Sleep (100)
	
	Send ("non")
	Sleep (100)
	
	Send ("{down}")
	Sleep (100)
	
	Send("{Enter}")
    Sleep(100)
	
    Send("^s")
    Sleep(75)
}

; -----------------------------------------------------
; Hotkey: Ctrl + Alt + F12 — Save Note, Complete
; -----------------------------------------------------
^!F12:: {
    CurrentDate := FormatTime(, "MM/dd/yyyy")
    
    Send("{Tab 2}")
    Sleep(400)
    
    Send("com")
    Sleep(300)
    
;commented out	
;    Loop 4 {
;        Send("{Down}")
;        Sleep(200)
;    }

    Send("{Enter}")
    Sleep(100)
    
    Send("^s")
    Sleep(75)
}