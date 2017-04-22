Program Sua_Ngay;
Uses Dos;
Var
	Nam,thang,ngay,Thu: Word;
   Tenthu : String[3];
Begin
	Writeln('MINH HOA THU TUC SETDATE()');
   Writeln('--------------------------');
   Writeln;
   Write('Hom nay la: ');
   GetDate(Nam,Thang,Ngay,Thu);
   Case Thu Of
   	0 : TenThu := 'Sun';
      1 : Tenthu := 'Mon';
      2 : Tenthu := 'Tue';
      3 : Tenthu := 'Wed';
      4 : Tenthu := 'Thu';
      5 : Tenthu := 'Fri';
      6 : Tenthu := 'Sat';
   End;
   Write(Thang,'-',Ngay,'-',Nam,' ',TenThu,' : ');
   Writeln;
   Write('-Sua lai thang: ');
   Readln(Thang);
   Write('-Sua lai ngay: ');
   Readln(Ngay);
   Write('-Sua lai nam: ');
   Readln(Nam);
   SetDate(Nam,Thang,Ngay);
   Writeln;
   Writeln('	Da sua xong, bam <Enter>... ');
   Readln
End.