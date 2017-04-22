Program Nhap_xuat;
	TYPE
   	Nhanvien = RECORD
      	Holot:String[17];
         Ten  :String[7];
         Tuoi :18..60;
         Donvi,Chucvu:String[20];
         Luong:Real;
      END;
   VAR
   	NV1,NV2:Nhanvien;
Begin
	Writeln('NHAP XUAT DU LIEU VOI LENH WITH');
   Writeln('-------------------------------');
   Writeln('+Nhap du lieu cua nhan vien 1');
   WITH NV1 DO
   	Begin
      	Write('-Ho lot: ');
         Readln(Holot);
         Write('-Ten: ');
         Readln(Ten);
         Write('-Tuoi: ');
         Readln(Tuoi);
         Write('-Don vi: ');
         Readln(Donvi);
         Write('-Chuc vu: ');
         Readln(Chucvu);
         Write('-Bac luong: ');
         Readln(Luong);
      End;
   Writeln('+Nhap du lieu cua nhan vien 2');
   WITH NV2 DO
   	Begin
      	Write('-Ho lot: ');
         Readln(Holot);
         Write('-Ten: ');
         Readln(Ten);
         Write('-Tuoi: ');
         Readln(Tuoi);
         Write('-Don vi: ');
         Readln(Donvi);
         Write('-Chuc vu: ');
         Readln(Chucvu);
         Write('-Bac luong: ');
         Readln(Luong);
      End;
   Writeln('+Xuat du lieu cua nhan vien 1');
   WITH NV1 DO
   	Begin
      	Writeln('-Ho lot: ',Holot);
         Writeln('-Ten: ',Ten);
         Writeln('-Tuoi: ',Tuoi);
         Writeln('-Don vi: ',Donvi);
         Writeln('-Chuc vu: ',Chucvu);
         Writeln('-Bac luong: ',Luong);
      End;
   Writeln('+Xuat du lieu cua nhan vien 2');
   WITH NV1 DO
   	Begin
      	Writeln('-Ho lot: ',Holot);
         Writeln('-Ten: ',Ten);
         Writeln('-Tuoi: ',Tuoi);
         Writeln('-Don vi: ',Donvi);
         Writeln('-Chuc vu: ',Chucvu);
         Writeln('-Bac luong: ',Luong);
      End;
   Readln
End.