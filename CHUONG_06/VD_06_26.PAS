Program uoc_so_chung_lon_nhat;
Var
	so1,so2,s:Integer;
   FUNCTION uscln(x,y:Integer):Integer;
  	Begin
   	If y = 0 Then
      	uscln:=x
		Else
      	uscln:=uscln(y,x Mod y);
   End;
BEGIN
	Writeln('TIM USCLN BANG DE QUY');
   Writeln('---------------------');
   Write('-Nhap so thu nhat : ');
   Readln(so1);
   Write('-Nhap so thu hai  : ');
   Readln(so2);
   S:= USCLN(so1,so2);
   Writeln;
   Writeln('+Uoc so chung lon nhat cua ',so1,' va ',so2,' = ',s);
   Writeln;
   Write('  Bam phim <Enter> de ket thuc ');
   Readln
END.

