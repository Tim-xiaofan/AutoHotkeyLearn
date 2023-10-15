#Requires AutoHotkey v2.0

^1::
{
    Run "notepad.exe" ; 运行一个程序. 注意, 大部分的程序可能需要完整路径
}

^2::
{
    ; 使用内置变量来打开 "我的文档":
    Run A_MyDocuments
}