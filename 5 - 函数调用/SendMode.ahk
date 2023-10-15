#Requires AutoHotkey v2.0

; https://wyagd001.github.io/v2/docs/lib/SendMode.htm

^1::
{
    MsgBox("Origin Send mode: " A_SendMode)

    SendMode("Input")
    MsgBox("After seting Input: " A_SendMode)

    SendMode("Event")
    MsgBox("After seting Event: " A_SendMode)
}