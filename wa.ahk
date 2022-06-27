﻿; vim:textwidth=70:colorcolumn=70

#SingleInstance Force

; See list of keys: https://www.autohotkey.com/docs/KeyList.htm

#IfWinNotActive ahk_exe gvim.exe
  ; Hold Pause to turn off the computer.
  Pause::
    KeyWait Pause, T3
    if (ErrorLevel = 1)
      Shutdown 5
  return

  ; Remap caps lock to basckspace, and disable auto key repetition
  ; when it is held down.
  CapsLock::
    Send {Backspace}
    KeyWait CapsLock
  return

  ; Unset some keys.
  AppsKey::return
#IfWinNotActive

