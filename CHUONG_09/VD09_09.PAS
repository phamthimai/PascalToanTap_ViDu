Program Phep_cong_chuoi;
Var
   chuoi1,chuoi2,chuoi3,chuoi4:String;
Begin
	Writeln('     Phep cong chuoi');
   Writeln('      +++++++++++++');
   Write('-Nhap chuoi thu nhat: ');
   Readln(Chuoi1);
   Write('-Nhap chuoi thu hai : ');
   Readln(Chuoi2);
   Write('-Nhap chuoi thu ba  : ');
   Readln(Chuoi3);
   Writeln;
   Writeln('	+Dung toan tu cong ( + )');
   Chuoi4 := Chuoi1 + Chuoi2 + Chuoi3;
   Writeln('		',chuoi4,'	hoac');
   Chuoi4:=Chuoi1 + ' ' + Chuoi2 + ' ' + Chuoi3;
   Writeln('		',Chuoi4);
   Writeln;
   Writeln('	+Dung ham CONCAT');
   Chuoi4 := Concat(Chuoi1, Chuoi2, Chuoi3);
   Writeln('		',Chuoi4,'	hoac');
   Chuoi4 := Concat(Chuoi1,' ', Chuoi2,' ', Chuoi3);
   Writeln('		',Chuoi4);
   Writeln;
   Writeln('           Bam phim <Enter> ky de ket thuc');
   Readln
End.
