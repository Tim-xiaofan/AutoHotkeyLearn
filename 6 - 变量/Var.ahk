#Requires AutoHotkey v2.0

; 文本赋值
^1::
{
    MyVar := "Text"
}

; 变量赋值
^2::
{
    MyVar := "Text"
    MyVar1 := MyVar
}

; 数字赋值
^3::
{
    MyVar := 6 + 8 / 3 * 2 - Sqrt(9)
}

; 混合赋值
^4::
{
    MyVar2 := 4
    MyVar := "The value of 5 + " MyVar2 " is: " 5 + MyVar2
    MsgBox(MyVar)
}