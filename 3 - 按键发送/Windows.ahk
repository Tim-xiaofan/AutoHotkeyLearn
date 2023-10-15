#Requires AutoHotkey v2.0

^j::
{
    Send "#g" ; Win + G
}

#g::
{
    MsgBox "You pressed Win + G"
}