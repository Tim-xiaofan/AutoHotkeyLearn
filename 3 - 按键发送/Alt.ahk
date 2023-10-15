#Requires AutoHotkey v2.0

; 现在你决定发送(输入) 一些按键到一个程序中. 你可以使用 Send 函数. 该函数表示发送按键, 模拟打字或按键操作.
; Send 函数也有一些特殊的键

^j::
{
    Send "This is text!a" ;将发送按键序列 "This is text" 并接着按下 Alt+A
}

!a::
{
    MsgBox "You pressed ALT + A."
}