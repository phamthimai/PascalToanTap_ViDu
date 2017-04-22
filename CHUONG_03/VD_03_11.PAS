Program Xuat_so_thuc;
Var
c:Real;
Begin
	Writeln('CAC HAM TOAN HOC KIEU SO THUC');
   Writeln('-----------------------------');
   c:=Round(3.141593);
   Writeln('Round(3.141592) --------> ',c:13:11);
   c:=trunc(3.141592);
   Writeln('Trunc(3.141592) --------> ',c:13:11);
   Writeln('Frac(3.141592)  --------> ',Frac(3.141592):13:11);
   Writeln('Abs(-5.5)       --------> ',Abs(-5.5):13:11);
   c:=Sqr(12);
   Writeln('Sqr(12)         --------> ',c:13:9);
   c:=Sqrt(144);
   Writeln('Sqrt(144)       --------> ',c:13:10);
   Writeln('Ln(2)           --------> ',Ln(2):13:11);
   Writeln('Exp(2)          --------> ',Exp(2):13:11);
   Writeln('Sin(45*pi/180)  --------> ',Sin(45*pi/180):13:11);
   Writeln('Cos(45*pi/180)  --------> ',Cos(45*pi/180):13:11);
   Writeln('Arctan(45*pi/180) ------> ',Arctan(45*pi/180):13:11);
   Writeln('Tri cua Pi      --------> ',Pi:13:11);
   Writeln('  Bam phim bat ky de ket thuc');
   Readln
End.