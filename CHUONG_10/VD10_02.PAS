Program Kieu_Bien_Mang;
Type
	Ngay = (Hai,Ba,Bon,Nam,Sau,Bay);
Const
	Luong : Array[Ngay] Of Integer =(10000, 10000, 10000,15000,15000,20000);
   Ten_ngay:Array[Ngay] Of String[9]=('Thu Hai','Thu Ba','Thu Tu','Thu Nam',
   			'Thu Sau','Thu Bay');
Var
	Gio:Array[Ngay] Of Real;
   Tong:Real;
   Hoten:String[24];
   Ngay_LV:Ngay;
Begin
	Writeln('DINH NGHIA KIEU, KHAI BAO BIEN TUONG MINH');
   Writeln('           Tinh luong tuan');
   Writeln('            --------------');
   Write('-Ho va ten: ');
   Readln(Hoten);
   Tong:=0.0;
   For Ngay_LV:= Hai To Bay Do
   	Begin
      	Write('-Gio lam viec trong ngay: ',Ten_ngay[Ngay_LV]:9,' = ');
         Readln(Gio[Ngay_LV]);
         Tong:=Tong+Gio[Ngay_LV] * Luong[Ngay_LV];
      End;
   Writeln('+Luong cua Ong/Ba: ',Hoten,' trong tuan la: ',tong:10:2,' dong');
   Writeln;
   Writeln('       Bam phim bat ky de ket thuc');
   Readln
End.