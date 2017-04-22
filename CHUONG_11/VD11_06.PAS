Program Nhap_xuat_dung;
	TYPE
   	Toa_do=RECORD
      	x,y:Integer;
         END;
   VAR
   	M:Toa_do;
Begin
	Writeln('TOA DO DIEM M(x,y)');
	Writeln('------------------');
	Writeln('-Nhap toa do diem M= ');
   Write('+X= ');
	Readln(M.x);
	Write('+Y= ');
	Readln(M.y);
	Writeln;
   Writeln('-Xuat toa do diem M= ',M.x,',',M.y);
   Readln
End.