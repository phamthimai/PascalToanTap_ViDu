Program Toan_tu_logic;
Var
    x:Boolean;
Begin
    Writeln('TOAN TU LOGIC');
   X:= (4 < 6) And (5 < 7);
   Writeln('(4 < 6) And (5 < 7) ',x);
   X:= (4 < 6) Or (5 < 7);
   Writeln('(4 < 6) Or (5 < 7)  ',x);
   X:= (4 < 6) And (5 > 7);
   Writeln('(4 < 6) And (5 > 7) ',x);
   X:= (4 < 6) Or (5 > 7);
   Writeln('(4 < 6) Or (5 > 7)  ',x);
   X:= (4 > 6) And (5 < 7);
   Writeln('(4 > 6) And (5 < 7) ',x);
   x:=(4 > 6) Or (5 < 7);
   Writeln('(4 > 6) Or (5 < 7)  ',x);
   x:=(4 > 6) Or (5 > 7);
   Writeln('(4 > 6) And (5 > 7) ',x);
   x:=(4 > 6) Or (5 > 7);
   Writeln('(4 > 6) Or (5 > 7)  ',x);
   Readln
End.