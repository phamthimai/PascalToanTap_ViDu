Program Khai_bao_khong_tuong_minh;
Type
   hoten = String[24];
   sinhquan = String[20];
   truquan = String[20];
Var
   Holot: hoten;
   Ten  : hoten;
   Noi_sinh: sinhquan;
   Dia_chi: truquan;
Begin
   Write('-Cho biet ho lot: ');
   Readln(holot);
   Write('-Cho biet ten: ');
   Readln(Ten);
   Write('-Cho biet noi sinh: ');
   Readln(Noi_sinh);
   Write('-Cho biet dia chi: ');
   Readln(Dia_chi);
End.
