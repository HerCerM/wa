﻿#SingleInstance Force

; Title for any pop-up AHK window.
windowTitle := "Asistente de accesibilidad"

; Facilitate shutting down the computer.
Pause::
  MsgBox 4, windowTitle, ¿Desea apagar el sistema?
  IfMsgBox Yes
    Shutdown 5
return

; Unset some keys.
; See list of keys: https://www.autohotkey.com/docs/KeyList.htm
AppsKey::return

