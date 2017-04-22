Program Nhap_xuat_sai;
	TYPE
   	Toa_do=RECORD
      	x,y:Integer;
         END;
   VAR
   	M:Toa_do;
Begin
	Writeln('TOA DO DIEM M(x,y)');
	Writeln('------------------');
	Write('-Nhap toa do diem M= ');
	Readln(M);
	Writeln;
   Writeln('-Xuat toa do diem M= ',M);
   Readln
End.