Program NHap_xuat_ky_tu;
Var
	x,y:Char;
Begin
	Writeln('NHAP / XUAT KY TU');
   Writeln('-----------------');
   Write('-Nhap ky tu thu nhat: ');
   Readln(x);
   Write('-Nhap ky tu thu hai: ');
   Readln(y);
   Writeln;
   Writeln('+Xuat khong co khuon dang');
   Writeln('  *Ky tu thu nhat: ',x);
   Writeln('+Xuat co khuon dang');
   Writeln('  *Ky tu thu  hai: ',y:5);
   Writeln('  *Ky tu thu  hai: ',y:-5);
   Readln
End.