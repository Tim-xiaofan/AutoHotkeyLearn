#Requires AutoHotkey v2.0

/*
参考 https://github.com/scarletkc/Genshin.AutoHotkey
*/ 

SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)  ; Ensures a consistent starting directory.
Suspend(True)

#HotIf WinActive("原神")
; #HotIf
#SuspendExempt  ;避免挂起. 即使挂起为 ON, 豁免热键/热字符串将保持启用. 这允许通过热键来关闭挂起, 否则这是不可能的, 因为热键将被挂起
~4::
{
    Suspend(False)
}
~MButton::
{
    Suspend(False)
}
#SuspendExempt False 
~2::Suspend(True)
~3::Suspend(True)
~1::Suspend(True)
~Esc::Suspend(True)
; ~RButton::Suspend(True)
~Q::Suspend(True)

LButton::
{
    SetTimer(PressShift, 1) ; 一次左键完成一次AZ闪
    return
}

PressShift()
{
    state := GetKeyState("LButton") 
    if state = False ; 用户未按下  
    {
      BlockInput("SendAndMouse")
      SetKeyDelay(-1)
      SendInput("{LButton down}") ;A
      Sleep(410)
      SendInput("{LButton up}") ;z
      Sleep(50)
      SendInput("{RButton down}")
      Sleep(30)
      send("{s down}")
      Sleep(50)
      send("{s up}")
      Sleep(30)
      SendInput("{RButton up}")
      Sleep(30)
      Send("{w down}")
      Sleep(50)
      Send("{w up}")
      Sleep(30)
      BlockInput("Default")
      SetTimer(PressShift, 0)
    }
    return
}