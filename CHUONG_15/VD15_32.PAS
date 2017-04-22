Program Xem_Ngay_He_Thong;
Uses Dos;
Var
	Nam,Thang,Ngay,Thu : Word;
   TenThu : String[10];
Begin
	Writeln('MINH HOA THU TUC GETDATE()');
   Writeln('--------------------------');
   Writeln;
   Write('   Hom nay la ngay nao ? ');
   GetDate(Nam,Thang,Ngay,Thu);
   Case Thu Of
   	0 : TenThu := 'Chu Nhat';
      1 : TenThu := 'Thu Hai';
      2 : TenThu := 'Thu Ba';
      3 : TenThu := 'Thu Tu';
      4 : TenThu := 'Thu Nam';
      5 : TenThu := 'Thu Sau';
      6 : TenThu := 'Thu Bay';
   End;
   Writeln;
   Writeln('   Hom nay la : ');
	Writeln('	+Thu  : ',TenThu);
   Writeln('	+Ngay : ',Ngay);
   Writeln('	+Thang: ',Thang);
   Writeln('	+Nam  : ',Nam);
   Writeln;
   Write('    Bam <Enter>... ');
   Readln
End.