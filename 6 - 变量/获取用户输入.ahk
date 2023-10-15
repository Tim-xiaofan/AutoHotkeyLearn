#Requires AutoHotkey v2.0

^1::
{
    OutputVar := InputBox("What is your first name?", "Question 1").Value
    if (OutputVar = "Bill")
        MsgBox "That's an awesome name, " OutputVar "."
    
    OutputVar2 := InputBox("Do you like AutoHotkey?", "Question 2").Value
    if (OutputVar2 = "yes")
        MsgBox "Thank you for answering " OutputVar2 ", " OutputVar "! We will become great friends."
    else
        MsgBox OutputVar ", That makes me sad."
}

^2::
{
    Result := MsgBox("Would you like to continue?",, 4)
    if Result = "No"
        return  ; 如果选择 No, 则停止代码继续.
    MsgBox "You pressed YES."  ; 否则, 用户选择了 YES.
}