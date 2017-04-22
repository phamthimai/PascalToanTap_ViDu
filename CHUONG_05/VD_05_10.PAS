Program For_don;
Var
	i:Char;
Begin
	Writeln('DUNG BIEN DIEU KHIEN LA KIEU CHAR');
   Writeln('---------------------------------');
   For i:='A' To 'Z' Do
   	Writeln('Ky tu ',i,' co so thu tu= ',Ord(i));
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.