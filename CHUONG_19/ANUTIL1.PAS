{$o+,F+}
Unit AnUtil1;

INTERFACE

	Function Gt(n:Word):LongInt;

IMPLEMENTATION

	Function Gt;
		Var
      	i : Word;
         Temp : LongInt;
      Begin
      	Temp := 1;
         For i := 1 To N Do
         	Temp := Temp * i;
         Gt := Temp;
      End;
END.