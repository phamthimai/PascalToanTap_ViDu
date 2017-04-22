Program So_nguyen_to;
Var
	j,k,n:Word;
   tiep:Char;
Begin
	Writeln('SO N CO PHAI LA SO NGUYEN TO HAY KHONG ?');
   Writeln('----------------------------------------');
   Repeat
   	Write('-Nhap so N= ');
   	Readln(n);
      k:=trunc(sqrt(n));
      j:=1;
      Repeat
      	j:=j+1;
      Until (j > k) Or (n Mod j = 0);
      If j > k Then
      	Writeln('+So ',n,' la so nguyen to')
      Else
      	Writeln('+So ',n,' khong phai la so nguyen to');
      Writeln;
      Write('    *Thuc hien tiep nua khong (c/k) ');
      Readln(tiep);
   Until Upcase(tiep)='K';
End.