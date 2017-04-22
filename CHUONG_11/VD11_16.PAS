Program Tinh_luong;
	TYPE
   	CheDo = (HopDong, BienChe);
      HoSo = RECORD
      	Holot:String;
         Ten : String;
         Tuoi: 18..60;
         CASE Loai : CheDo Of
         	HopDong:(NgayKy,NgayHetHan:String[12];
				                     Luong:LongInt);
            BienChe:(NgayVao:String[12];
                     Chucvu:String[20];
                     BacLuong:LongInt);
         END;
   VAR
   	A,B:HoSo;

   {---------------------}
	Procedure InLuong(M:Hoso);
   	Begin
      	With M Do
         	If Loai=BienChe Then
            	Begin
            		Writeln('-Ho va ten: ',Holot,' ',Ten,' ',Tuoi,' tuoi');
                  Writeln('-Loai nhan vien: Bien che');
                  Writeln('-Ngay vao bien che: ',Ngayvao);
               	Writeln('-Chuc vu: ',Chucvu);
						Writeln('-Tien luong thang: ',BacLuong,' dong');
               End
            Else
            	Begin
                  Writeln('-Ho va ten: ',Holot,' ',Ten,' ',Tuoi,' tuoi');
                  Writeln('-Loai nhan vien: Hop dong cong nhat');
               	Writeln('-Ngay ky hop dong: ',NgayKy);
                  Writeln('-Ngay het han hop dong: ',NgayHetHan);
                  Writeln('-Tien luong duoc linh: ',Luong,' dong/ngay');
               End;
      End;

BEGIN
	With A Do
   	Begin
      	Holot:='Nguyen Van';
         Ten:='Xuan';
         Tuoi:=30;
         NgayVao:='1/1/1990';
         Loai:=BienChe;
         ChucVu:='Truong Phong';
         BacLuong:=500000;
      End;
   With B Do
      Begin
      	Holot:='Tran Van';
         Ten:='Ha';
         Tuoi:=25;
         Ngayky:='1/1/1999';
         NgayHetHan:='31/12/1999';
         Loai:=HopDong;
         Luong:=30000;
      End;
   InLuong(a);
   Writeln;
   Inluong(b);
   Readln
END.