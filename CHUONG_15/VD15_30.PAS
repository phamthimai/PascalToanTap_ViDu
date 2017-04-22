Program Ngay_Gio_Cap_nhat_Tap_Tin;
Uses Dos;
Var
	f : Text;
   Filename : String[20];
   Time : LongInt;
   Dt : DateTime;
Begin
	Writeln('MINH HOA THU TUC GETFTIME()');
   Writeln('---------------------------');
   Writeln;
   Write('-Cho biet ten tap tin: ');
   Readln(Filename);
   Writeln;
   Assign(f,Filename);
   Reset(f);
   If DosError <> 6 Then
   	Begin
      	GetFTime(f,Time);
         UnpackTime(Time,DT);
         Writeln('+Tap tin: ',Filename,' duoc cap nhat lan cuoi');
         Writeln('		-Ngay  : ',DT.Day);
         Writeln('		-Thang : ',DT.Month);
         Writeln('		-Nam	 : ',DT.Year);
         Writeln('      -Hoi : ',DT.Hour,' gio ',DT.Min,' phut ',DT.Sec,' giay');
         Close(f);
      End
   Else
   	Writeln('-Ma loi: ',DosError);
   Writeln;
   Write('      Bam <Enter>... ');
   Readln
End.