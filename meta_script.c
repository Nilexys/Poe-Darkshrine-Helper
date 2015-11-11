#include <stdio.h>
#include <string.h>
#include <string.h>


int get_string(char* orig, char* dest){
	int i=0;
	int j=0;
	int shift=0;
	while(orig[i] != 34){
		i++;
	}
	i++;
	while(orig[i] != '\"'){
		/*if(orig[i]==37){
			dest[j] = '%';
			dest[j+1] = '%';
			j++;
			shift++;
		}
		else*/ if(orig[i]=='\\' && orig[i+1]=='\"'){
            dest[j] = '\\';
            dest[j+1] = '\"';
            i++;
            j++;
		}
		else
			dest[j] = orig[i];
		i++;
		j++;
	}
	dest[j] = 0;
	return shift;
}


void print_contitions(char *types, FILE* script){
    int pos = 4;
    char type[64];
    int i=0;
    if(types[4]=='+'){
        fprintf(script, "		If RegExMatch(Type, \"i)(");
    }
    else{
        fprintf(script, "		If not RegExMatch(Type, \"i)(");
    }
    while(pos < strlen(types)){
        while(pos+i+1 < strlen(types) && types[pos+i+1]!='+' && types[pos+i+1]!='-'){
            type[i]=types[pos+i+1];
            i++;
        }
        type[i]=0;
        if(pos==4)
            fprintf(script, "%s", type);
        else
            fprintf(script, "|%s", type);
        pos += i+1;
        i=0;
    }
        fprintf(script, ")\")\n");
}


void to_regex(char *affix, char* regex){
	int i=0;
	int j=3;
	regex[0] = 'i';
	regex[1] = ')';
	regex[2] = '^';
	for(i=0; i<strlen(affix); i++){
		if( affix[i]==35 ){
			regex[j] = '.';
			regex[j+1] = '*';
			j+=2;
		}
		else if( affix[i]==37 ){
			regex[j] = '%';
			j+=1;
		}
		else if( affix[i]==43 ){
            regex[j] = '\\';
            regex[j+1] = '+';
            j+=2;
		}
		else{
			regex[j] = affix[i];
			j++;
		}
	}
	regex[j] = '$';
	regex[j+1] = 0;
}


int parse_conditions(char* orig, char* dest, FILE* script){
    char affix[256];
    char regex[256];
    char types[256];
    int shift=4;
    if(strstr(orig, "[")){
        shift -= get_string(orig, affix);
        to_regex(affix, regex);
        shift += strlen(affix);
        shift -= get_string(orig+shift, types);
        shift += strlen(types);
        fprintf(script, "	If(RegExMatch(Item, \"%s\"))\n", regex);
        print_contitions(types, script);
        shift += 6;
    }
    else{
        shift -= get_string(orig, affix);
        shift += strlen(affix);
        to_regex(affix, regex);
        fprintf(script, "	If(RegExMatch(Item, \"%s\"))\n", regex);
    }
    return shift;
}



void link_affix_effect(FILE *datas, FILE *script){
	char line[512];
	char log[256];
	char effect[256];
	char affix[256];
	char regex[256];
	int stop = 0;
	int shift;

	while(!stop){
		int pos=2;
		fgets(line, 512, datas);
		if(line[0] == ']')
			stop = 1;
		else if(strlen(line)<2){}
		else if(line[2] == '\"'){
			fprintf(script, "\n\n	;##### ");
			fprintf(script, line+3);
			fprintf(script, "\n");
		}
		else if(line[2] == '[' && line[3] == '"'){
			shift = get_string(line+pos, log);
			pos += 4+strlen(log)-shift;
			shift = get_string(line+pos, effect);
			pos += 4+strlen(effect)-shift;
			while(strstr(line+pos, "\"")){
				pos += parse_conditions(line+pos, affix, script);
				fprintf(script, "		Result := Result . \"`r%s\"\n\n", effect);
			}
		}
	}
}

void link_log_effect(FILE *datas, FILE *script){
	char line[512];
	char log[256];
	char effect[256];
	char affix[256];
	char regex[256];
	int stop = 0;

	while(!stop){
		int pos=1;
		fgets(line, 512, datas);
		if(line[2] == '\"'){
			fprintf(script, "\n\n	;##### ");
			fprintf(script, line+3);
			fprintf(script, "\n");
		}
		else if(line[0] == ']' && line[1] == ';')
			stop = 1;
		else if(line[2] == '[' && line[3] == '"'){
			get_string(line+pos, log);
			pos += 4+strlen(log);
			get_string(line+pos, effect);
			pos += 4+strlen(effect);
			fprintf(script, "	If(RegExMatch(Log, \"");
			fprintf(script, log);
			fprintf(script, "\"))\n		Result := Result . \"`r");
			fprintf(script, effect);
			fprintf(script, "\"\n\n");
		}
	}
}

void link_all(FILE *datas, FILE *script){
	char line[512];
	char log[256];
	char effect[256];
	char affix[256];
	char regex[256];
	int stop = 0;
	int shift;

	while(!stop){
		int pos=2;
		fgets(line, 512, datas);
		if(line[0] == ']')
			stop = 1;
		else if(strlen(line)<2){}
		else if(line[2] == '\"'){
			fprintf(script, "\n\n	;##### ");
			fprintf(script, line+3);
			fprintf(script, "\n");
		}
		else if(line[2] == '[' && line[3] == '"'){
			shift = get_string(line+pos, log);
			pos += 4+strlen(log)-shift;
			shift = get_string(line+pos, effect);
			pos += 4+strlen(effect)-shift;
			while(strstr(line+pos, "\"")){
				pos += parse_conditions(line+pos, affix, script);
				fprintf(script, "		Result := Result . \"`r%s`r	%s\"\n\n", log, effect);
			}
		}
	}
}


int main(){
	FILE* datas = fopen("shrines.js", "r");
	fscanf(datas, "[");
	FILE* script = fopen("darkshrines.ahk", "w+");

    fprintf(script, "GetClipboardContents(DropNewlines = False)\n{\n    Result =\n    If Not DropNewlines\n    {\n        Loop, Parse, Clipboard, `n, `r\n        {\n            Result := Result . A_LoopField . \"`r`n\"\n        }\n    }\n    Else\n    {   \n        Loop, Parse, Clipboard, `n, `r\n        {\n            Result := Result . A_LoopField\n        }\n    }\n    return Result\n}\n\n\n");

	fprintf(script, "Parse_item(Item)\n{\n	Result_bis := Result\n\n");
	link_affix_effect(datas, script);
	fprintf(script, "	IfInString Result_bis, %%Result%%\n\
		Result := Result . \"`rUNKNOWN : \" . Item\n}\n\n");

	datas = fopen("shrines.js", "a+");
	fscanf(datas, "[");

	fprintf(script, "ParseAffix(Item)\n{\n");
    link_all(datas, script);
	fprintf(script, "}\n\n");

	fprintf(script, "GetStartingPos(Item)\n\
{\n\
	compt := 1\n\
	IfInString Item, Corrupted\n\
		compt := compt+1\n\
	IfInString Item, Mirrored\n\
		compt := compt+1\n\
	IfInString Item, Map\n\
		compt := compt+1\n\
	IfInString Item, Jewel\n\
		compt := compt+1\n\
	while compt>0\n\
	{\n\
		StringGetPos Pos, Item, --------, R\n\
		StringLeft Item, Item, Pos\n\
		compt := compt-1\n\
	}\n\
	return Pos\n\
}\n\n");

	fprintf(script, "Split(Item, n)\n\
{\n\
	If(RegExMatch(Item, \"^--------\"))\n\
	{\n\
		IfInString Item, Corrupted\n\
			Result := Result . \"`ropens portals to a vaal side area\"\n\
		return\n\
	}\n\
	IfInString Item, `r \n\
	{\n\
		StringGetPos Pos, Item, `r\n\
		StringLeft Line, Item, Pos\n\
        If n=1\n\
            Parse_item(Line)\n\
        If n=2\n\
            ParseAffix(Line)\n\
		StringTrimLeft Item, Item, Pos+2\n\
		Split(Item, n)\n\
	}\n\
}\n\n");

    fprintf(script, "GetType(Item){\n\
StringGetPos Pos, Item, `r\n\
StringTrimLeft Item, Item, Pos+2\n\
StringGetPos Pos, Item, `r\n\
StringTrimLeft Item, Item, Pos+2\n\
StringGetPos Pos, Item, `r\n\
StringLeft Item, Item, Pos\n\
Type := Item\n\
}\n\n");

	fprintf(script, "^x::\n\
Send {CONTROL DOWN}c{CONTROL UP}\n\
MouseGetPos X, Y\n\
Item := GetClipboardContents()\n\
Global Type :=\n\
GetType(Item)\n\
Global Result := ""\n\
Pos := GetStartingPos(Item)\n\
StringTrimLeft Item, Item, Pos+10\n\
StringTrimRight Item, Item, 2\n\
Split(Item, 1)\n\
StringTrimLeft Result, Result, 1\n\
Tooltip %%Result%%, X, Y\n\
SetTimer, ToolTipTimer, 100\n\
return\n\n");

    fprintf(script, "^w::\n\
MouseGetPos X, Y\n\
Item := GetClipboardContents()\n\
Global Result := ""\n\
Pos := GetStartingPos(Item)\n\
StringTrimLeft Item, Item, Pos+10\n\
StringTrimRight Item, Item, 2\n\
Split(Item, 2)\n\
StringTrimLeft Result, Result, 1\n\
Tooltip %%Result%%, X, Y\n\
SetTimer, ToolTipTimer, 100\n\
return\n\n");

    fprintf(script, "ToolTipTimer:\n\
    MouseMoveThreshold := 40\n\
    MouseGetPos, CurrX, CurrY\n\
    MouseMoved := (CurrX - X)**2 + (CurrY - Y)**2 > MouseMoveThreshold**2\n\
    If (MouseMoved)\n\
    {\n\
        SetTimer, ToolTipTimer, Off\n\
        ToolTip\n\
    }\n\
return");

	//fprintf(script, "\n	GetStartingPos(Item)\n{\n	Block := 1\n	IfInString Item, Corrupted\n		Block := 2\n	IfInString Item, Map\n		Block := 2\n	IfInString Item, Jewel\n		Block := 2\n	StringGetPos Pos, Item, --------\n	while Pos>0 {\n		Pos2 := Pos\n		StringGetPos Pos, Item, --------\n	}\n	If Block = 2\n		Pos := Pos2	\n}\n\n");

	//fprintf(script, "Split(Item)\n{\n	IfInString Item, `r\n	{\n		StringGetPos Pos, Item, `r\n		StringLeft Line, Item, Pos\n		Parse_item(Line)\n		StringTrimLeft Item, Item, Pos+2\n		Split(Item)\n	}\n}\n\n\n^x::\nSend {CONTROL DOWN}c{CONTROL UP}\nMouseGetPos X, Y\nItem := GetClipboardContents()\nStringGetPos Pos, Item, Item Level\nStringTrimLeft Item, Item, Pos\nGlobal Result := \"\"\nSplit(Item)\nStringTrimLeft Result, Result, 1\nTooltip %%Result%%, X, Y\nSetTimer, ToolTipTimer, 100\nreturn\n\n\nToolTipTimer:\n    MouseMoveThreshold := 40\n    MouseGetPos, CurrX, CurrY\n    MouseMoved := (CurrX - X)**2 + (CurrY - Y)**2 > MouseMoveThreshold**2\n    If (MouseMoved)\n    {\n        SetTimer, ToolTipTimer, Off\n        ToolTip\n    }\nreturn\n\n");

	//fprintf(script, "^w::\nMouseGetPos X, Y\nLog := GetClipboardContents()\nGlobal Result := \"\"\nParse_log(Log)\nStringTrimLeft Result, Result, 1\nTooltip %%Result%%, X, Y\nSetTimer, ToolTipTimer, 100\nreturn\n\n");

}




