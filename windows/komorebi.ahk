#Requires AutoHotkey v2.0.2
#SingleInstance Force

; ---------------=| Main Modifier |=---------------

Main := "#"

; ---------------=| Functions |=---------------

Komorebic(cmd) {
    RunWait(Format("komorebic.exe {}", cmd), , "Hide")
}

Bind(key, command) {
    global Main
    Hotkey(Main . key, (*) => Komorebic(command))
}

BindRun(key, command) {
    global Main
    Hotkey(Main . key, (*) => Run(command))
}

; ---------------=| Komorebic |=---------------

Bind("^r", "reload-configuration")
Bind("^p", "toggle-pause")

; ---------------=| Utilities |=---------------

Bind("q", "close")
Bind("^m", "minimize")

; ---------------=| Kb Movement |=---------------

; Switch between workspaces
Bind("1", "focus-workspace 0")
Bind("2", "focus-workspace 1")
Bind("3", "focus-workspace 2")
Bind("4", "focus-workspace 3")
Bind("5", "focus-workspace 4")
Bind("6", "focus-workspace 5")
Bind("7", "focus-workspace 6")
Bind("8", "focus-workspace 7")

; Switch between named workspaces
Bind("r", "focus-named-workspace todo")
Bind("m", "focus-named-workspace music")
Bind("d", "focus-named-workspace social")
Bind("n", "focus-named-workspace notes")
Bind("v", "focus-named-workspace vpn")

; Move windows across workspaces
Bind("+1", "move-to-workspace 0")
Bind("+2", "move-to-workspace 1")
Bind("+3", "move-to-workspace 2")
Bind("+4", "move-to-workspace 3")
Bind("+5", "move-to-workspace 4")
Bind("+6", "move-to-workspace 5")
Bind("+7", "move-to-workspace 6")
Bind("+8", "move-to-workspace 7")

; Move windows across named workspaces
Bind("+r", "move-to-named-workspace todo")
Bind("+m", "move-to-named-workspace music")
Bind("+d", "move-to-named-workspace social")
Bind("+n", "move-to-named-workspace notes")
Bind("+v", "move-to-named-workspace vpn")

; Move windows
Bind("+h", "move left")
Bind("+j", "move down")
Bind("+k", "move up")
Bind("+l", "move right")

; Focus windows
Bind("h", "focus left")
Bind("j", "focus down")
Bind("k", "focus up")
Bind("l", "focus right")

; Manipulate windows
Bind("+t", "toggle-float")
Bind("+f", "toggle-monocle")

; ---------------=| Mouse Movement |=---------------

Bind("WheelUp", "cycle-workspace next")
Bind("WheelDown", "cycle-workspace previous")

; ---------------=| Stack |=---------------

Bind("Left",  "stack left")
Bind("Down",  "stack down")
Bind("Up",    "stack up")
Bind("Right", "stack right")

Bind("`;", "unstack")
Bind("^Tab", "cycle-stack next")

; ---------------=| App Shortcuts |=---------------

BindRun("w", "powershell.exe")
BindRun("+w", 'powershell.exe -NoExit -Command "wsl ~"')