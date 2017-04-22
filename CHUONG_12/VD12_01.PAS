Program Dia_chi_Bien;
USES CRT;
TYPE
	St10 = String[10];
VAR
	i : Word;
   s : String[5];
   r : Real;
	c : Char;
{----------------------}
	Function Doi16(x : Word) : String;
	VAR
		y   : Word;
		j   : Byte;
		So  : String;
		Tam : String[1];
   Begin
   	Repeat
      	y := x Mod 16;
         If y >= 10 Then
         	Tam := Chr(y + 55)
         Else
         	Str(y,Tam);
         So := Tam + So;
         x := x Div 16;
      Until x = 0;
      While Length(So) < 4 Do
      	So := '0' + So;
      Doi16 := So;
   End;
{----------------------}
BEGIN
	ClrScr;
	Writeln('SU DUNG HAM SEG, OFS');
   Writeln('--------------------');
   Writeln('-Bien kieu Word      : ',Doi16(Seg(i)),' : ',Doi16(Ofs(i)));
	Writeln('-Bien kieu String[5] : ',Doi16(Seg(s)),' : ',Doi16(Ofs(s)));
   Writeln('-Bien kieu Real      : ',Doi16(Seg(r)),' : ',Doi16(Ofs(r)));
   Writeln('-Bien kieu Char      : ',Doi16(Seg(c)),' : ',Doi16(Ofs(c)));
   Readln
END.