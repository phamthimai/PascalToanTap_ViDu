Program Danh_Sach_Moc_noi;
Uses Crt;
TYPE
	HocSinh = RECORD
   	HoTen : String[24];
      Van,Toan,Ly,Hoa,Tb : Real;
      End;
   NodePtr = ^NodeType;
   NodeType = RECORD
   	Data : HocSinh;
      Next : NodePtr;
      End;
VAR
	First, Last, P : NodePtr;
   Stt : Word;
   HeapTop : Pointer;
{--------------------------------}
   Procedure WriteXY(X,Y:Integer; St : String);
   Begin
   	GotoXY(x,y);
      Write(St);
   End;
{--------------------------------}
	Function Repl(Ch: Char; N: Byte):String;
   Var
   	Tam : String;
      i : Byte;
   Begin
   	Tam :='';
      While Length(Tam) < N Do
      	Tam := Tam + Ch;
      Repl :=Tam;
   End;
{--------------------------------}
	Procedure Input;
   	Procedure Khung;
      Begin
      	Window(1,1,80,25);
         TextAttr := $1F;
         ClrScr;

         Writeln('                NHAP DANH SACH HOC SINH');
         Writeln('                -----------------------');
         Writeln;
         Writeln('        Bam <Enter> de nhap,bam <Esc> de ngung ');
         Window(10,6,60,15);
         TextAttr := $2F;
         WriteXY(2,1,'-So thu tu: ');
         WriteXY(2,2,'-Ho va ten: ');
         WriteXY(2,3,'-Diem Van : ');
         WriteXY(2,4,'-Diem Toan: ');
         WriteXY(2,5,'-Diem Ly  : ');
         WriteXY(2,6,'-Diem Hoa : ');
         WriteXY(2,7,'-Diem trung binh: ');
      End;
{--------------------------------}
	Procedure InputData(Var Rec : HocSinh);
   Begin
   	Khung;
      GotoXY(20,1);
      Writeln(Stt:3);
      With REC Do
      	Begin
         	WriteXY(20,2,Repl(' ',24));
            GotoXY(20,2);
            Readln(HoTen);
            {$I-}
            Repeat
            	WriteXY(25,3,Repl(' ',20));
               GotoXY(25,3);
               Readln(Van);
            Until IOResult = 0;
            Repeat
            	WriteXY(25,4,Repl(' ',20));
               GotoXY(25,4);
               Readln(Toan);
            Until IOResult = 0;
            Repeat
            	WriteXY(25,5,Repl(' ',20));
               GotoXY(25,5);
               Readln(Ly);
            Until IOResult = 0;
            Repeat
            	WriteXY(25,6,Repl(' ',20));
               GotoXY(25,6);
               Readln(Hoa);
            Until IOResult = 0;
            Tb := ((Van*2)+(Toan*2)+Ly+Hoa)/6;
            GotoXY(25,7);
            Writeln(Tb:6:1);
         End;
   End;
{--------------------------------}
	Procedure AppendList(P: NodePtr);
   Begin
   	If First = Nil Then
      	First := P
      Else
      	Last^.Next := P;
      Last := P;
      Last^.Next := Nil
   End;
{--------------------------------}
	Begin
   	Mark(HeapTop);
      First := Nil;
      Stt := 0;
      Repeat
      	New(P);
         Inc(Stt);
         InputData(P^.Data);
         AppendList(P);
      Until Readkey = #27;
      Window(1,3,80,25);
      TextAttr := $1F;
      GotoXY(15,12);
      Writeln('-Tong so da nhap: ',Stt:3,' hoc sinh');
      GotoXY(10,14);
      Writeln('Bam <Enter> de xem danh sach da nhap ');
	End;
{--------------------------------}
	Procedure DisplayList;
   Var
   	Dong : Byte;
      Procedure Khung;
      Begin
      	Window(1,1,80,25);
         TextAttr :=$1F;
         ClrScr;
         GoToXY(30,1);
         Writeln('** LIET KE DU LIEU **');
         Window(3,2,78,23);
         WriteXY(1,1,'------------------------------------------------------------------------ ');
         WriteXY(1,2,'|STT |          Ho ten        |  Van | Toan |  Ly  | Hoa  | Trung binh | ');
         WriteXY(1,3,'------------------------------------------------------------------------ ');
      End;
{--------------------------------}
	Procedure Display(P : NodePtr);
   Begin
      With P^.Data Do
      	Begin
         	GotoXY(1,dong);
      		Writeln('|',Stt:2);
         	GotoXY(6,dong);
            Writeln('|',HoTen);
            GotoXY(31,dong);
            Writeln('|',Van:4:1);
            GotoXY(38,dong);
            Writeln('|',Toan:4:1);
            GotoXY(45,dong);
            Writeln('|',Ly:4:1);
            GotoXY(52,dong);
            Writeln('|',Hoa:4:1);
            GotoXY(59,dong);
            Writeln('|',Tb:6:1,'      | ');
         End;
   End;
   Begin
   	Khung;
      Dong :=4;
      Stt :=0;
      P :=First;
      While P <> Nil Do
      	Begin
         	Stt := Stt + 1;
            Display(P);
            P := P^.Next;
            Dong := Dong + 1;
            If dong = 22 Then
            	Begin
               	Writeln;
               	Writeln('               Bam <Enter> de xem tiep ');
               	Readln;
                  Khung;
                  dong := 4;
               End;
         End;
      Writeln('------------------------------------------------------------------------ ');
      Window(1,1,80,24);
      GotoXY(15,23);
      Writeln('-Danh sach nay co: ', Stt:3,' hoc sinh');
   End;
{--------------------------------}
BEGIN
   ClrScr;
   Input;
   Readln;
   ClrScr;
   DisplayList;
   Readln;
   Release(HeapTop);
END.