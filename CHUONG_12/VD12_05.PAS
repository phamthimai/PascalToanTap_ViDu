Program Con_Tro_NIL;
TYPE
	ConTro = ^Integer;
VAR
	KiemTra : ConTro;
Begin
	Writeln('GAN TRI NIL CHO BIEN CON TRO');
   Writeln('----------------------------');
   Writeln;
   New(KiemTra);
   KiemTra := NIL;
   KiemTra^ := 1;
   Writeln(KiemTra);
   Readln
End.