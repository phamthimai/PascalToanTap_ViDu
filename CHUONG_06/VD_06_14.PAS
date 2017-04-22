Program Truyen_bang_bien;
Uses Crt;
Var
	so1,so2:Integer;
   (*-------------------*)
   Procedure Truyen(Var x,y:Integer);
		Begin
      	Writeln('Trong thu tuc thi');
         x:=x+10;
         y:=y+10;
         Writeln('-Tham so X=X+10= ',x);
         Writeln('-Tham so Y=Y+10= ',y);
		End;
BEGIN
	ClrScr;
	Writeln('TRUYEN THAM SO BANG BIEN');
   Writeln('-----------------------');
   Write('-Nhap so thu nhat: ');
   Readln(so1);
   Write('-Nhap so thu hai : ');
   Readln(so2);
   Writeln;
   Writeln('	+So thu nhat truyen cho tham so X');
   Writeln('	+So thu hai truyen co tham so Y');
   Writeln;
   Truyen(so1,so2);
   Writeln;
   Writeln('   Sau khi truyen tham so thi');
   Writeln('	+So thu nhat bay gio la: ',so1);
   Writeln('	+So thu hai bay gio la : ',so2);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc');
   Readln;
END.