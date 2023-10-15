#Requires AutoHotkey v2.0

^j::
{
    Send "^{Space}" ; Ctrl + Space
}

^Space::
{
    MsgBox "You pressed Ctrl + Space"
}