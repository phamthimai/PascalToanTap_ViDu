Program Xem_Gio_He_Thong;
Uses Dos;
Var
	Gio,Phut,Giay,Ptgiay : Word;
Begin
	Writeln('MINH HOA THU TUC GETTIME()');
   Writeln('--------------------------');
   Writeln;
   Write('Bay gio la: ');
   GetTime(Gio,Phut,Giay,Ptgiay);
   Write(gio,':',Phut,':',Giay,',',Ptgiay);
   Writeln;
   Writeln;
   Write(' 	Bam <Enter>... ');
   Readln
End.