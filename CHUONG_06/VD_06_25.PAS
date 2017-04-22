Program Giai_thua;
Var
	n,i:Integer;
   Function gt(m:Integer):Integer;
   Begin
   	If m = 0 Then
      	gt:=1
      Else
			gt:=m * gt(m - 1);
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