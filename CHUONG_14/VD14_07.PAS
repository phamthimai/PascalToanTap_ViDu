Program Virtual_Constructor;
TYPE
	Father = OBJECT
   	Constructor Init;
   	Procedure A;
      Procedure B ; Virtual;
      End;
   Child  = OBJECT( Father )
   	Procedure B; Virtual;
      End;
VAR
	F : Father;
   C : Child;
   D : Child;
{----------------------------------}
	Constructor Father.Init;
   Begin
   End;
{----------------------------------}
	Procedure Father.A;
   Begin
   	Writeln('Phuong thuc A cua kieu CHA');
   End;
{----------------------------------}
   Procedure Father.B;
   Begin
   	Writeln('Phuong thuc B cua kieu CHA');
   End;
{----------------------------------}
   Procedure Child.B;
   Begin
   	Writeln('Phuong thuc B cua kieu CON');
   End;
{----------------------------------}
BEGIN
	F.Init ; {Khoi dong F va tao VMT cho kieu cha }
   C.Init ; {Khoi dong F va tao VMT cho kieu con }
   D.Init ; {Khoi dong F va tao VMT cho kieu con }
	Writeln('---------- Goi F.B -----------');
   F.B;
   Writeln('---------- Goi C.B -----------');
   C.B;
   Writeln('---------- Goi D.B -----------');
   D.B;
   Readln;
END.