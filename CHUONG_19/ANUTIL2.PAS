{$O+,F+}
Unit AnUtil2;

INTERFACE

	Procedure Doi(Var a,b : Word);

IMPLEMENTATION

	Procedure Doi;
   	Var
      	Temp : Word;
      Begin
      	Temp := a;
         a := b;
         b := Temp;
      End;
END.