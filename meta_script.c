#include <stdio.h>
#include <string.h>
#include <string.h>
#include <math.h>


int get_string(char* orig, char* dest){
	int i=0;
	int j=0;
	int flag=0;
	while(orig[i] != 34){
		i++;
	}
	i++;
	while(orig[i] != '\"'){
		if(orig[i]=='\\' && orig[i+1]=='\"'){
            dest[j] = '\\';
            dest[j+1] = '\"';
            i++;
            j+=2;
		}
		else if(orig[i]=='$'){
            dest[j] = orig[i];
            i++;
            flag=orig[i]-48;
		}
		else{
			dest[j] = orig[i];
			j++;
		}
		i++;
	}
	dest[j] = 0;
	return flag;
}


void print_contitions(char *types, FILE* script){
    int pos = 4;
    char type[64];
    int i=0;
    if(types[4]=='+'){
        fprintf(script, "	If RegExMatch(Type, \"i)(");
    }
    else{
        fprintf(script, "	If not RegExMatch(Type, \"i)(");
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
			regex[j+1] = '{';
			regex[j+2] = '1';
			regex[j+3] = ',';
			regex[j+4] = '5';
			regex[j+5] = '}';
			j+=6;
		}
		/*else if( affix[i]==37 ){
			regex[j] = '%';
			j+=1;
		}*/
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
        print_contitions(types, script);
        fprintf(script, "	If(RegExMatch(Item, \"%s\")){\n", regex);
        shift += 6;
    }
    else{
        shift -= get_string(orig, affix);
        shift += strlen(affix);
        to_regex(affix, regex);
        fprintf(script, "	If(RegExMatch(Item, \"%s\")){\n", regex);
    }
    return shift;
}



void link_affix_effect(FILE *datas, FILE *script){
	char line[1024];
	char log[512];
	char effect[512];
	char affix[512];
	char regex[512];
	int stop = 0;
	int shift;

	while(!stop){
		int pos=2;
		fgets(line, 1024, datas);
		if(line[0] == ']')
			stop = 1;
		else if(strlen(line)<2){}
		else if(line[2] == '\"'){
			fprintf(script, "\n\n	;##### %s\n", line+3);
		}
		else if(line[2] == '[' && line[3] == '"'){
			get_string(line+pos, log);
			pos += 4+strlen(log);
			shift = get_string(line+pos, effect);
			pos += 4+strlen(effect) + (int)fmin(shift, 2);
			while(strstr(line+pos, "\"")){
				pos += parse_conditions(line+pos, affix, script);
				if(shift){
                    fprintf(script, "		Importance := %Importance% > %i ? %Importance% : %i\n", shift, shift);
				}
				fprintf(script, "		Result := Result . \"`r%s\"\n", effect);
				fprintf(script, "	}\n\n");
			}
		}
	}
}

/*void link_log_effect(FILE *datas, FILE *script){
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
			fprintf(script, "\n\n	;##### %s\n", line+3);
		}
		else if(line[0] == ']' && line[1] == ';')
			stop = 1;
		else if(line[2] == '[' && line[3] == '"'){
			get_string(line+pos, log);
			pos += 4+strlen(log);
			get_string(line+pos, effect);
			pos += 4+strlen(effect);
			fprintf(script, "	If(RegExMatch(Log, \"%s\"))\n		Result := Result . \"`r%s\"\n\n", log, effect);
		}
	}
}*/

void link_all(FILE *datas, FILE *script){
	char line[1024];
	char log[512];
	char effect[512];
	char affix[512];
	char regex[512];
	int stop = 0;
	int shift;

	while(!stop){
		int pos=2;
		fgets(line, 1024, datas);
		if(line[0] == ']')
			stop = 1;
		else if(strlen(line)<2){}
		else if(line[2] == '\"'){
			fprintf(script, "\n\n	;##### %s\n", line+3);
		}
		else if(line[2] == '[' && line[3] == '"'){
			get_string(line+pos, log);
			pos += 4+strlen(log);
			shift = get_string(line+pos, effect);
			pos += 4+strlen(effect) + (int)fmin(shift, 2);
			while(strstr(line+pos, "\"")){
				pos += parse_conditions(line+pos, affix, script);
				if(shift){
                    fprintf(script, "		Importance := %Importance% > %i ? %Importance% : %i\n", shift, shift);
				}
				fprintf(script, "		Result := Result . \"`r%s`r	%s\"\n", log, effect);
				fprintf(script, "	}\n\n", log, effect);
			}
		}
	}
}


int main(){
	FILE* datas = fopen("shrines.js", "r");
	fscanf(datas, "[");
	FILE* script = fopen("rules.ahk", "w+");

	fprintf(script, "Parse_item(Item)\n{\n	Result_bis := Result\n\n");
	link_affix_effect(datas, script);
	fprintf(script, "	IfInString Result_bis, %%Result%%\n\
		Result := Result . \"`rUNKNOWN : \" . Item\n}\n\n");

	datas = fopen("shrines.js", "a+");
	fscanf(datas, "[");

	fprintf(script, "ParseAffix(Item)\n{\n");
    link_all(datas, script);
	fprintf(script, "}\n\n");

}




