Program Tinh_luong;
USES CRT;
TYPE
	ConTro = ^Banghi;
   BanGhi = RECORD
   	HoLot       : String[17];
      Ten         : String[7];
      Bl,Pc,Tlinh : LongInt;
      Next        : ConTro;
   End;
VAR
	First, Last, Newp : ConTro;
   Ch                : Char;
   i                 : Integer;
   HeapTop           : ^Integer;
Begin
	ClrScr;
   GotoXY(5,25);
   Writeln('Bam <Esc> de thoat, bam<Enter> de tiep tuc nhap');
   Window(1,1,80,24);
	Writeln('MINH HOA CACH VIET CHUONG TRINH KIEU CON TRO');
   Writeln('--------------------------------------------');
   First := NIL;
   Mark(HeapTop);
   i := 0;
   Repeat
   	i := i + 1;
      New(Newp);
      With Newp^ Do
      	Begin
         	Write('-Ho lot cua nguoi thu: ',i:2,' la: ');
            Readln(HoLot);
            Write('-Ten cua nguoi nay la: ');
            Readln(Ten);
            Write('-Bac luong cua nguoi nay la: ');
            Readln(Bl);
            Write('-Phu cap cua nguoi nay la: ');
            Readln(Pc);
            Tlinh := Trunc(Bl * 102.27) + Pc;
         End;
      If First = NIL Then
      	First := Newp
      Else
      	Last^.Next := Newp;
         Last := Newp;
         Last^.Next := NIL;
      Ch := ReadKey;
   Until Ch = #27;
   Writeln;
   ClrScr;
   Writeln('DANH SACH LINH LUONG');
   Writeln('--------------------');
   While First <> NIL Do
   	With First^ Do
      	Begin
         	Writeln('+Ho ten: ',HoLot,' ',Ten);
            Writeln('+Bac luong : ',Bl);
            Writeln('+Phu cap   : ',Pc);
            Writeln('+Duoc linh : ',Tlinh:8,' dong');
            First := Next;
            Writeln;
         End;
   Release(HeapTop);
   Writeln;
   Writeln('        Bam <Enter> de ket thuc');
   Readln
End.