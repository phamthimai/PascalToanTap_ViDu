Program uscln;
Var
	so1,so2,x,y:Integer;
Begin
	Writeln('TIM UOC SO CHUNG LON NHAT CUA 2 SO');
   Writeln('----------------------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   x:=so1;
   y:=so2;
   While so1 <> so2 Do
   	If so1 > so2 Then
      	so1:=so1-so2
      Else
      	so2:=so2-so1;
   Writeln;
   Writeln('+Uoc so chung cua 2 so ',x,' va ',y,' la: ',so1);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.