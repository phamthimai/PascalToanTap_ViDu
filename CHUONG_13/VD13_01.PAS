Program Danh_Sach_Mang;
Uses Crt;
CONST
	SiSo = 5;
TYPE
	Chuoi   = String[24];
   HocSinh = RECORD
   	HoTen  :Chuoi;
      DiemTb : Real;
   End;
   DanhSach = Array[1..Siso] Of HocSinh;
VAR
	Lop  : DanhSach;
   OK   : Char;
   Chon : Byte;
(************************)
	Procedure KhoiTaoDS(Var Lop : DanhSach);
   Var
   	i : Integer;
   Begin
   	For i := 1 To SiSo Do
      	Begin
         	Lop[i].HoTen :='';
            Lop[i].DiemTb := 0.00;
         End;
   End;

(************************)

	Procedure NhapDs(Var Lop: DanhSach);
   Var
   	i : Integer;
   Begin
   	ClrScr;
   	Writeln('NHAP DU LIEU CHO DANH SACH');
      Writeln('--------------------------');
      Writeln;
      For i := 1 To Siso Do
      	With Lop[i] Do
         	Begin
            	Write('-Ho ten: ');
               Readln(Hoten);
               Write('-Diem trung binh: ');
               Readln(DiemTb);
            End;
   End;

(************************)

	Procedure XemDS(Lop : DanhSach);
   Var
   	No : Integer;
   Begin
		ClrScr;
      Writeln('XEM DANH SACH');
      Writeln('-------------');
      Writeln;
      No := 1;
      Repeat
      	Writeln('-Hoc sinh      : ',No:2,' la: ',Lop[No].HoTen);
         Writeln('-Diem trung binh: ',Lop[No].DiemTb:2:2);
         No := No + 1;
         Writeln;
         Writeln('   Bam <Enter> de xem tiep');
         Readln;
      Until (Lop[No].HoTen='') Or (No=Siso+1);
      Writeln;
      Writeln('-Toan bo danh sach co: ',No-1,' hoc sinh');
   End;

(************************)
   Procedure TimDS(Lop : DanhSach);
   Var
   	No       : Integer;
      Tim_Ten  : Chuoi;
      Tim_Thay : Boolean;
   Begin
   	ClrScr;
      Writeln('TIM HOC SINH THEO TEN');
      Writeln('---------------------');
      Writeln;
      No := 1;
      Tim_Thay := False;
      Writeln('-Ten hoc sinh can tim: ');
      Readln(Tim_Ten);
      While (No <= SiSo) And (Not Tim_Thay) Do
      	Begin
         	If Lop[No].HoTen = Tim_Ten Then
            	Begin
                  Writeln('-La hoc sinh co so thu tu No= ',No);
                  Writeln('-Co diem hoc tap trung binh = ',Lop[No].DiemTb:2:2);
                  Tim_thay := True;
               End
            Else
            	No := No + 1;
         End;
      If (Not Tim_Thay) Then
      	Writeln('-Hoc sinh nay khong co trong danh sach');
      Readln
   End;

(************************)

BEGIN
	ClrScr;
   KhoiTaoDS(Lop);
   OK :='C';
   While (UpCase(OK)='C') Do
   	Begin
      	Writeln('                    MENU    ');
         Writeln('                --*******--');
         Writeln;
         Writeln('               1-Nhap so lieu ');
         Writeln('               2-Xem danh sach ');
         Writeln('               3-Tim danh sach ');
         Writeln;
         Writeln('Chon cong viec nao, go so cua viec do');
         Write('                 - Go vao so: ');
         Readln(Chon);
         While (Chon < 1) And (Chon > 3) Do
         	Begin
            	Writeln('     Khong dung, ban chon lai');
               Write('           - Go vao so: ');
               Readln(Chon);
            End;
            Case chon of
            	1 : NhapDS(Lop);
               2 : XemDS(Lop);
               3 : TimDS(Lop);
            End;
         Write('          Co tiep tuc nua khong? C/K: ');
         Readln(OK);
      End;
END.
