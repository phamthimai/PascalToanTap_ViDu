Program Ham_tu_tao;
Uses Crt;
Var
	n:Integer;
   Function giaithua(M :Integer):LongInt;
   	Var
      	i,gt:Integer;
   Begin
   	gt:=1;
      For i:=1 To M Do
      	gt:=gt*i;
      Writeln('+Giai thua cua ',m,' la: ',gt);
   End;
BEGIN
	ClrScr;
   TextColor(Red);
   TextBackGround(Black);
	Writeln('HAM TINH GIAI THUA TU TAO');
   Writeln('-------------------------');
   TextColor(Yellow);
   TextBackGround(Black);
   Write('-Nhap so N = ');
   Readln(n);
   TextColor(Magenta);
   TextBackGround(Black);
   giaithua(n);
   Writeln;
   TextColor(Cyan);
   TextBackGround(Black);
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
END.