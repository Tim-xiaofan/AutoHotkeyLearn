#Requires AutoHotkey v2.0

SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)  ; Ensures a consistent starting directory.

#HotIf WinActive("原神")
^1::
{
    Send("{+}") ; 行走/奔跑切换
} 

^2::
{
    Send("{c}") ; 角色界面
} 

^3::
{
    Send("{RButton down}{RButton up}") ; 闪避
    Sleep(20)
    Send("{w}")
}