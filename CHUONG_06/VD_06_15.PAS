Program Truyen_ket_hop;
Uses Crt;
Var
	n,m:Integer;
   s:LongInt;
   (*--------------*)
   Procedure Tong_bp(x,y:Integer; Var Tong:LongInt);
   Var
      i:Integer;
   Begin
   	Tong:=0;
      For i:= x To y Do
      	Tong:= Tong + (i * i);
   End;
BEGIN
	ClrScr;
	Writeln('        TRUYEN THAM SO KET HOP');
   Writeln('Tinh tong binh phuong tu so N den so M');
   Writeln('--------------------------------------');
   Write('-Tinh tu so: ');
   Readln(n);
   Write('-Tinh den so: ');
   Readln(m);
   s:=0;
   If n < m Then
   	Tong_bp(n,m,s)
   Else
      Tong_bp(m,n,s);
   Writeln;
   Writeln('+Tong binh phuong tu ',n,' den ',m,' la: ',S);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.