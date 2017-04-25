; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one .ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

#z::Run www.autohotkey.com

::btw::by the way


v_Enable=0 

~Esc::  
if (A_PriorHotkey <> "~Esc" or A_TimeSincePriorHotkey > 400)  
{  
    ; Too much time between presses, so this isn't a double-press.  
    KeyWait, Esc
}
else{
 v_Enable := 1
;SoundBeep, 750,  500 
SoundPlay *-1
SplashTextOn,200,100, Info, `nEnter vi mode
Sleep 3000
SplashTextOff
}
return 

$i::
   if (v_Enable = 1)
{
     v_Enable := 0
SplashTextOn,200,100, Info, `nExit vi mode
Sleep 3000
SplashTextOff
}
   else
   {
     Send,i
   }
   return 

$h::
{
   if (v_Enable = 1)
     Send, {Left}
   else
   {
     Send,h  
   }
   return 
}

$l::
{
   if (v_Enable = 1)
     Send, {Right}
   else
   {
     Send,l
   }
   return 
}

$j::
{
   if (v_Enable = 1)
     Send, {Down}
   else
   {
     Send,j
   }
   return 
}

$k::
{
   if (v_Enable = 1)
     Send, {Up}
   else
   {
     Send,k
   }
   return 
}

$t::
{
   if (v_Enable = 1)
     Send, {Home}
   else
   {
     Send,t
   }
   return 
}

$b::
{
   if (v_Enable = 1)
     Send, {End}
   else
   {
     Send,b
   }
   return 
}


;CapsLock & l::Send, {Left}
;CapsLock & l::Send, {Right}
;CapsLock & j::Send, {Down}
;CapsLock & k::Send, {Up}
;CapsLock & i::Send, {Home}
;CapsLock & u::Send, {End}


;$F9::Send, {LButton down}
return

;$F9 Up::Send, {LButton up}
return


;$F11::Send, {RButton down}
return

;$F11 Up::Send, {RButton up}
return

^!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return



; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.
