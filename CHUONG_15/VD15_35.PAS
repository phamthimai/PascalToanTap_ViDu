Program Sua_Gio_He_Thong;
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
   Write('-Gio can sua: ');
   Readln(Gio);
   Write('-Phut can sua: ');
   Readln(Phut);
   Write('-Giay can sua: ');
   Readln(Giay);
   SetTime(Gio,Phut,Giay,Ptgiay);
   Writeln;
   Writeln;
   Write(' 	Da sua xong,bam <Enter>... ');
   Readln
End.