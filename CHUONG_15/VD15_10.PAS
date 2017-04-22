Program Hoc_sinh;
Uses Crt;
TYPE
	HocSinh = RECORD
   	HoTen : String[24];
      Van,Toan,Ly,Tb : Real;
      End;
VAR
	f : File Of HocSinh;
{--------------------------------}
	Function FileExists(FileName : String):Boolean;
   Var
   	g : File;
   Begin
   	{$I-}
      Assign(g,FileName);
      Reset(g);
      Close(g);
      {$I+}
      FileExists := (IOResult = 0) And (FileName <> ' ');
   End;
{--------------------------------}
	Procedure WriteSt(X,Y : Integer; St : String);
   Begin
   	GotoXY(x,y);
      Write(St);
   End;
{--------------------------------}
   Function Repl(Ch : Char; N : Byte): String;
   Var
   	Tam : String;
      i   : Byte;
   Begin
   	Tam := ' ';
      For i := 1 To N Do
      	Tam := Tam + Ch;
         Repl := Tam;
   End;
{--------------------------------}
   Procedure CreateFile;
   Var
   	FName : String[11];
      TaoTapTin : Boolean;
   Begin
      Repeat
      	ClrScr;
         GotoXY(10,10);
         Writeln('Ten tap tin: ');
         GotoXY(25,10);
         Readln(FName);
         TaoTapTin := Not FileExists(FName);
         If TaoTapTin Then
         	Begin
            	Assign(f,FName);
               Rewrite(f);
            End
         Else
         	WriteSt(5,12,'Tap tin da co tren dia.'+
            		'Bam <EnTer> tao lai tap tin khac');
            Readln;
      Until TaoTapTin;
   End;
{--------------------------------}
   Procedure Input(Var Rec : HocSinh);
   Var
   	Tam : String;
      Result : Integer;
   Begin
   	ClrScr;
      WriteSt(10,10,'Ho va ten      : ');
      WriteSt(10,11,'Diem van       : ');
      WriteSt(10,12,'Diem Toan      : ');
      WriteSt(10,13,'Diem Ly        : ');
      WriteSt(10,15,'Diem trung binh: ');
      WriteSt(28,10,Repl(' ',40));
      GotoXY(28,10);
      Readln(Rec.HoTen);
      Repeat
      	WriteSt(28,11,Repl(' ',10));
         GotoXY(28,11);
         Readln(Tam);
         Val(Tam,Rec.Van,Result);
      Until Result = 0;
      GotoXY(28,11);
      Writeln(Rec.Van:10:2);
      Repeat
      	WriteSt(28,12,Repl(' ',10));
         GotoXY(28,12);
         Readln(Tam);
         Val(Tam,Rec.Toan,Result);
      Until Result = 0;
      GotoXY(28,12);
      Writeln(Rec.Toan:10:2);
      Repeat
      	WriteSt(28,13,Repl(' ',10));
         GotoXY(28,13);
         Readln(Tam);
         Val(Tam,Rec.Ly,Result);
      Until Result = 0;
      GotoXY(28,13);
      Writeln(Rec.Ly:10:2);
      Rec.Tb := (Rec.Van+Rec.Toan+Rec.Ly) / 3;
      GotoXY(28,15);
      Writeln(Rec.Tb : 10:2);
   End;
{--------------------------------}
	Procedure Update;
   Var
   	Rec : HocSinh;
   Begin
   	CreateFile;
      WriteSt(20,24,'Bam <Esc> de thoat, '+
      	'bam phim bat ky de tiep tuc . . . ');
      Repeat
      	Input(Rec);
         Write(f,Rec);
      Until Readkey = #27;
      Close(f);
   End;
{--------------------------------}
   Procedure KhungXuat;
   Begin
   	ClrScr;
      WriteSt(5,1,Repl('-',70));
      WriteSt(7,2,'Ho va ten');
      WriteSt(25,2,'Diem Van');
      WriteSt(35,2,'Diem Toan');
      WriteSt(50,2,'Diem Ly');
      WriteSt(62,2,'Diem trung binh');
      WriteSt(5,3,Repl('-',70));
   End;
{--------------------------------}
   Procedure DispRec(Rec : HocSinh;dong : Byte);
   Begin
   	WriteSt(5,dong,Rec.HoTen);
      GotoXY(22,dong);
      Writeln(Rec.Van:10:2);
      GotoXY(34,dong);
      Writeln(Rec.Toan:10:2);
      GotoXY(46,dong);
      Writeln(Rec.Ly:10:2);
      GotoXY(62,dong);
      Writeln(Rec.Tb:10:2);
   End;
{--------------------------------}
   Procedure Xuat;
   Var
   	Rec : HocSinh;
      Dong : Byte;
   Begin
   	KhungXuat;
      dong := 4;
      Reset(f);
      Seek(f,0);
      While Not EOF(f) Do
      	Begin
         	Read(f,Rec);
            DispRec(Rec,dong);
            dong := dong + 1;
            if dong = 23 Then
            	Begin
               	Readln;
                  Khungxuat;
                  dong := 4;
               End;
         End;
      Close(f);
   End;
{--------------------------------}
BEGIN
	Update;
   Xuat;
   Readln;
END.
