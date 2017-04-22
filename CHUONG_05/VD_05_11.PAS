Program xac_dinh_vong_lap;
Var
	i,n:Integer;
Begin
	Writeln('TRI DAU VA TRI CUOI LA CAC BIEN');
   Writeln('-------------------------------');
   Write('-Nhap so N= ');
   Readln(n);
   For i:=1 To N Do
   	Begin
      	Writeln('+Gia tri N= ',n);
         n:=n+i;
      End;
   Writeln;
   Writeln('  Bam phin <Enter> de ket thuc');
   Readln
End.