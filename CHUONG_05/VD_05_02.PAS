Program Vong_lap_For;
Var
	i:Integer;
   so:array[1..5] Of Real;
   tong:Real;
Begin
	Writeln('      TINH TONG CUA 5 SO');
   Writeln('Su dung cau lenh lap For ... Do');
   Writeln('-------------------------------');
   For i:=1 To 5 Do
   	Begin
      	Write('-Nhap so thu ',i:2,' = ');
         Readln(so[i]);
      End;
	tong:=0;
   For i:=1 To 5 Do
   	tong:=tong+so[i];
	Writeln('+Tong cua 5 so = ',tong:0:2);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.