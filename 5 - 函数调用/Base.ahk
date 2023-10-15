#Requires AutoHotkey v2.0

; 在 AutoHotkey 中, 函数调用可以用或不用括号来指定. 通常只有在需要函数的返回值或函数名称没有写在行首时才需要使用括号

^1::
{
    ; 这些是没有括号的函数调用:
    MsgBox "This is some text."
    Input := "AutoHotKey guide"
    StrReplace Input, "AutoHotKey", "AutoHotkey"
    SendInput Input
}

^2::
{
    ; 这些是有括号的函数调用:
    SubStr("I'm scripting, awesome!", 16)
    Output1 := FileExist("./base.ahk")
    Output2 := SubStr("I'm scripting, awesome!", 16)
    SendInput(Output1)
    SendInput(":")
    SendInput(Output2)
}