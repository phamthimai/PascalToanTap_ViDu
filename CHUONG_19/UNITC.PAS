{$F+}
Unit UnitC;

INTERFACE

	Function Repl(Ch:Char; N : Byte) : String;
   Procedure ReadInt(x,y,Len,Att : Byte;Var L);

IMPLEMENTATION

	Uses Crt;
   Function Repl(Ch:Char; N : Byte) : String;
   	Var Temp : String;
      Begin
      	Temp :=' ';
         While Length(Temp) < N Do
         	Temp := Temp + Ch;
            Repl := Temp;
      End;

   Procedure ReadInt(x,y,Len,Att : Byte;Var L);
   	Var
			Temp : String;
      	Result :Integer;
         N : LongInt Absolute L;
      Begin
      	TextAttr := Att;
         Repeat
         	GotoXY(x,y);
            Write(Repl(#32,Len));
            GotoXY(x,y);
            Readln(Temp);
            Val(Temp,N,Result);
         Until Result = 0;
         While Length(Temp) < Len Do
         	Temp := #32 + Temp;
         GotoXY(x,y);
         Write(Temp);
      End;
END.