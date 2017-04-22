Program Phuong_Thuc_Trung_Ten;
TYPE
	Father = OBJECT
   	Procedure A;
      Procedure B;
      End;
   Child  = OBJECT( Father )
   	Procedure B;
      End;
VAR
	F : Father;
   C : Child;
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
	Writeln('---------- Goi F.B -----------');
   F.B;
   Writeln('---------- Goi C.B -----------');
   C.B;
   Readln;
END.