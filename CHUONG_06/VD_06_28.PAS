Program So_Fibonacci;
Var
	n:Integer;
   FUNCTION Fibo(m:Integer):Integer;
   Begin
   	If m <= 1 Then
      	Fibo:=1
      Else
      	Fibo:=Fibo(m-1) + Fibo(m-2);
   End;
BEGIN
	Writeln('SO FIBONACCI CUA SO N');
   Writeln('Dung dinh nghia de quy');
   Writeln('---------------------');
	Write('-Nhap so N= ');
   Readln(n);
   Writeln('+Neu N= ',n,' thi so Fibonacci la ',Fibo(n));
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.