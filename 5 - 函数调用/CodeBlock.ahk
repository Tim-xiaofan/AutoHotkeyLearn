#Requires AutoHotkey v2.0

^1::
{
    if FileExist("CodeBlock.ahk")
    {
        MsgBox "CodeBlock.ahk exists"
    }
}

^2::
{
    if not FileExist("CodeBlock.ahk.1")
    {
        MsgBox "CodeBlock.ahk.1 does not exist"
    }
}