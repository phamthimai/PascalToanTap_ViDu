Program TTM;
Begin
	{$I-}
   Writeln('MINH HOA THU TUC MKDIR()');
   Writeln('   Tao thu muc moi');
   Writeln('--------------------');
   Writeln;
	If ParamCount <> 1 Then
   	Begin
      	Writeln('Tham so khong hop le');
         Halt;
      End
   Else
   	Begin
      	MkDir(ParamStr(1));
         If IOResult <> 0 Then
         	Begin
         		Writeln('Khong the tao thu muc nay vi da co');
               Halt;
            End
         Else
         	Writeln('Da tao xong thu muc moi');
      End;
End.