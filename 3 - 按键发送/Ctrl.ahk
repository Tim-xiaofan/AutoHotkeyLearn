#Requires AutoHotkey v2.0

^j::
{
    Send "^a" ; Ctrl + A
}

^a::
{
    MsgBox "You pressed Ctrl + A"
}