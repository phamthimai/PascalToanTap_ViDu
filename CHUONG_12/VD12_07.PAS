Program Lay_Noi_Dung_Bien_Con_Tro;
VAR
	P :^Byte;
Begin
	Writeln('SU DUNG HAM PTR VA PHEP ^');
   Writeln('-------------------------');
   Writeln;
   p := Ptr($0000,$0449);
   Writeln('-Mode man hinh la: ',P^);
   Readln
End.