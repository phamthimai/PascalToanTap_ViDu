Program Vong_lap_While;
Var
	i:Integer;
   so:array[1..5] Of Real;
   tong:Real;
Begin
	Writeln('VONG LAP WHILE . . . DO');
   Writeln('-----------------------');
   tong:=0;
   i:=1;
   Write('-Nhap so thu: ',i,' = ');
   Readln(so[i]);
   While (so[i] <>0 ) and (i < 5) Do
   	Begin
      	i:=i+1;
         Write('-Nhap so thu: ',i,' = ');
         Readln(so[i]);
      End;
   for i:=1 To 5 Do
   tong:=tong+so[i];
   Writeln('+Tong cua 5 so vua nhap = ',tong:0:2);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.