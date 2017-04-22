Program DateOject;
Uses Dos; { Su dung Unit Dos }
TYPE
	Date = OBJECT
   	Day,Month : Byte;
      Year      : Word;
      Procedure Init(dd,mm,yy : Word);
      Function  StrDate : String;
      End;
   Time = OBJECT(Date)
   	Hour,Min,Sec : Byte;
      Procedure Init(dd,mm,yy,hh,mi,ss : Word);
      Function StrTime : String;
      End;
VAR
  Today       : Date;
  Appointment : Time;
  Regs        : Registers;
{---------------------------------------------}
	Procedure Date.Init;
   Begin
   	Day  := dd;
      Month := mm;
      Year := yy;
   End;
{---------------------------------------------}
   Function Date.StrDate: String;
   Var
   	Strdd,Strmm,Stryy : String[4];
	Begin
   	Str(Day,Strdd);
      Str(Month,Strmm);
      Str(Year,Stryy);
      StrDate := Strdd +' / ' + Strmm + ' / ' + Stryy
   End;
{---------------------------------------------}
	Procedure Time.Init;
   Begin
   	Date.Init(dd,mm,yy);
      Hour := hh;
      Min  := mi;
      Sec  := ss
   End;
{---------------------------------------------}
	Procedure Convert(N : Word; Var St : String; Len : Byte);
   Var
   	P : Byte;
   Begin
   	Str(N : Len, St);
      P := Pos(' ',St);
      While P > 0 Do
      	Begin
         	St[P] := '0';
            P := Pos(' ',St);
         End;
   End;
{---------------------------------------------}
	Function Time.StrTime;
   Var
   	HStr, MStr, SStr : String[2];
	Begin
   	{$V-} {Tat viec kiem tra chieu dai chuoi}
      Convert(Hour,HStr,2);
      Convert(Min,MStr,2);
      Convert(Sec,SStr,2);
      {$V+}
      StrTime := HStr + ' : ' + MStr + ' : ' + SStr;
   End;
{---------------------------------------------}
BEGIN
	Regs.Ah := 42;
   MsDos(Regs);
   With Regs Do
   	Today.Init(dl,dh,cx);
      Writeln('-Hom nay la: ',Today.StrDate);
   Writeln;
   Regs.Ah := 44;
   MsDos(Regs);
   With Regs,Today Do
   	Appointment.Init(Day + 5, Month, Year, Ch, Cl,0);
      Writeln('Xin hen gap ban luc: ',Appointment.StrTime,
		' ngay: ',Appointment.StrDate);
   Writeln;
   Write('		Dong y, bam <Enter>. . . ');
	Readln
END.