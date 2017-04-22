Program In_Gach_Duoi;
Uses Printer;
Var
	f : Text;
   dong,dongphu : String[255];
   i : Integer;
   GachDuoi : Boolean;
   FileName : String[11];
Begin
	Writeln('MINH HOA TAP TIN THIET BI LST');
   Writeln('-----------------------------');
   Writeln;
	GachDuoi := False;
   Write('-Ten tap tin can in: ');
   Readln(FileName);
   Assign(f,fileName);
   Reset(f);
   While Not EOF(f) Do
   	Begin
      	Readln(f,dong);
         DongPhu := ' ';
         For i := 1 To Length(dong) Do
         	Begin
            	If dong[i] <> ^S Then
               	Begin
                  	Write(Lst,dong[i]); { In ra may in }
                     If GachDuoi Then
                     	DongPhu := DongPhu + '_'
                     Else
                     	DongPhu := DongPhu + ' ';
                  End
               Else
               	GachDuoi :=Not GachDuoi;
            End;
         Writeln(Lst,DongPhu);
         Writeln(Lst);    { In mot dong trong }
      End;
End.