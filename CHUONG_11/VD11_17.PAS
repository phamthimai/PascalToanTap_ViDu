Program Hoc_sinh;
	CONST
   	Max = 30;
   TYPE
   	DanhSach=Array[1..Max] Of String;
      LopHoc=RECORD
         Van,Toan:Real;
         HocSinh:DanhSach;
      END;
   VAR
   	Lop:LopHoc;
      i,n:Integer;
Begin
	Writeln('TRUONG CUA BAN GHI CO CAU TRUC MANG');
   Writeln('-----------------------------------');
   Writeln;
   Writeln('	NHAP DU LIEU');
   Writeln;
	Write('-Co bao nhieu hoc sinh: ');
   Readln(n);
	For i:=1 To n Do
			Begin
         	Write('-Ho ten: ');
            Readln(Lop.Hocsinh[i]);
            Write('-Diem Van: ');
            Readln(Lop.Van);
            Write('-Diem Toan: ');
            Readln(Lop.Toan);
			End;
   Writeln;
   Writeln('	XUAT DU LIEU');
   Writeln;
   For i:=1 To n Do
   	Begin
   		Writeln(Lop.Hocsinh[i]);
      	Writeln('-Diem Van: ',Lop.Van:4:1);
         Writeln('-Diem Toan: ',Lop.Toan:4:1);
         Writeln;
      End;
   Readln
End.