#Requires AutoHotkey v2.0

global ct := 0

foo()
{
    global ct
    ++ct
    MsgBox("in foo: ct= " ct)
}

^1::
{
    global ct
    MsgBox("in ^1: ct = " ct)
    ++ct
    foo()
    ct := 0
}