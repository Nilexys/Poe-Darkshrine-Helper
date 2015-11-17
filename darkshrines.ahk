#Include rules.ahk
#Include ToolTip_Options.ahk


GetClipboardContents(DropNewlines = False)
{
    Result =
    If Not DropNewlines
    {
        Loop, Parse, Clipboard, `n, `r
        {
            Result := Result . A_LoopField . "`r`n"
        }
    }
    Else
    {   
        Loop, Parse, Clipboard, `n, `r
        {
            Result := Result . A_LoopField
        }
    }
    return Result
}



GetStartingPos(Item)
{
	compt := 1
	IfInString Item, Corrupted
		compt := compt+1
	IfInString Item, Mirrored
		compt := compt+1
	If RegExMatch(Item, "Map`r")
		compt := compt+1
	If RegExMatch(Item, "Jewel`r")
		compt := compt+1
	while compt>0
	{
		StringGetPos Pos, Item, --------, R
		StringLeft Item, Item, Pos
		compt := compt-1
	}
	return Pos
}

Split(Item, n)
{
	If(RegExMatch(Item, "^--------"))
	{
		IfInString Item, Corrupted
			Result := Result . "`ropens portals to a vaal side area"
		return
	}
	IfInString Item, `r 
	{
		StringGetPos Pos, Item, `r
		StringLeft Line, Item, Pos
        If n=1
            Parse_item(Line)
        If n=2
            ParseAffix(Line)
		StringTrimLeft Item, Item, Pos+2
		Split(Item, n)
	}
}

GetType(Item){
	StringGetPos Pos, Item, `r
	StringTrimLeft Item, Item, Pos+2
	StringGetPos Pos, Item, `r
	StringTrimLeft Item, Item, Pos+2
	StringGetPos Pos, Item, `r
	StringLeft Item, Item, Pos
	Type := Item
}

SetColor(){
	bg := Importance=5 ? 0xb0ffb0 : Importance=6 ? 0x00ffb0 : Importance=7 ? 0x2040ff : Importance=8 ? 0x6000ff : 0xffffff
	ToolTipColor(bg, 0x000000)
	;ToolTipColor(0xb0ffb0, 0)
	;ToolTip ----------`r---------`r---------, 0, 0, 2
	;ToolTipColor(0x00ffb0, 0)
	;ToolTip ----------`r---------`r---------, 0, 50, 3
	;ToolTipColor(0x2040ff, 0)
	;ToolTip ----------`r---------`r---------, 0, 100, 4
	;ToolTipColor(0x6000ff, 0)
	;ToolTip ----------`r---------`r---------, 0, 150, 5
}

^x::
Send {CONTROL DOWN}c{CONTROL UP}
MouseGetPos X, Y
Item := GetClipboardContents()
Global Type :=
Global Result := 
Global Importance := 0
GetType(Item)
Pos := GetStartingPos(Item)
StringTrimLeft Item, Item, Pos+10
StringTrimRight Item, Item, 2
Split(Item, 1)
StringTrimLeft Result, Result, 1
SetColor()
Tooltip %Result%, X, Y
SetTimer, ToolTipTimer, 100
return

^w::
MouseGetPos X, Y
Item := GetClipboardContents()
Global Result := 
Pos := GetStartingPos(Item)
StringTrimLeft Item, Item, Pos+10
StringTrimRight Item, Item, 2
Split(Item, 2)
StringTrimLeft Result, Result, 1
Tooltip %Result%, X, Y
SetTimer, ToolTipTimer, 100
return

ToolTipTimer:
    MouseMoveThreshold := 40
    MouseGetPos, CurrX, CurrY
    MouseMoved := (CurrX - X)**2 + (CurrY - Y)**2 > MouseMoveThreshold**2
    If (MouseMoved)
    {
        SetTimer, ToolTipTimer, Off
        ToolTip
    }
return
