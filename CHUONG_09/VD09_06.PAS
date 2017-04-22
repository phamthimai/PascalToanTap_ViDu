Program Truy_xuat_chuoi;
Var
   Chuoi:String;
   i:Integer;
Begin
	Writeln('Truy xuat den tung phan tu cua chuoi');
   Writeln('            +++++++++++++');
   Write('-Nhap vao mot chuoi: ');
   Readln(Chuoi);
   Writeln;
   Write('-Ban muon truy xuat den ky tu thu may ?: ');
   Readln(i);
   Writeln('+Ky tu thu: ',i:2,' la chu: ',chuoi[i]);
   Writeln;
   Writeln('           Bam phim <Enter> de ket thuc');
   Readln
End.
