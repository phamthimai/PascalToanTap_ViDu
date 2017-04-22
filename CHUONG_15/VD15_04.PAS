Program Doc_Tap_Tin;
Label tt;
Var
	I,k : Integer;
   Ten : String;
   f   : File Of Integer;
Begin
	Writeln('THU TUC READ, DOC DU LIEU TU TAP TIN TREN DIA');
   Writeln('---------------------------------------------');
   tt:Writeln;
   k := 0;
   Write('-Cho biet ten tap tin: ');
   Readln(Ten);
   Assign(f,Ten);
   {$I-}
   Reset(f);
   If IOResult <> 0 Then
   	Begin
      	Writeln;
         Writeln('         Khong co tap tin nay');
         Write('         Bam <Enter> de tim lai: ');
         Readln;
         Goto tt;
      End;
   While Not EOF(f) Do
   	Begin
   		Read(f,i);
         Writeln(i);
         k := k+1;
      End;
   Writeln;
   Writeln('Tap tin: ',ten,' co: ',k:3,' phan tu');
   Write('       Bam <Enter>...');
   Readln;
   Close(f);
End.