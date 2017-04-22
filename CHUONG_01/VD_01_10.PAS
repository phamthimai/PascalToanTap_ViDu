Program Khuon_dang;
Var
   ky_tu :Char;
   chuoi :string[24];
   so_nguyen:Integer;
   so_thuc:Real;
Begin
     Writeln('CHUONG TRINH XUAT DU LIEU THEO KHUON DANG');
     Write('-Nhap mot ky tu = ');
     Readln(ky_tu);
     Write('-Nhap ho ten = ');
     Readln(chuoi);
     Write('-Nhap mot so nguyen = ');
     Readln(so_nguyen);
     Write('-Nhap mot so thuc = ');
     Readln(so_thuc);
     Writln;
     Writeln('------------------------------');
     Writeln('XUAT DU LIEU RA MAN HINH');
     Writeln(ky_tu);
     Writeln(chuoi);
     Writeln(so_nguyen);
     Writeln(so_thuc);
     Readln
End.