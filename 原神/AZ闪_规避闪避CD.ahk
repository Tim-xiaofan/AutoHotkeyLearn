#Requires AutoHotkey v2.0

/*
参考 https://github.com/scarletkc/Genshin.AutoHotkey
*/ 

; 一次左键点击完成一次AZ闪或AZ闪

SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)  ; Ensures a consistent starting directory.
Suspend(True)

global gShiftCount := 0 ; 目前完成的AZ闪连续次数
global MAXSHIFT := 2 ; 最多连续闪避的次数

#HotIf WinActive("原神")
; #HotIf

; TODO: 用户一段时间未操作清理 gShiftCount
reset()
{
    global gShiftCount
    gShiftCount := 0
}

#SuspendExempt  ;避免挂起. 即使挂起为 ON, 豁免热键/热字符串将保持启用. 这允许通过热键来关闭挂起, 否则这是不可能的, 因为热键将被挂起
~4::
{
    Suspend(False)
    reset()
}
~MButton::
{
    Suspend(False)
    reset()
}
#SuspendExempt False 
~2::
{
    Suspend(True)
    reset()
}
~3::
{
    Suspend(True)
    reset()
}
~1::
{
    Suspend(True)
    reset()
}
~Esc::
{
    Suspend(True)
    reset()
}
; ~RButton::Suspend(True)
~Q::
{
    Suspend(True)
    reset()
}

LButton::
{
    SetTimer(Press, 1) ; 一次左键完成一次AZ闪
    return
}

PressSpace() ;AZ跳
{
    SendInput("{LButton down}") ;A
    Sleep(390)
    SendInput("{LButton up}") ;z
    Sleep(50)
    Send("{Space down}")   ; space DOWN
    Sleep(30)
    Send("{Space UP}") ; space UP
}

PressShift() ;AZ闪
{
    SendInput("{LButton down}") ;L DOWN
    Sleep(390)
    SendInput("{LButton up}") ;L UP
    Sleep(50)
    SendInput("{RButton down}") ; R DOWN
    Sleep(30)
    send("{s down}") ; S DOWN
    Sleep(50)
    send("{s up}") ; S UP
    Sleep(30)
    SendInput("{RButton up}") ; R UP
    Sleep(30)
    Send("{w down}") ; W DOWN
    Sleep(50)
    Send("{w up}") ; W UP
    ; Sleep(30)
    global gShiftCount
    ++gShiftCount
}

Press()
{
    state := GetKeyState("LButton") 
    if state = False ; 用户未按下鼠标左键
    {
        BlockInput("SendAndMouse")
        SetKeyDelay(-1)
        global gShiftCount
        if( gShiftCount = MAXSHIFT)
        {
            PressSpace()
            gShiftCount := 0
        }
        else
        {
            PressShift()
        }
        BlockInput("Default")
        SetTimer(Press, 0)
    }
}