Program TMHH;
Var
	s : String;
   d : Byte;
Begin
	Writeln('MINH HOA THU TUC GETDIR()');
   Writeln('Lay ten thu muc lam viec');
   Writeln('-------------------------');
   Writeln;
   {$I-}
   If ParamCount = 0 Then
   	d :=0
   Else
   	Begin
      	If Pos(ParamStr(1),'a:A:') <> 0 Then
         	d := 1;
         If Pos(ParamStr(1),'b:B:') <> 0 Then
         	d := 2;
         If Pos(ParamStr(1),'c:C:') <> 0 Then
         	d := 3;
         If Pos(ParamStr(1),'d:D:') <> 0 Then
         	d := 4;
      End;
   GetDir(d,s);
   Writeln('O dia va thu muc hien hanh la: ',s);
End.