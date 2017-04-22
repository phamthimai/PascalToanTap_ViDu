Program Sua_Ngay_Gio_Cap_nhat_Tap_Tin;
Uses Dos;
Var
	f : Text;
   Filename : String[20];
   Time : LongInt;
   Dt : DateTime;
Begin
	Writeln('MINH HOA THU TUC SETFTIME()');
   Writeln('---------------------------');
   Writeln;
   Write('-Cho biet ten tap tin: ');
   Readln(Filename);
   Writeln;
   Assign(f,Filename);
   Reset(f);
   Write('-Go ngay can sua: ');
   Readln(DT.Day);
   Write('-Go thang can sua: ');
   Readln(DT.Month);
   Write('-Go nam can sua: ');
   Readln(DT.Year);
   Write('-Go gio can sua: ');
   Readln(DT.Hour);
   Write('-Go phut can sua: ');
   Readln(DT.Min);
   Write('-Go giay can sua: ');
   Readln(DT.Sec);
   PackTime(DT,Time);
   SetFTime(f,Time);
   Close(f);
   Writeln;
   Write('      Bam <Enter>... ');
   Readln
End.