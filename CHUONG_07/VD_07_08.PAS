Program Tinh_luong;
CONST
	Ten:Array[0..6] Of String =('Thu Hai','Thu Ba',
	'Thu Tu','Thu Nam','Thu Sau','Thu Bay','Chu Nhat');
TYPE
	TenNgay=(ThuHai,ThuBa,ThuTu,ThuNam,
	           ThuSau,ThuBay,ChuNhat);
Var
	Ngay:TenNgay;
   Luong,Gio,Tien:Real;
   HoTen:String;
Begin
	Writeln('TINH LUONG TUAN THEO SO GIO LAM VIEC');
   Writeln('------------------------------------');
   Tien:=0.0;
   Write('-Ho va ten: ');
   Readln(HoTen);
   Write('-Tien luong 1 gio: ');
   Readln(Luong);
   For Ngay:=ThuHai To ChuNhat Do
   	Begin
   		Write('-So gio lam viec cua ngay ',Ten[Ord(Ngay)],' : ');
         Readln(Gio);
         Case Ngay Of
         	ChuNhat:Gio:=2*gio;
            ThuBay: Gio:=1.5 * gio;
         End;
      	Tien:=Tien + gio * Luong;
      End;
   Writeln;
   Writeln('+Ong (Ba) ',HoTen);
   Writeln('+Tien luong trong tuan = ',tien:10:2,' dong');
   Writeln;
   Write('    Bam phim <Enter> de ket thuc ');
   Readln
End.
