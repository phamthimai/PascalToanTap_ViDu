Program Dia_Chi_Vung_nho;
USES CRT;
TYPE
	StType = String[80];
   St4 = String[4];
VAR
	r1,r2 : Real;
   x     : Word;
   p     : ^Word; {Khai bao bien con tro kieu Word}

{------------------------}
	Function Doi16(x : Word) : String;
   VAR
   	y   : Word;
      j   : Byte;
      So  : String;
      Tam : String[1];
   Begin
   	So :=' ';
      Repeat
      	y := y Mod 16;
         x := x Div 16;
         If y >=10 Then
         	Tam := Chr(y + 55)
         Else
         	Str(y,Tam);
         So := Tam + So;
      Until x = 0;
   End;

{------------------------}
	Procedure InCodeSegment;
   Begin
   	Writeln;
      Writeln('-Vung Code Segment : dia chi Segment : ',Doi16(Cseg));
   End;
{------------------------}
	Procedure InDataSegment;
   Begin
   	Writeln;
      Writeln('-Vung bien tinh bat dau tu dia chi: ',
      	Doi16(Seg(x)), ' : ',Doi16(Ofs(x)));
      Writeln('Day la vung Data Segment');
   End;
{------------------------}
	Procedure InStackSegment;
   VAR
   	i : Word;
   Begin
   	Writeln;
      Writeln('-Bien noi bo i co dia chi: ',
         Doi16(Seg(i)), ' : ',Doi16(Ofs(i)));
      Writeln('Day la vung Stack Segment');
   End;
{------------------------}
	Procedure InHeap;
   Begin
   	Writeln;
      Writeln('-Vung bien dong P dang tro den la: ',
         Doi16(Seg(p^)), ' : ',Doi16(Ofs(p^)));
      Writeln('Day la vung Heap');
   End;
{------------------------}
BEGIN
	ClrScr;
	Writeln('DIA CHI CAC VUNG NHO');
   Writeln('Su dung bien con tro');
   Writeln('--------------------');
   Writeln;
   Writeln('+Dia chi duoc bieu dien bang Segment : Offse ');
   New(p);
   InCodeSegment;
   InStackSegment;
   InDataSegment;
   InHeap;
   Writeln;
   Writeln('  Bam phim <Enter> de ket thuc');
   Readln
END.
