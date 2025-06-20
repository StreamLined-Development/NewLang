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
"@"             { printf("AT_SYMBOL\n"); }

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
"int1.5"        { printf("INT1_5_TYPE\n"); }
"int2"          { printf("INT2_TYPE\n"); }
"int2.5"        { printf("INT2_5_TYPE\n"); }
"int3"          { printf("INT3_TYPE\n"); }
"int3.5"        { printf("INT3_5_TYPE\n"); }
"int4"          { printf("INT4_TYPE\n"); }
"int4.5"        { printf("INT4_5_TYPE\n"); }
"int5"          { printf("INT5_TYPE\n"); }
"int5.5"        { printf("INT5_5_TYPE\n"); }
"int6"          { printf("INT6_TYPE\n"); }
"int6.5"        { printf("INT6_5_TYPE\n"); }
"int7"          { printf("INT7_TYPE\n"); }
"int7.5"        { printf("INT7_5_TYPE\n"); }
"uint8"         { printf("UINT8_TYPE\n"); }
"uint16"        { printf("UINT16_TYPE\n"); }
"uint32"        { printf("UINT32_TYPE\n"); }
"uint64"        { printf("UINT64_TYPE\n"); }
"uint128"       { printf("UINT128_TYPE\n"); }
"uint1.5"       { printf("UINT1_5_TYPE\n"); }
"uint2"         { printf("UINT2_TYPE\n"); }
"uint2.5"       { printf("UINT2_5_TYPE\n"); }
"uint3"         { printf("UINT3_TYPE\n"); }
"uint3.5"       { printf("UINT3_5_TYPE\n"); }
"uint4"         { printf("UINT4_TYPE\n"); }
"uint4.5"       { printf("UINT4_5_TYPE\n"); }
"uint5"         { printf("UINT5_TYPE\n"); }
"uint5.5"       { printf("UINT5_5_TYPE\n"); }
"uint6"         { printf("UINT6_TYPE\n"); }
"uint6.5"       { printf("UINT6_5_TYPE\n"); }
"uint7"         { printf("UINT7_TYPE\n"); }
"uint7.5"       { printf("UINT7_5_TYPE\n"); }

"float2"        { printf("FLOAT2_TYPE\n"); }
"float4"        { printf("FLOAT4_TYPE\n"); }
"float8"        { printf("FLOAT8_TYPE\n"); }
"float16"       { printf("FLOAT16_TYPE\n"); }
"float32"       { printf("FLOAT32_TYPE\n"); }
"float64"       { printf("FLOAT64_TYPE\n"); }
"float128"      { printf("FLOAT128_TYPE\n"); }
"float1.5"      { printf("FLOAT1_5_TYPE\n"); }
"float2"        { printf("FLOAT2_TYPE\n"); }
"float2.5"      { printf("FLOAT2_5_TYPE\n"); }
"float3"        { printf("FLOAT3_TYPE\n"); }
"float3.5"      { printf("FLOAT3_5_TYPE\n"); }
"float4"        { printf("FLOAT4_TYPE\n"); }
"float4.5"      { printf("FLOAT4_5_TYPE\n"); }
"float5"        { printf("FLOAT5_TYPE\n"); }
"float5.5"      { printf("FLOAT5_5_TYPE\n"); }
"float6"        { printf("FLOAT6_TYPE\n"); }
"float6.5"      { printf("FLOAT6_5_TYPE\n"); }
"float7"        { printf("FLOAT7_TYPE\n"); }
"float7.5"      { printf("FLOAT7_5_TYPE\n"); }
"ufloat2"       { printf("UFLOAT2_TYPE\n"); }
"ufloat4"       { printf("UFLOAT4_TYPE\n"); }
"ufloat8"       { printf("UFLOAT8_TYPE\n"); }
"ufloat16"      { printf("UFLOAT16_TYPE\n"); }
"ufloat32"      { printf("UFLOAT32_TYPE\n"); }
"ufloat64"      { printf("UFLOAT64_TYPE\n"); }
"ufloat128"     { printf("UFLOAT128_TYPE\n"); }
"ufloat1.5"     { printf("UFLOAT1_5_TYPE\n"); }
"ufloat2"       { printf("UFLOAT2_TYPE\n"); }
"ufloat2.5"     { printf("UFLOAT2_5_TYPE\n"); }
"ufloat3"       { printf("UFLOAT3_TYPE\n"); }
"ufloat3.5"     { printf("UFLOAT3_5_TYPE\n"); }
"ufloat4"       { printf("UFLOAT4_TYPE\n"); }
"ufloat4.5"     { printf("UFLOAT4_5_TYPE\n"); }
"ufloat5"       { printf("UFLOAT5_TYPE\n"); }
"ufloat5.5"     { printf("UFLOAT5_5_TYPE\n"); }
"ufloat6"       { printf("UFLOAT6_TYPE\n"); }
"ufloat6.5"     { printf("UFLOAT6_5_TYPE\n"); }
"ufloat7"       { printf("UFLOAT7_TYPE\n"); }
"ufloat7.5"     { printf("UFLOAT7_5_TYPE\n"); }

"assembly"      { printf("ASSEMBLY_KW\n"); }
"bitfield"      { printf("BITFIELD_KW\n"); }
"bits"          { printf("BITS_KW\n"); }
"privilege"     { printf("PRIVILEGE_KW\n"); }
"user"          { printf("USER_KW\n"); }
"kernel"        { printf("KERNEL_KW\n"); }
"driver"        { printf("DRIVER_KW\n"); }
"buffer"        { printf("BUFFER_KW\n"); }
"align"         { printf("ALIGN_KW\n"); }
"zeroed"        { printf("ZEROED_KW\n"); }
"readonly"      { printf("READONLY_KW\n"); }
"shared"        { printf("SHARED_KW\n"); }
"kernel_stack"  { printf("KERNEL_STACK_KW\n"); }
"physical"      { printf("PHYSICAL_KW\n"); }
"dma"           { printf("DMA_KW\n"); }
"mmio"          { printf("MMIO_KW\n"); }
"volatile"      { printf("VOLATILE_KW\n"); }
"framebuffer"   { printf("FRAMEBUFFER_KW\n"); }

{INT}           { printf("INTEGER: %s\n", yytext); }
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
