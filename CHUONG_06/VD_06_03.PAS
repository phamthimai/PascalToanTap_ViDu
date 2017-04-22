Program Ham_chuan;
Uses Crt;
Begin
     ClrScr;
	TextColor(Red);
   TextBackGround(Black);
	Writeln('HE THONG CAC HAM CHUAN DA HOC');
   Writeln('-----------------------------');
   TextColor(Yellow);
   TextBackGround(Black);
   Writeln('  +Cac ham ung dung voi so nguyen');
   Writeln('-X=5,Ham Pred(X) = ',Pred(5)); {--> 4}
   Writeln('-X=5,Ham Succ(X) = ',Succ(5)); {--> 6}
   Writeln('-X=-5,Ham Abs(X) = ',Abs(5));  {--> 5}
   Writeln('-X=10,Ham Sqr(X) = ',Sqr(10));  {-->100}
   Writeln('-X=16,Ham Sqrt(X) = ',Sqrt(16):0:0);  {-->4}
   Writeln('-X=3,Ham Odd(X) = ',Odd(3));  {-->True}
   Writeln('-X=3.1416,Ham Trunc(X) = ',Trunc(3.1416));  {-->3}
   Writeln;
   Writeln('   Bam phim <Enter> de xem tiep');
   Readln;
   TextColor(White);
   TextBackGround(Black);
   ClrScr;
   TextColor(Cyan);
   TextBackGround(Black);
   Writeln('  +Cac ham ung dung voi so thuc');
   Writeln('-X=3.1416,Ham Round(X) = ',Round(3.1416));  {-->3}
   Writeln('-Ham Pi co tri bang = ',pi);  {-->3.1415926536E+00}
   Writeln('-X=3.1416,Ham Frac(X) = ',Frac(3.1416));  {-->1.14160000000E-01}
   Writeln('-X=3.1416,Ham Int(X) = ',Int(3.1416):0:0);  {-->3}
   TextColor(Magenta);
   TextBackGround(Black);
   Writeln('  +Cac ham ung dung voi kieu Boolean');
   Writeln('-Ham Ord(false) = ',Ord(false));  {--> 0}
   Writeln('-Ham Ord(True) = ',Ord(true));    {--> 1}
   Writeln('-Ham Pred(True) = ',Pred(true));    {--> FALSE}
   Writeln('-Ham Pred(False) = ',Pred(False));    {--> TRUE}
   Writeln('-Ham Succ(False) = ',Succ(False));    {--> TRUE}
   Writeln('-Ham Succ(True) = ',Succ(True));    {--> FALSE}
   Writeln;
   Writeln('   Bam phim <Enter> de xem tiep');
   Readln;
   TextColor(White);
   TextBackGround(Black);
   ClrScr;
   TextColor(LightBlue);
   TextBackGround(Black);
   Writeln('  +Cac ham va thu tuc ung dung voi kieu ky tu');
   Writeln('-Ham Ord("A") = ',Ord('A'));    {--> 65}
   Writeln('-Ham Chr(66) = ',Chr(66));    {--> 'B'}
   Writeln('-Ham Chr(Ord("A") = ',Chr(Ord('A')));    {--> 'A'}
   Writeln('-Ham Pred("B") = ',Pred('B'));    {--> 'A'}
   Writeln('-Ham Succ("B") = ',Succ('B'));    {--> 'C'}
   Writeln('-Ham Upcase("a") = ',Upcase('a'));    {--> 'A'}
   Writeln;
   TextColor(Red);
   TextBackGround(Black);
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.