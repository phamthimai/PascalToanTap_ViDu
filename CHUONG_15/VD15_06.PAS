Program Xoa_Tap_tin;
Label tt;
Var
	f : File Of String;
	Ten : String;
Begin
	Writeln('THU TUC ERASE, XOA TAP TIN');
   Writeln('--------------------------');
   tt:Writeln;
   Write('-Cho biet ten tap tin can xoa: ');
   Readln(Ten);
   Assign(f,Ten);
   {$I-}
   Reset(f);
   If IOResult <> 0 Then
   	Begin
      	Writeln;
         Writeln('  Khong co tap tin: ',Ten,' tren dia');
         Write('        Bam <Enter>... de tim lai ');
         Readln;
         Goto tt;
      End;
   Erase(f);
   Writeln;
   Write('  Da xoa tap tin, bam <Enter>. . . ');
   Readln;
   Close(f);
End.
