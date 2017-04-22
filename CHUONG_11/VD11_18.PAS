Program Ban_ghi_va_Con_Tro;
Uses Crt;
TYPE
	ConTro = ^LyLich;
   LyLich = RECORD
   	HoLot : String[17];
      Ten   : String[7];
      BacLuong,PhuCap,Tong : LongInt;
      Next : ConTro;
      End;
VAR
	First, Last, Newp : ConTro;
   Ch : Char;
   i : Integer;
Begin
	ClrScr;
   GoToXY(5,25);
   Write('Bam nut bat ky de tiep tuc. Bam <Esc> de dung ');
   Window(1,1,80,24);
   Writeln('**       CHUONG TRINH TINH LUONG    **');
   Writeln;
   Writeln('               Thang 11 nam 1999');
   First := NIL; {Khoi tao bien First la con tro rong}
   i := 0;
   Repeat
   	i := i + 1;
      New(Newp); {Khoi tao bien cn tro moi la bien Newp}
      With Newp^ Do
      	Begin
         	Write('-Ho cua nguoi thu: ',i:2,' la= ');
            Readln(Holot);
            Write('-Ten = ');
            Readln(Ten);
            Write('-Bac luong = ');
            Readln(BacLuong);
            Write('-Phu cap = ');
            Readln(PhuCap);
            Tong := Trunc(BacLuong * 102.27) + PhuCap;
         End;
      If First = NIL Then
      	First := Newp
      Else
      	Last^.Next := Newp;
      Last := Newp;
      Last^.Next := NIL;
      Ch := Readkey;
   Until Ch = #27;
   Writeln;
   While First <> NIL Do
   	With First^ Do
      	Begin
         	Writeln('-Ong ba: ',HoLot,' ',Ten);
            Writeln('-Bac luong: ',BacLuong:8,' -Phu cap: ',PhuCap : 6);
				Writeln('+Tien linh : ',Tong:8,' Dong');
            First :=Next;
				Writeln;
         End;
   Readln
End.