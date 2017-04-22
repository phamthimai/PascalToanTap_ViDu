Program Doc_Tap_Tin;
Var
	f            : File;
   Filename     : String;
   NumRead : Integer;
   Buffer  : Array[1..20] Of Byte;
   k       : Byte;
   Row     : Integer;
{------------------------------------}
	Function Digit(N : Byte): String;
   Begin
   	If N < 10 Then
      	Digit :=Chr(Ord('0')+ N)
      Else
      	Digit := Chr(55 + N);
   End;
{------------------------------------}
	Function Hex(N : Byte):String;
   Begin
   	Hex := Digit(N Div 16) + Digit(N Mod 16);
   End;
{------------------------------------}
BEGIN
	Writeln('DOC TAP TIN VAN BAN');
   Writeln('-------------------');
   Writeln;
   Write('-Ten tap tin can doc: ');
   Readln(Filename);
   Assign(f,Filename);
   Reset(f,20);
   Row := 0;
   Repeat
   	BlockRead(f,Buffer,1,NumRead);
      For k := 1 To 20 Do
      	Write(' ',Hex(Buffer[k]):2,' ');
      Inc(Row);
      If (Row Mod 25) = 24 Then
      	Readln;
   Until NumRead = 0;
   Writeln;
   Write('Da doc xong, bam <Enter>... ');
   Readln;
   Close(f);
End.