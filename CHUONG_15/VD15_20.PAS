Program Bang_Luong_Giac;
Var
	F : Text;
   k : Word;
   Rad,S,C,T,CT : Real;
BEGIN
	Assign(f,'BLGIAC1.DAT');
   Rewrite(f);
   Writeln(f,'                * BANG LUONG GIAC *');
   Writeln(f);
   For k := 1 To 89 Do
   	Begin
      	Rad := k * Pi /180;
         S := Sin(Rad);
         C := Cos(Rad);
         T := S/C;
         CT := 1/t;
         Writeln(f,k:2,' ',Rad:10:8,' ',S:10:8,' ',C:10:8,' ',
			         T:10:6,' ',CT:10:6);
      End;
   Close(f);
END.