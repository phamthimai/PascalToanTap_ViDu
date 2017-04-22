Program Xep_loai;
Var
	loai:Char;
Begin
	Writeln('XEP LOAI HOC SINH');
   Writeln('Nhap cac ky tu a,b,c,d,e...');
	Write('-Cho biet loai: ');
   Readln(loai);
   loai:=Upcase(loai);
   If loai='A' Then
   	Writeln('Thuoc loai Xuat sac')
   Else If loai = 'B' Then
      Writeln('Thuoc loai Gioi')
	Else If loai = 'C' Then
      Writeln('Thuoc loai Kha')
   Else If loai = 'D' Then
      Writeln('Thuoc loai Trung binh')
   Else
   	Writeln('-Thuoc loai kem');
   Readln
End.