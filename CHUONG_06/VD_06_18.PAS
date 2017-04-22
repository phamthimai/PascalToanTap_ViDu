Program Bien_rieng;
   (*-------------------*)
	Procedure Chuvi;
  	Var
  		dai,rong,p:Integer;
  	Begin
		Write('-Nhap chieu dai: ');
      Readln(dai);
      Write('-Nhap chieu rong: ');
      Readln(rong);
      P:=2*(dai+rong);
      Writeln('+Chu vi hinh chu nhat = ',p);
      Writeln;
  	End;
   (*-------------------*)
   Procedure Dientich;
   Var
   	s:Integer;
   Begin
   	s:=dai * rong;
      Writeln('+Dien tich hinh chu nhat= ',s);
   End;
BEGIN
	Writeln('TINH CHU VI DIEN TICH');
   Writeln('Su dung bien rieng');
   Readln
END.