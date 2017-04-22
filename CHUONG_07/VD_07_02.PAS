Program Xuat_gia_tri;
TYPE
	Ngay=(ThuHai,ThuBa,ThuTu,ThuNam,ThuSau,ThuBay,ChuNhat);
Var
	Thu:Ngay;
Begin
   Writeln('KIEU LIET KE LA KIEU DEM DUOC');
   Writeln(' Cac gia tri cua kieu liet ke');
   Writeln('------------------------------');
   Writeln;
   For Thu:=ThuHai To ChuNhat Do
		Case Thu Of
			ThuHai	:Writeln('Thu Hai');
         ThuBa		:Writeln('Thu Ba');
         ThuTu		:Writeln('Thu Tu');
         ThuNam	:Writeln('Thu Nam');
         ThuSau	:Writeln('Thu Sau');
         ThuBay	:Writeln('Thu Bay');
         ChuNhat	:Writeln('Chu Nhat');
      End;
   Writeln;
   Writeln;
   Write('Bam phim <Enter> de ket thuc ');
   Readln
End.