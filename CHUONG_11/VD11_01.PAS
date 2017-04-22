Program Kieu_Tuong_minh;
	TYPE
   	Ly_Lich = RECORD
      	Ma_so: Integer;
         HoLot :String[17];
         Ten:String[7];
         Ngay_sinh: 1..31;
			Thang_sinh:1..12;
			Nam_sinh:1900..2000;
         QueQuan,Diachi:String[20];
         Donvi,Chucvu:String[15];
         Luong:Real;
         Giadinh:String[5];
      END;
   VAR
   	A:Array[1..200] Of Ly_Lich;
      i,n:Integer;
Begin
	Writeln('DINH NGHIA KIEU TUONG MINH');
   Writeln('NHAP DU LIEU TU BAN PHIM');
   Writeln('--------------------------');
   Write('-Can nhap ly lich may nguoi: ');
   Readln(n);
   For i:=1 To N Do
   	Begin
	      Write('-Ma so nhan vien: ');
   	   Readln(a[i].ma_so);
      	Write('-Holot: ');
      	Readln(a[i].holot);
      	Write('-Ten: ');
      	Readln(a[i].Ten);
      	Write('-Ngay sinh: ');
      	Readln(a[i].Ngay_sinh);
      	Write('-Thang sinh: ');
      	Readln(a[i].Thang_sinh);
         Write('-Nam sinh: ');
      	Readln(a[i].Nam_sinh);
      	Write('-Que quan: ');
      	Readln(a[i].Quequan);
      	Write('-Dia chi: ');
      	Readln(a[i].Diachi);
			Write('-Don vi: ');
      	Readln(a[i].Donvi);
      	Write('-Chuc vu: ');
      	Readln(a[i].Chucvu);
      	Write('-Bac luong: ');
      	Readln(a[i].Luong);
      	Write('-Da co gia dinh chua: ');
      	Readln(a[i].Giadinh);
   	End;
   Writeln;
   Writeln('XUAT DU LIEU RA MAN HINH');
   Writeln('------------------------');
	For i:=1 To N Do
     	Begin
         Writeln('+Ma so nhan vien: ',a[i].ma_so);
      	Writeln('+Holot: ',a[i].holot);
      	Writeln('+Ten: ',a[i].Ten);
      	Writeln('+Ngay sinh: ',a[i].Ngay_sinh);
      	Writeln('+Thang sinh: ',a[i].Thang_sinh);
         Writeln('+Nam sinh: ',a[i].Nam_sinh);
      	Writeln('+Que quan: ',a[i].Quequan);
      	Writeln('+Dia chi: ',a[i].Diachi);
      	Writeln('+Don vi: ',a[i].Donvi);
      	Writeln('+Chuc vu: ',a[i].Chucvu);
      	Writeln('+Bac luong: ',a[i].Luong:8:2);
      	Writeln('+Da co gia dinh chua: ',a[i].Giadinh);
      End;
   Readln;
End.