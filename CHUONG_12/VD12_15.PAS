Program Con_Tro;
VAR
	p, q : ^Integer;
Begin
	Writeln('QUA TRINH SU DUNG BIEN CON TRO');
   Writeln('------------------------------');
   Writeln('-Buoc 1:Khai bao bien con tro p,q');
   Writeln('	Vung nho bay gio la: ',MemAvail,' bytes');
   Writeln;
   Writeln('-Buoc 2:Cap vung nho cho 2 bien dong p,q');
	New(p); {Cap phat vung nho cho p^}
   New(q); {Cap phat vung nho cho q^}
   Writeln('	Vung nho bay gio la: ',MemAvail,' bytes');
   Writeln;
   Writeln('-Buoc 3:Dien noi dung vao vung nho va thao tac');
   p^ := 1;{Dien noi dung vao vung nho cho p^}
   q^ := 1;{Dien noi dung vao vung nho cho q^}
   p^ := p^ + q^; {Thuc hien bieu thuc chua bien dong}
   Writeln('-p^ = ',p^);
   Writeln('-q^ = ',q^);
   Writeln;
   Writeln('	Vung nho bay gio la: ',MemAvail,' bytes');
   Writeln;
   Writeln('-Buoc 4:Giai phong vung nho ');
   Dispose(p);
   Dispose(q);
   Writeln;
	Writeln('	Vung nho bay gio la: ',MemAvail,' bytes');
   Readln
End.