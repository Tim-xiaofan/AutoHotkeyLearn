#Requires AutoHotkey v2.0

; 方括号语法(Array)
^1::
{
    MyArray := ["one", "two", "three", 17]
    str := ""
    for(i, val in MyArray)
    {
        str .= i .= ": "
        str .= val.= ","
    }
    Msgbox(str)
}

; 大括号语法, 这将创建一个 ad hoc 对象. 这是一种创建具有少量已知属性的对象的快速方法. 
; 在这个例子中, 值 "Yellow" 存储在对象键 Color 中. 同样的, 值 3 存储在对象键 Price 中
^2::
{
    Banana := {Color: "Yellow", Taste: "Delicious", Price: 3}
    Msgbox("{Color: " Banana.Color ",Taste: " Banana.Taste ", Price: " Banana.Price "}")
}

; 数组构造器、Map构造器

^3::
{
    MyArray := Array("one", "two", "three", 17)
    MyMap := Map("^", "Ctrl", "!", "Alt")
}
