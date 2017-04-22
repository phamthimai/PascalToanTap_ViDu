Program Hang_Kieu_Mang;
Type
	DanhSach = Array[1..14] Of String[7];
Const
	A: DanhSach=('Nam','Quoc','Son','Ha','Nam','De','Cu','Tu',
						'Nhien','Dinh','Phan','Tai','Thien','Thu');
Var
	i,k:Integer;
Begin
	Writeln('KHAI BAO HANG KIEU MANG');
   Writeln('    --------------');
   For i:=1 To 14 Do
   	Writeln('       ',A[i]);
   Writeln;
   Writeln('Bam phim bat ky de ket thuc');
   Readln
End.