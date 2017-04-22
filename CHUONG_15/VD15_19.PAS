Program Doc_Tap_Tin;
Uses Crt;
TYPE
	Line = String[80];
   ConTro = ^Line;
VAR
	f : Text;
   Pt : Array[1..100] Of ConTro;
   k : Integer;
   HeapTop : Pointer;
{---------------------------------}
	Procedure PrintLine;
   Begin
   	For k := 1 To 24 Do
      	Writeln(Pt[k]^);
         Write(' Bam cac phim mui ten  ',#24,#25,
			     ' de xem, bam <Esc> de ket thuc ');
         Window(10,1,70,24);
         GotoXY(2,1);
   End;
{---------------------------------}
   Procedure ConTro1;
   Var
   	Cur,dong: Integer;
      Ch : Char;

      Procedure Up;
      Begin
      	If dong = 1 Then
         	If k = 1 Then
            	Write(#7)  { Tieng keu bip }
            Else
            	Begin
               	GotoXY(1,24);
                  Delline;
                  GotoXY(1,1);
                  InsLine;
                  k := k - 1;
                  Write(Pt[k]^);
                  GotoXY(2,k);
               End
         Else
         	Begin
            	dong := dong-1;
               GotoXY(2,dong);
               k := k-1;
            End;
      End;

      Procedure Down;
      Begin
      	If dong = 24 Then
         	If k = 89 Then
            	Write(#7)  { Tieng keu bip }
            Else
            	Begin
               	k := k+1;
               	GotoXY(1,1);
                  Delline;
                  GotoXY(1,24);
                  InsLine;
                  Write(Pt[k]^);
                  GotoXY(2,24);
               End
         Else
         	If k = 89 Then
            	Write(#7)
            Else
         		Begin
            		dong := dong+1;
               	GotoXY(2,dong);
               	k := k+1;
            	End;
      End;

   Begin
   	k := 1;
      dong := 1;
      Repeat
      	Ch := Readkey;
         If Ch = #0 Then
         	Ch := Readkey;
         Case Ch Of
         	#72 : Up;
            #80 : Down;
         End;
      Until Ch = #27;
   End;
{---------------------------------}
BEGIN
	ClrScr;
   Assign(f,'BLGIAC.DAT');
   Reset(f);
   k := 0;
   Mark(HeapTop);
   While Not EOF(f) Do
   	Begin
      	k := k +1;
         New(Pt[k]);
         Readln(f,Pt[k]^);
      End;
   Close(f);
   Window(10,1,70,25);
   PrintLine;
   ConTro1;
   Release(HeapTop);
END.
