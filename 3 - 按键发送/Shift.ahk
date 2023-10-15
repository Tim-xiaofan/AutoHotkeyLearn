#Requires AutoHotkey v2.0

^j::
{
    Send "+abc" ; 会发送文本 "Abc"
    Send "+a+b+c"
}