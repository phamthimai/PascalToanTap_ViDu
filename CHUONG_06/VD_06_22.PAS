Program mau;
Uses Crt;
Var
   x,y:Byte;
Begin
     TextBackGround(Black);
     ClrScr;
     Repeat
           x:=Succ(Random(80));
           y:=Succ(Random(25));
           Window(x,y,x+Random(10),y+Random(8));
           TextBackGround(Random(16));
           ClrScr;
     Until KeyPressed;
End.
