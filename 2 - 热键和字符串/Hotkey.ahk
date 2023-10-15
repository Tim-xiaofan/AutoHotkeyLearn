#Requires AutoHotkey v2.0

^j:: ;热键是通过一对冒号(::) 创建的. 按键名或组合按键名必须在 :: 的 左边. 代码则跟在后面, 括在大括号里面. 这里为ctrl + j
{
Send "My First Script"
}

Esc::
{
    MsgBox "Escape!!!"
}

; 你可以为每一个热键, 热字串, 标签以及许多我们尚未讨论的其他内容编写多行代码
^m::
{
    MsgBox "Wow!"
    MsgBox "There are"
    Run "notepad.exe"
    WinActivate "Untitled - Notepad"  ; 无标题 - 记事本
    WinWaitActive "Untitled - Notepad"
    Send "7 lines{!}{Enter}"
    SendInput "inside the CTRL{+}J hotkey."
}

;   #	Win(Windows 徽标键)
;   !	Alt
;   ^	Ctrl
;   +	Shift
;   &	用于连接两个按键(含鼠标按键) 合并成一个自定义热键.

; Numpad0, 再按下 Numpad1 , 才能触发热键
Numpad0 & Numpad1::
{
    MsgBox "You pressed Numpad1 while holding down Numpad0."
}