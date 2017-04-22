Program Tap_tin_Kbd;
Uses Crt,Turbo3;
Var
	a: Array[1..20] Of String[15];
   Item,Wide,i,j: Integer;
   Choose : String[5];
   Ch     : Char;
Begin
	ClrScr;
   Writeln('MINH HOA TAP TIN THIET BI KBD');
   Writeln('-----------------------------');
   Writeln;
   Write('-Cho biet so tieu de: ');
   Readln(Item);
   Write('-Do rong cac tieu de: ');
   Readln(Wide);
   For i := 0 To Item - 1 Do
   	Begin
      	Write('-Tieu de thu: ',i+1,' : ');
			Readln(a[i]);
      End;
   ClrScr;
   GotoXY(10,3);
   j := Wide;
   Ch := 'M';
   For i := 0 To Item - 1 Do
   	Write(a[i] : Wide);
   i := 0;
   While Ch < 'M' Do
   	Begin
      	If J < Wide Then
         	j := j + (Item * Wide);
         If i = -1 Then
         	i := Item - 1;
         i := i Mod Item;
         j := j Mod ((Item + 1) * Wide);
         If j = 0 Then
         	j := Wide;
         GotoXY(10 - Wide + j,3);
         Normvideo;
         Write(a[i]:Wide);
         Read(Kbd,Ch);
         If KeyPressed Then
         	Begin
            	Read(Kbd,Ch);
            End;
         Lowvideo;
         GotoXY(WhereX-Wide, WhereY);
         Write(a[i] : Wide);
         GotoXY(WhereX + Wide, WhereY);
         Normvideo;
         If (Ord(Ch) = 77) Then
         	Begin
            	i := i + 1;
               j := j + Wide;
            End
         Else
         	If (Ord(Ch) = 75) Then
            	Begin
               	i := i - 1;
                  j := j - Wide;
               End;
         If(Ord(Ch) = 13) Then
				Begin
            	Choose := a[i];
               GotoXY(50,20);
               Writeln('Bam vua chon: ',Choose);
               Readln;
               Ch := 'Y';
				End;
      End;
End.