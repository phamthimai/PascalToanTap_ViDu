{$O+,F+}
Unit UnitA;

INTERFACE

	Function RPad(St : String;N : Byte): String;
   Function RTrim(St : String) : String;

IMPLEMENTATION

	Function RPad(St: String; N :Byte) : String;
   Var Len : Byte Absolute St;
   Begin
   	While Len < N Do
      	St := St + #32;
         RPad := St;
   End;

   Function RTrim(St : String) : String;
   Var Len : Byte Absolute St;
   Begin
   	While St[Len] = #32 Do
      	Dec(Len);
         RTrim := St;
   End;
END.