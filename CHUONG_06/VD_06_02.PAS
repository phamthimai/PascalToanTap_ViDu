Program Thu_tuc_tu_tao;
Uses Crt;
	Procedure Ve(k:Integer; Kytu:Char);
   	Var
        i:Integer;
   Begin
   	For i:=1 To k Do
      	Write(kytu);
      Writeln;
   End;
Begin
   ClrScr;
   Textcolor(Yellow);
   TextBackGround(Black);
	Writeln('                 THU TUC TU TAO');
   Writeln;
   Textcolor(Red);
   TextBackGround(Black);
   Ve(50,'*');
   Textcolor(Green);
   TextBackGround(Black);
   Ve(50,'A');
   Textcolor(Cyan);
   TextBackGround(Black);
   Ve(50,'+');
   Textcolor(Magenta);
   TextBackGround(Black);
   Ve(50,'B');
   Textcolor(Cyan);
   TextBackGround(Black);
   Ve(50,'=');
   Textcolor(Green);
   TextBackGround(Black);
   Ve(50,'C');
   Textcolor(Red);
   TextBackGround(Black);
   Ve(50,'*');
   Writeln;
   Textcolor(Blue);
   TextBackGround(Black);
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.