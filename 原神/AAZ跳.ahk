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
    ; MsgBox("You clicked mouse mbutton")
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
    PressSpace ; 一次左键完成一次AZ跳
    return
}

PressSpace()
{ ; 参考 https://www.bilibili.com/video/BV1sR4y1B7f2/?vd_source=5103c6036b26dee54f3e792a32d5df57
    state := GetKeyState("LButton") 
    if state = False ; 用户未按下  
    {
      BlockInput("SendAndMouse")
      SetKeyDelay(-1)
      ; A
      SendInput("{LButton down}")
      Sleep(40)
      SendInput("{LButton up}")

      Sleep(100)

      ; A
      SendInput("{LButton down}")
      Sleep(40)
      SendInput("{LButton up}")

      Sleep(40) 
      
      ; Z
      SendInput("{LButton down}") ;z start
      Sleep(330)
      SendInput("{LButton up}") ;z end

      ; 跳
      Send("{Space down}")
      Sleep(10)
      Send("{Space UP}")

      BlockInput("Default")
    }
    return
}