Program In_Bang_Luong_Giac;
Uses Printer;
CONST
	g='|';
Var
   k : Integer;
   Rad,S,C,T,CT : Real;
{-------------------------------}
	Function Replicate(Chu:Char;Times:Integer):String;
   Var
   	j : Integer;
      Tam :String[80];
   Begin
   	Tam := ' ';
      For j := 1 To Times Do
      	Tam := Tam + Chu;
      Replicate := Tam;
   End;
{-------------------------------}
BEGIN
   Writeln(Lst,#27#14#27'E'+'                * BANG LUONG GIAC *'+#27'F');
   Writeln(Lst);
   Writeln(Lst,Replicate(#205,58));
   Writeln(Lst,#27'E'+g,' DO ',g,' RADIAN ',g,'   SIN    ',g,'   COSIN  ',
	     g,'   TAN    ',g,'  COTANG  ',g+#27'F');
   Writeln(Lst,Replicate(#205,58));
   For k := 1 To 89 Do
   	Begin
      	Rad := k * Pi /180;
         S := Sin(Rad);
         C := Cos(Rad);
         T := S/C;
         CT := 1/t;
         Writeln(Lst,g,#27'4',k:2,#27'5',g,Rad:10:8,g,S:10:8,g,C:10:8,g,T:10:6,g,CT:10:6,g);
      End;
   Writeln(Lst,Replicate(#205,58));
END.