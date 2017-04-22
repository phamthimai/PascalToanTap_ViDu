Program Mark_Release;
VAR
	p, q : ^Integer;
   r    : ^Real;
   s    : ^String;
   pp   : Pointer;
Begin
	Writeln('DANH DAU VA GIAI PHONG VUNG NHO');
   Writeln('-------------------------------');
   Writeln;
   Writeln('-Vung nho hien gio la: ',MemAvail,' bytes');
   Writeln;
   New(p);
   p^ :=1234;
   Writeln('-Noi dung cua p la: ',p^);
   Writeln('-Vung nho hien gio la: ',MemAvail,' bytes');
   Writeln;
   Mark(pp);
   New(q);
   q^ := p^;
   Writeln('-Noi dung cua q la: ',q^);
   Writeln('-Vung nho hien gio la: ',MemAvail,' bytes');
   Writeln;
   New(r);
   r^ := 12345.67;
   Writeln('-Noi dung cua r la: ',r^);
   Writeln('-Vung nho hien gio la: ',MemAvail,' bytes');
   Writeln;
   New(s);
   s^ := 'Turbo Pascal 7.0';
   Writeln('-Noi dung cua r la: ',s^);
   Writeln('-Vung nho hien gio la: ',MemAvail,' bytes');
   Writeln;
   Writeln('	Bam phim <Enter> de xoa 3 bien q,r,s');
   Readln;
	Release(pp);
   Writeln('-Vung nho hien gio la: ',MemAvail,' bytes');
   Writeln('chi con chua bien p trong vung Heap');
   Writeln;
   Writeln('   Bam <Enter> de ket thuc');
   Readln
End.