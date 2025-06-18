%{
#include <stdio.h>
%}

DIGIT    [0-9]
INT      {DIGIT}+
FLOAT    {DIGIT}+\.{DIGIT}*|\.{DIGIT}+
ID       [a-zA-Z_][a-zA-Z0-9_]*

%%

"+"             { printf("PLUS\n"); }
"-"             { printf("MINUS\n"); }
"*"             { printf("MULTIPLY\n"); }
"/"             { printf("DIVIDE\n"); }
"**"            { printf("POWER\n"); }
"="             { printf("ASSIGN\n"); }
"=="            { printf("EQ\n"); }
">="            { printf("GE\n"); }
">"             { printf("GT\n"); }
"<="            { printf("LE\n"); }
"<"             { printf("LT\n"); }
"!="            { printf("NEQ\n"); }
"("             { printf("LPAREN\n"); }
")"             { printf("RPAREN\n"); }
"{"             { printf("LBRACE\n"); }
"}"             { printf("RBRACE\n"); }
";"             { printf("SEMICOLON\n"); }
"&"             { printf("ADDRESS_OF\n"); }

"function"      { printf("FUNCTION_KW\n"); }
"var"           { printf("VAR_KW\n"); }
"const"         { printf("CONST_KW\n"); }
"void"          { printf("VOID_KW\n"); }
"not"           { printf("NOT_KW\n"); }
"pre_condition" { printf("PRE_CONDITION_KW\n"); }
"post_condition" { printf("POST_CONDITION_KW\n"); }
"typealias"     { printf("TYPEALIAS_KW\n"); }
"if"            { printf("IF_KW\n"); }
"else"          { printf("ELSE_KW\n"); }
"switch"        { printf("SWITCH_KW\n"); }
"case"          { printf("CASE_KW\n"); }
"break"         { printf("BREAK_KW\n"); }
"continue"      { printf("CONTINUE_KW\n"); }
"while"         { printf("WHILE_KW\n"); }
"do"            { printf("DO_KW\n"); }
"match"         { printf("MATCH_KW\n"); }
"is"            { printf("IS_KW\n"); }
"then"          { printf("THEN_KW\n"); }
"for"           { printf("FOR_KW\n"); }
"in"            { printf("IN_KW\n"); }
"address"       { printf("ADDRESS_KW\n"); }

"of"            { printf("OF_KW\n"); }
"comptime"      { printf("COMPTIME_KW\n"); }
"array"         { printf("ARRAY_KW\n"); }
"hashmap"       { printf("HASHMAP_KW\n"); }
"struct"        { printf("STRUCT_KW\n"); }
"union"         { printf("UNION_KW\n"); }
"enum"          { printf("ENUM_KW\n"); }

"file_scope"    { printf("FILE_SCOPE_KW\n"); }
"dir_scope"     { printf("DIR_SCOPE_KW\n"); }
"pack_scope"    { printf("PACK_SCOPE_KW\n"); }
"global_scope"  { printf("GLOBAL_SCOPE_KW\n"); }
"struct_scope"  { printf("STRUCT_SCOPE_KW\n"); }

"char8"         { printf("CHAR8_TYPE\n"); }
"char16"        { printf("CHAR16_TYPE\n"); }
"char32"        { printf("CHAR32_TYPE\n"); }
"char64"        { printf("CHAR64_TYPE\n"); }
"char128"       { printf("CHAR128_TYPE\n"); }
"char256"       { printf("CHAR256_TYPE\n"); }
"str8"          { printf("STR8_TYPE\n"); }
"str16"         { printf("STR16_TYPE\n"); }
"str32"         { printf("STR32_TYPE\n"); }
"str64"         { printf("STR64_TYPE\n"); }
"str128"        { printf("STR128_TYPE\n"); }
"str256"        { printf("STR256_TYPE\n"); }

"int8"          { printf("INT8_TYPE\n"); }
"int16"         { printf("INT16_TYPE\n"); }
"int32"         { printf("INT32_TYPE\n"); }
"int64"         { printf("INT64_TYPE\n"); }
"int128"        { printf("INT128_TYPE\n"); }
"uint8"         { printf("UINT8_TYPE\n"); }
"uint16"        { printf("UINT16_TYPE\n"); }
"uint32"        { printf("UINT32_TYPE\n"); }
"uint64"        { printf("UINT64_TYPE\n"); }
"uint128"       { printf("UINT128_TYPE\n"); }

"float2"        { printf("FLOAT2_TYPE\n"); }
"float4"        { printf("FLOAT4_TYPE\n"); }
"float8"        { printf("FLOAT8_TYPE\n"); }
"float16"       { printf("FLOAT16_TYPE\n"); }
"float32"       { printf("FLOAT32_TYPE\n"); }
"float64"       { printf("FLOAT64_TYPE\n"); }
"float128"      { printf("FLOAT128_TYPE\n"); }
"ufloat2"       { printf("UFLOAT2_TYPE\n"); }
"ufloat4"       { printf("UFLOAT4_TYPE\n"); }
"ufloat8"       { printf("UFLOAT8_TYPE\n"); }
"ufloat16"      { printf("UFLOAT16_TYPE\n"); }
"ufloat32"      { printf("UFLOAT32_TYPE\n"); }
"ufloat64"      { printf("UFLOAT64_TYPE\n"); }
"ufloat128"     { printf("UFLOAT128_TYPE\n"); }

º{INT}           { printf("INTEGER: %s\n", yytext); }
{FLOAT}         { printf("FLOAT: %s\n", yytext); }
{ID}            { printf("IDENTIFIER: %s\n", yytext); }
[ \t\n]         ;  /* Ignore whitespace */
.               { printf("Unknown token: %s\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
