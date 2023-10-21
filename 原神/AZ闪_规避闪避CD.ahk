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
~5::
{
    Suspend(True)
    reset()
}
~Esc::
{
    Suspend(True)
    reset()
}
~Q::
{
    Suspend(True)
    reset()
}
~M::
{
    Suspend(True)
    reset()
}
~C::
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
    Sleep(420)
    SendInput("{LButton up}") ;z
    Sleep(20)
    Send("{Space down}")   ; space DOWN
    Sleep(30)
    Send("{Space UP}") ; space UP

    sleep(30)
}

PressShift() ;AZ闪
{
    ; AZ
    SendInput("{LButton down}") ;z start
    Sleep(450)
    SendInput("{LButton up}") ;z end
 
    ; 闪避 
    Sleep(20)
    SendInput("{RButton down}")
    Sleep(30)
    SendInput("{RButton up}")
 
    ; S
    Sleep(20)
    send("{s down}")
    Sleep(100)
    send("{s up}")
 
    ; W
    Sleep(50)
    Send("{w down}")
    Sleep(50)
    Send("{w up}")

    sleep(80)

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