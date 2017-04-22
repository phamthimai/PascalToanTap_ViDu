Program Nhap_xuat;
	Label
   	l;
	TYPE
   	Nhanvien = RECORD
      	Holot:String[17];
         Ten  :String[7];
         Tuoi :18..60;
         Donvi,Chucvu:String[20];
         Luong:Real;
      END;
   VAR
   	X:Nhanvien;
      i:Byte;
      Tiep:Char;
   Procedure Nhap(Var k:Byte;Var Nv:Nhanvien);
   	Begin
      	With Nv Do
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
      End;
   {------------------------}
   Procedure Xuat(k:Byte;Nv:Nhanvien);
   	Begin
   		WITH NV DO
   			Begin
      			Writeln('-Ho lot: ',Holot);
         		Writeln('-Ten: ',Ten);
         		Writeln('-Tuoi: ',Tuoi);
         		Writeln('-Don vi: ',Donvi);
         		Writeln('-Chuc vu: ',Chucvu);
         		Writeln('-Bac luong: ',Luong:8:2);
            End;
      End;

Begin
	Tiep:=' ';
	Writeln('NHAP XUAT DU LIEU VOI LENH WITH');
   Writeln('Su dung cac thu tuc Nhap / Xuat');
   Writeln('-------------------------------');
   l:Write('+Nhap nhan vien nao: ');
   Readln(i);
   Writeln;
   Nhap(i,x);
   Writeln;
   Writeln('+Du lieu ve nhan vien thu: ',i);
   Xuat(i,x);
   Writeln;
   Write('-Thuc hien tiep khong (C/K): ');
   Readln(Tiep);
   If UpCase(Tiep)='C' Then
   	Goto l
End.