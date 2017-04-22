Program Dia_Chi_Vung_Nho;
VAR
	i : Integer;
{--------------------------}
	Procedure InWord_Hexa(w : Word); {In so kieu Word dang co so 16}
	CONST
		HexaChars : Array[0..$F] Of Char = '0123456789ABCDEF';
	Begin
   	Write(HexaChars[Hi(w) Shr 4],
		      HexaChars[Hi(w) And $F],
            HexaChars[Lo(w) Shr 4],
		      HexaChars[Lo(w) And $F]);
	End;
{--------------------------}
BEGIN
	Writeln('         DIA CHI CAC VUNG NHO');
   Writeln('In mot bien kieu Word duoi dang so he 16');
   Writeln('----------------------------------------');
   Writeln;
	Write('-Dia chi vung Cod Segment la  : $');
   InWord_Hexa(Cseg);
   Writeln;
   Write('-Dia chi vung Data Segment la : $');
   InWord_Hexa(Dseg);
   Writeln;
   Write('-Dia chi vung Stack Segment la: $');
   InWord_Hexa(Sseg);
   Writeln;
   Write('-Dia chi dinh vung chong Stack Segment la: $');
   InWord_Hexa(SPtr);
   Writeln;
   Write('-Bien i o dia chi Offset la   : $');
   InWord_Hexa(Ofs(i));
   Write(' trong Segment : $');
   InWord_Hexa(Seg(i));
   Readln
END.