Program So_ky_so;
Var
	n,n1:LongInt;
   kyso:Byte;
Begin
	Writeln('SO KY SO TRONG MOT SO NGUYEN');
   Writeln('----------------------------');
   Write('-Nhap mot so nguyen: ');
   Readln(n);
   n1:=n;
   kyso:=0;
   Repeat
   	N := N Div 10;
      Inc(kyso);
   Until (N = 0);
   Writeln;
   Writeln('+So ',n1,' co ',kyso,' ky so');
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.