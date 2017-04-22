Program Uoc_so_chung_lon_nhat;
Var
	so1,so2,s:Integer;
   FUNCTION uscln(x,y:Integer):Integer;
   Var
   	sodu:Integer;
  	Begin
   	While y <> 0 Do
      	Begin
         	sodu:=x Mod y;
            x:=y;
            y:=sodu;
         End;
     	uscln:= x ;
   End;
BEGIN
	Writeln('TIM USCLN KHONG DUNG DE QUY');
   Writeln('---------------------------');
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

