Program Tham_so;
Var
	so1,so2:Integer;
   (*-------------*)
   Procedure Doi_cho(x,y:Integer);
   Var
   	tam:Integer;
   Begin
   	tam:=x;
      x:=y;
      y:=tam;
      Writeln('+So thu nhat = ',x);
      Writeln('+So thu hai  = ',y);
      Writeln;
   End;
BEGIN
	Writeln('THAM SO HINH THUC VA THAM SO THUC');
   Writeln('---------------------------------');
   Write('-Nhap so thu nhat = ');
   Readln(so1);
   Write('-Nhap so thu hai  = ');
   Readln(so2);
   Writeln;
   Writeln('   SAU KHI DOI CHO');
   Writeln;
   Doi_cho(so1,so2);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc');
   Readln
END.