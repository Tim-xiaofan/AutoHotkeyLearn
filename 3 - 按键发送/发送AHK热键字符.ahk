#Requires AutoHotkey v2.0

^j::
{
    Send "{^}a" ; 发送字符 "^a"
}

^::
; 跟上面的例子类似, 只是这次是 Enter 键. AHK 将会输出 "Enter"
; 如果 Enter 没有加上 {} 的话.
; Send "Multiple Enter lines have Enter been sent." ; 错误的
; Send "Multiple{Enter}lines have{Enter}been sent." ; 正确的