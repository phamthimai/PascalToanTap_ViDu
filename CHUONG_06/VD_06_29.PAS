Program So_Fibonacci;
Var
	n:Integer;
   FUNCTION Fibo(m:Integer):Integer;
   Var
   	i,tam,a,b:Integer;
   Begin
   	a:=1;
      b:=1;
      For i:=2 To m Do
      	Begin
         	tam:=b;
            b:=a + b;
            a:=tam;
         End;
      Fibo:=b;
   End;
BEGIN
	Writeln('SO FIBONACCI CUA SO N');
   Writeln('Khong dung dinh nghia de quy');
   Writeln('----------------------------');
	Write('-Nhap so N= ');
   Readln(n);
   Writeln('+Neu N= ',n,' thi so Fibonacci la ',Fibo(n));
   Writeln;
   Write('   Bam phim <Enter> de ket thuc');
   Readln
END.