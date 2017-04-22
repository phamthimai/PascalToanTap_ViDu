Program Cac_phep_toan_quan_he;
TYPE
	Ngay=(ThuHai,ThuBa,ThuTu,ThuNam,ThuSau,ThuBay,ChuNhat);
Var
	Thu:Ngay;
Begin
   Writeln('CAC PHEP TOAN QUAN HE TRONG KIEU LIET KE');
   Writeln('----------------------------------------');
   Writeln;
   Write('ThuHai = ThuBa ----> ');
  	Write(Ord(ThuHai)=Ord(ThuBa));
   Writeln;
   Write('ThuHai < ThuBa ----> ');
  	Write(Ord(ThuHai) < Ord(ThuBa));
   Writeln;
   Write('ThuHai > ThuBa ----> ');
  	Write(Ord(ThuHai) > Ord(ThuBa));
   Writeln;
   Write('ThuHai <= ThuBa ----> ');
  	Write(Ord(ThuHai) <= Ord(ThuBa));
   Writeln;
   Write('ThuHai >= ThuBa ----> ');
  	Write(Ord(ThuHai) >= Ord(ThuBa));
   Writeln;
   Write('ThuHai <> ThuBa ----> ');
  	Write(Ord(ThuHai) <> Ord(ThuBa));
   Writeln;
   Write('Bam phim <Enter> de ket thuc ');
   Readln
End.