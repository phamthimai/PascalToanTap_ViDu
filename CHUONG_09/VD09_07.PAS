Program Truy_xuat_chuoi;
Var
   Chuoi:String;
   i,n:Integer;
Begin
	Writeln('Truy xuat den tung phan tu cua chuoi');
   Writeln('            +++++++++++++');
   Write('-Nhap vao mot chuoi: ');
   Readln(Chuoi);
   n:=Length(chuoi);
   Writeln;
   Writeln('+Cac ky tu vua nhap la:');
   Begin
   	For i:=1 To N Do
      	Writeln('             ',chuoi[i])
   End;
   Writeln;
   Writeln('           Bam phim <Enter> de ket thuc');
   Readln
End.
