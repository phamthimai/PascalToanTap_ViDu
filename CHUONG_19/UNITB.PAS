{$O+,F+}
Unit UnitB;

INTERFACE

	Procedure WriteSt(x,y,Att:Byte; St:String);

IMPLEMENTATION

   Uses Crt;
   Procedure WriteSt(x,y,Att:Byte; St:String);
   Begin
   	TextAttr := Att;
      GotoXY(x,y);
      Write(St);
   End;
END.