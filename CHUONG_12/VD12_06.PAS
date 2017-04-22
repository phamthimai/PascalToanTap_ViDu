Program Bien_Tinh_p;
VAR
	p,q :^Real;
Begin
	Writeln('PHAN BIET BIEN TINH p VA BIEN DONG p');
   Writeln('------------------------------------');
   Writeln;
   q := p;
   p^ := 1.2;
   q^ := 2.5;
   Writeln('p^ = ',p^:5:1);
   Writeln('q^ = ',p^:5:1);
   Readln;
End.
