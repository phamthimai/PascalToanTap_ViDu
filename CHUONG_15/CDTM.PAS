Program CDTM;
Begin
	{$I-}
   Writeln('MINH HOA THU TUC CHDIR()');
   Writeln('  Chuyen doi thu muc');
   Writeln('----------------------');
   Writeln;
	If ParamCount <> 1 Then
   	Begin
      	Writeln('Tham so khong hop le');
         Halt;
      End
   Else
   	Begin
      	ChDir(ParamStr(1));
         If IOResult <> 0 Then
         	Writeln('Khong tim thay thu muc nay');
      End;
End.