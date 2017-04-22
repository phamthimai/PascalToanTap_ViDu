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
	Writeln('  PHEP GAN BAN GHI');
   Writeln('Dung thu tuc MOVE();');
	Writeln('-------------------');
	Nv1.Holot:='Nguyen Van';
	Nv1.Ten:='Xuan';
	Nv1.Tuoi:=30;
   MOVE(Nv1,Nv2,Sizeof(Nhanvien));
   Writeln;
   Writeln(Nv1.Holot,' ',Nv1.Ten,' ',Nv1.Tuoi,' tuoi');
   Writeln(Nv2.Holot,' ',Nv2.Ten,' ',Nv2.Tuoi,' tuoi');
   Readln
End.