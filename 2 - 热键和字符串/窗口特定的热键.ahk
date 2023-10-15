#Requires AutoHotkey v2.0

; 有时候你也许想要热键或热字串只在某些特定窗口上工作(或禁用)
#HotIf WinActive("Untitled - Notepad") ; 特殊的命令(技术上称为 "指令") 可以创建对上下文敏感的热键和热字串
#Space::
{
    MsgBox "You pressed WIN+SPACE in Notepad."
}

; 要关闭后续热键或热字串的上下文敏感性, 请指定 #HotIf 指令, 但不带参数
#HotIf WinActive("Untitled - Notepad")
!q:: ; ALT + Q
{
    MsgBox "you pressed ALT+Q in Notepad"
}

#HotIf
!q::
{
    MsgBox "You pressed ALT+Q in any window."
}

; #HotIf 指令是与位置相关的: 它会影响脚本中实际在它下面的所有热键和热字串, 直到下一个 #HotIf 指令