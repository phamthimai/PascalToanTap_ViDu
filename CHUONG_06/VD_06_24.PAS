Program Giai_thua;
Var
	n,i:Integer;
   Function gt(m:Integer):Integer;
   Var
   	x,y:Integer;
   Begin
   	If m = 0 Then
      	gt:=1
      Else
      	Begin
         	x:=m - 1;
            y:= gt(x);
            gt:=m * y;
         End;
   End;
BEGIN
	Writeln('TINH N! DUNG DE QUY');
   Writeln('-------------------');
   Write('-Nhap N = ');
   Readln(n);
   Writeln('+Giai thua cua ',n,' = ',gt(n));
   Writeln;
   Write('   Bam phim <Enter> de ket thuc');
   Readln
End.