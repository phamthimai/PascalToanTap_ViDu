Program Chong_dia_vang;
Type
	chong=String;
Var
	n,m:Integer;
   PROCEDURE ChuyenDia(x,y:Chong);
   Begin
   	Writeln('-Lan ',m,': Chuyen 1 dia tu chong ',x,' sang chong ',y);
      m:=m+1;
   End;
   PROCEDURE DoiChong(n:Integer;A,B,C:Chong);
   Begin
   	If n > 0 Then
      	Begin
         	DoiChong(n-1,A,C,B);
            ChuyenDia(A,C);
            DoiChong(n-1,B,A,C)
         End;
   End;
BEGIN
	m:=1;
	Write('-So dia trong chong 1: ');
   Readln(n);
   DoiChong(n,'1','2','3');
   Writeln;
   Writeln('+Neu co ',n,' dia thi can ',(m-1),' lan di chuyen dia');
   Readln
END.