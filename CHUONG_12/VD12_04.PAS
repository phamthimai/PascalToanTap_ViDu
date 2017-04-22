Program Kieu_Bien_Con_Tro;
Uses Crt;
TYPE
	ConTro = ^LyLich;
   LyLich = RECORD
   	Holot	 : String[17];
      Ten 	 : String[7];
      ChucVu : String[20];
      Next 	 : ConTro;
    End;
VAR
	First, Last, Newp : ConTro;
   Ch : Char;
   i : Integer;
   HeapTop : ^Integer;
BEGIN
	Writeln('KIEU VA BIEN CON TRO');
   Writeln('--------------------');
   Writeln;
   i:= 0;
   Repeat
   	i := i +1;
      New(Newp);
      With Newp^ Do
      	Begin
         	Write('-Ho ten nguoi thu: ',i,' la: ');
            Readln(Holot);
            Write('-Ten     : ');
            Readln(Ten);
            Write('-Chuc vu (Nhap xong,bam <Enter> 2 lan de nhap tiep: ');
            Write('Bam <Esc> de ket thuc nhap: ');
            Readln(ChucVu);
         End;
      If First = Nil Then
      	First := Newp
      Else
         Last^.Next := Newp;
         Last := Newp;
         Last^.Next := Nil;
         Ch := ReadKey;
   Until ch = #27;
   Writeln;
   While First <> Nil Do
   	With First^ Do
      	Begin
         	Write('+Ho va ten: ',HoLot,' ',Ten);
            Write(' .Chuc vu  : ',ChucVu);
            Writeln;
            First := Next;
         End;
   Readln
END.