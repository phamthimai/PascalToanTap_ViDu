Program DateObject;
Uses Dos;  {Su dung Unit Dos }
TYPE
	Date = OBJECT
   	Month,Day : Byte;
      Year : Word;
      Procedure Init(dd,mm,yy : Word);
      Function StrDate : String;
      End;
VAR
	Today : Date;
   Regs : Registers;
{----------------------------------}
	Procedure Date.Init;
   Begin
   	Day   := dd;
   	Month := mm;
      Year  := yy;
   End;
{----------------------------------}
	Function Date.StrDate;
   Var
   	Strdd,Strmm,Stryy : String[4];
   Begin
   	Str(Day,Strdd);
      Str(Month,Strmm);
      Str(Year,Stryy);
      StrDate := Strdd + '/'+ Strmm + '/' + Stryy;
   End;
{----------------------------------}
BEGIN
	Writeln('DINH NGHIA KIEU CHA, KHONG DINH NGHIA KIEU CON');
   Writeln('         Xem ngay hien hanh cua may');
   Writeln('----------------------------------------------');
   Writeln;
	Regs.Ah := 42;
   MsDos(Regs);
   With Regs Do
   	Today.Init(dl, dh, cx);
   Writeln('-Hom nay la ngay: ',Today.StrDate);
   Writeln;
   Write('	Xem xong, bam <Enter>. . . ');
   Readln
END.