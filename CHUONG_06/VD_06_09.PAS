Program Thu_tuc_long_nhau;
Uses Crt;
Var
	t:Byte;
   tiep:Char;
   (*--------------------------------*)
	Procedure Giai_tri(x:Integer);
		Procedure giai_tri1;
      	Begin
            TextColor(Green);
            TextBackGround(Black);
            Writeln('Troi lanh,nen o nha coi TV');
         End;
      (*----------------*)
      Procedure giai_tri2;
      	Begin
            TextColor(Cyan);
            TextBackGround(Black);
            Writeln('Troi mat me,nen di cam trai');
         End;
      (*----------------*)
      Procedure giai_tri3;
      	Begin
             TextColor(Magenta);
             TextBackGround(Black);
             Writeln('Troi hoi nong,nen di Vung Tau');
         End;
      (*-----------------*)
      Procedure giai_tri4;
      	Begin
             TextColor(Red);
             TextBackGround(Black);
         	Writeln('Troi nong,nen di Da Lat');
         End;
      (*-----------------*)
   Begin
   	If t <= 20 Then
      	Giai_tri1;
   	If ((t > 20) And (t <= 25)) Then
   		Giai_tri2;
   	If ((t > 25) And (t <= 30)) Then
   		Giai_tri3;
   	If t > 30 Then
      	Giai_tri4;
   End;
   (*--------------------------------*)
BEGIN
   Repeat
      ClrScr;
      TextColor(Yellow);
      TextBackGround(Black);
      Writeln('CHON LOAI GIAI TRI THICH HOP');
      Writeln('----------------------------');
      Write('-Cho biet nhiet do ngay hom nay: ');
      Readln(t);
      Giai_tri(t);
      Writeln;
      TextColor(LightBlue);
      TextBackGround(Black);
      Write('Thuc hien tiep khong (c/k) ');
      Readln(tiep);
   Until (tiep='k') Or (tiep='K');
END.