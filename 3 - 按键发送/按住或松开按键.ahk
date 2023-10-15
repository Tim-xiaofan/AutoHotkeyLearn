#Requires AutoHotkey v2.0

; 想要表示按住或松开某个按键, 可以将这个键用花括号围起来, 同时加上单词 UP 或 DOWN

^1::
{
    Send "^s" ; 表示发送 CTRL+S
}

^2::
{
    Send "{Ctrl down}s{Ctrl up}" ; 表示发送 CTRL+S
}

^3::
{
    Send  "{Up down}" ; 按下向上键
    Sleep 1000 ; 保持 1 秒
    Send "{Up up}" ; 松开
}

^s::
{
    MsgBox "You pressed Ctrl + S" ; 表示发送 CTRL+S
}