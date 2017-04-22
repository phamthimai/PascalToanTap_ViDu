Program Nhap_chuoi;
Var
   Ten1,ten2  : String[7];
   Chuoi:String[20];
Begin
	Writeln('Minh hoa thu tuc Nhap / Xuat chuoi');
   Writeln('            +++++++++++++');
   Writeln('+NHAP TREN CUNG MOT DONG');
   Write('	-Cho biet ten 2 nguoi: ');
   Readln(ten1,ten2);
   Writeln('            +++++++++++++');
   Writeln('+NHAP KHAC DONG');
   Writeln;
   Write('	-Cho biet ten nguoi thu nhat: ');
   Readln(ten1);
   Write('	-Cho biet ten nguoi thu hai: ');
   Readln(Ten2);
   Writeln('            +++++++++++++');
   Writeln('+XUAT TREN CUNG MOT DONG');
   Writeln('-Ten cua 2 nguoi la= ',ten1,' va ',ten2);
   Writeln;
   Writeln('            +++++++++++++');
   Writeln('+XUAT KHAC DONG');
   Writeln(ten1);
   Writeln(ten2);
   Writeln('            +++++++++++++');
   Writeln('+XUAT THEO KHUON DANG');
   Chuoi:='TURBO PASCAL 7.0';
   Writeln('	-Chinh xat le phai');
   Writeln(chuoi:20);
   Writeln;
   Writeln('	-Chinh xat le trai');
   Writeln(chuoi:-20);
   Readln
End.
