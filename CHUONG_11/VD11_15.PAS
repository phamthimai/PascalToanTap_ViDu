Program Phep_gan;
	TYPE
   	NhanVien = RECORD
      	Holot : String[17];
         Ten   : String[7];
         Tuoi  : 18..60;
      END;
   VAR
   	Nv1, Nv2 : Nhanvien;
Begin
	Writeln('   PHEP GAN BAN GHI');
   Writeln('Gan bang cau lenh With');
	Writeln('----------------------');
   With Nv1 Do
   	Begin
			Holot:='Nguyen Van';
			Ten:='Xuan';
			Tuoi:=30;
      End;
   With Nv1 Do
   	Writeln('+Nhan vien thu nhat la: ',Holot,' ',Ten,' ',Tuoi,' Tuoi');
   With Nv2 Do
   	Begin
			Holot:='Bui Thi';
			Ten:='Thu';
			Tuoi:=25;
      End;
   With Nv2 Do
   	Writeln('+Nhan vien thu hai la : ',Holot,' ',Ten,' ',Tuoi,' Tuoi');
   Writeln;
   Writeln('GAN DU LIEU CHO NHAU');
   Writeln('--------------------');
   WITH NV1 Do
		WITH NV2 Do {Gan ban ghi 2 cho ban ghi 1}
      	Writeln('+Nhan vien thu nhat la: ',Holot,' ',Ten,' ',Tuoi,' Tuoi');
   WITH NV2 Do
		WITH NV1 Do {Gan ba3n ghi 1 cho ban ghi 2 }
   		Writeln('+Nhan vien thu hai la : ',Holot,' ',Ten,' ',Tuoi,' Tuoi');
   Readln
End.