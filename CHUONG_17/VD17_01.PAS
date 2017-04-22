Program Khung_chu_Nhat_net_kep;
Uses Crt;
Var
	x1,y1,x2,y2 : Integer;
{--------------------------------}
	Procedure VeKhung(x1,y1,x2,y2,mau1,mau2: Integer);
   Var
   	i : Byte;
   Begin
   	TextColor(mau1);
      TextBackGround(mau2);
      For i := X1 + 1 To x2-1 Do
      	Begin
         	GotoXY(i,y1);
            Write(#205);
            GotoXY(i,y2);
            Write(#205);
         End;
      For i := y1 + 1 To y2 - 1 Do
        	Begin
         	GotoXY(x1,i);
            Write(#186);
            GotoXY(x2,i);
            Write(#186);
         End;
      GotoXY(x1,y1);
      Write(#201);
      GotoXY(x2,y1);
      Write(#187);
      GotoXY(x1,y2);
      Write(#200);
      GotoXY(x2,y2);
      Write(#188)
   End;
{--------------------------------}
BEGIN
	ClrScr;
   Writeln('-Toa do goc tren ben trai: ');
   Write('	+X1 = ');
   Readln(x1);
   Write('	+Y1 = ');
   Readln(y1);
   Writeln('-Toa do goc duoi ben phai: ');
   Write('	+X2 = ');
   Readln(x2);
   Write('	+Y2 = ');
   Readln(y2);
   ClrScr;
   VeKhung(x1,y1,x2,y2,Red,black);
   Readln;
   Normvideo;
END.