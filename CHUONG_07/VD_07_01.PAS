Program Kieu_va_Bien;
TYPE
	Ngay=(ThuHai,ThuBa,ThuTu,ThuNam,ThuSau,ThuBay,ChuNhat);
Var
	Thu:Ngay;
Begin
   Writeln('KIEU LIET KE LA KIEU DEM DUOC');
   Writeln('    Tri dau tien la 0');
   Writeln('------------------------------');
   Writeln;
   Write('     ');
   For Thu:=ThuHai To ChuNhat Do
		Write(' ',Ord(Thu));
   Writeln;
   Writeln;
   Write('Bam phim <Enter> de ket thuc ');
   Readln
End.