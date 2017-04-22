Program Cac_Phep_Toan_Con_Tro;
VAR
	a   : Integer;
   b,c : String;
   p   : ^Integer;
   q   : ^String;
   r   : Pointer;
Begin
	Writeln('CAC PHEP TOAN KIEU CON TRO');
   Writeln('--------------------------');
   Writeln;
   a := 1234;
   b :='Nha sach Minh Khai 249 NTMK, Quan 1, Tel 8-331.124';
   p := @a;
   q := @b;
   Writeln('-Noi dung A la : ',a);
   Writeln('-Noi dung con tro P tro toi A la: ',p^);
	Writeln('-Noi dung  B la: ',b);
   Writeln('-Noi dung con tro Q tro toi B la: ',Q^);
   r := @c;
   q := r;
   q^:='Turbo Pascal Version 7.0';
   b:=q^;
   Write('-Nhap gia tri cua A qua P : ');
   Readln(p^);
   Writeln('-Noi dung cua A bay gio la: ',a);
   Writeln('-Noi dung cua B bay gio la: ',b);
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc ');
   Readln
End.