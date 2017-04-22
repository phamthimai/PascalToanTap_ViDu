Program Ban_Nhac;
Uses Crt;
	Procedure Nhac(Caodo, Truongdo:Integer);
   Begin
   	Sound(Caodo);
      Delay(Truongdo);
   end;
BEGIN
	ClrScr;
   GotoXY(29,10);
   TextColor(4);
   Writeln('VIET NHAC BANG PASCAL');
   GotoXY(29,11);
   TextColor(14);
   Writeln('---------------------');
   GotoXY(27,12);
   TextColor(Green);
   Writeln('Bam phim bat ky de ngung');
   Repeat
		Nhac(131,112);Nhac(175,448);Nhac(131,112);
		Nhac(262,448);Nhac(131,112);Nhac(220,336);
   	Nhac(196,112);Nhac(220,112);Nhac(175,336);
   	Nhac(131,336);Nhac(175,336);Nhac(294,336);
   	Nhac(262,336);Nhac(220,112);Nhac(235,112);
   	Nhac(262,1344);Nhac(131,336);Nhac(175,336);
   	Nhac(294,336);Nhac(262,336);Nhac(220,112);
   	Nhac(235,112);Nhac(262,336);Nhac(196,112);
   	Nhac(220,112);Nhac(175,336);Nhac(131,336);
   	Nhac(175,336);Nhac(220,112);Nhac(235,112);
   	Nhac(196,560);Nhac(175,112);Nhac(175,1120);
   Until KeyPressed;
   Nosound;
END.