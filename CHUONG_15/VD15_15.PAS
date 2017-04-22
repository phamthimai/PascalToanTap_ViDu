Program Doc_Tap_Tin;
Var
	f            : File;
   Filename     : String;
   NumRead : Integer;
   Buffer  : Array[1..80] Of Char;
Begin
	Writeln('DOC TAP TIN VAN BAN');
   Writeln('-------------------');
   Writeln;
   Write('-Ten tap tin can doc: ');
   Readln(Filename);
   Assign(f,Filename);
   Reset(f,80);
   Repeat
   	BlockRead(f,Buffer,1,NumRead);
      Write(Buffer);
   Until NumRead = 0;
   Writeln;
   Write('Da doc xong, bam <Enter>... ');
   Readln;
   Close(f);
End.