Program XTM;
Begin
	{$I-}
   Writeln('MINH HOA THU TUC RMDIR()');
   Writeln('      Xoa thu muc');
   Writeln('------------------------');
   Writeln;
   If ParamCount <> 1 Then
   	Begin
      	Writeln('Tham so khong hop le');
         Halt;
      End
   Else
   	Begin
      	RmDir(ParamStr(1));
         If IOResult <> 0 Then
         	Begin
         		Writeln('Sai duong dan, khong co thu muc nay');
               Writeln('hoac thu muc chua rong');
            End
         Else
         	Writeln('Da xoa thu muc ')
      End;
End.