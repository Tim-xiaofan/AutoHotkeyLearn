#Requires AutoHotkey v2.0

::btw::by the way  ; 当您按下一个默认的结束符时, 用"by the way"替换掉"btw".

:*:btw::by the way  ; 替换 "btw" 为 "By the way" 而不需要按下结束符.

^n::  ; CTRL+N 热键
{
    Run "notepad.exe"  ; 当你按下 Ctrl+N, 将启动记事本.
}  ; 热键内容结束, 这之后的内容将不会触发.

^b::  ; CTRL+B 热键
{
    Send "{Ctrl down}c{Ctrl up}"  ; 复制选定的文本. 也可以使用 ^c, 但这种方法更加可靠.
    SendInput "[b]{Ctrl down}v{Ctrl up}[/b]" ; 将选定的文本包装在 BBCode 标签中, 以便在论坛中以粗体显示.
}  ; 热键内容结束, 当按下热键时, 下面的代码将不会被执行.