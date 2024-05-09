;CTRL + j: make current window always on top
^j::
{
    ;检索并报告活动窗口的标题.
    MsgBox ("The active window is '" WinGetTitle("A") "'"), "WinSetAlwaysOnTop", 'T2'
    WinSetAlwaysOnTop(-1, "A")
}