#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2   ;allow for less precise window title matching with "2" option

param:= %A_Index%
MsgBox, ,is param?, Param == %1% param 2 = %2%
IfMsgBox, Ok
 sendcontinue()
return

sendcontinue(){
    WinActivate, Windows Powershell
    send, continue
    send {Enter}
    }
