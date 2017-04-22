Program Bien_chung;
Var
	dai,rong,P,S:Integer;
   (*-------------------*)
	Procedure Chuvi;
  	Begin
      P:=2*(dai+rong);
      Writeln('+Chu vi hinh chu nhat = ',p);
      Writeln;
  	End;
   (*-------------------*)
   Procedure Dientich;
   Begin
   	s:=dai * rong;
      Writeln('+Dien tich hinh chu nhat= ',s);
      Writeln;
   End;
BEGIN
	Writeln('TINH CHU VI DIEN TICH');
   Writeln('Su dung bien chung');
   Writeln('-------------------');
   Write('-Nhap chieu dai: ');
   Readln(dai);
   Write('-Nhap chieu rong: ');
   Readln(rong);
   Writeln;
   ChuVi;
   DienTich;
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.