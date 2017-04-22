Program Doc_Tap_Tin;
Var
	f : Text;
   Line : String[80];
   n : Byte;
Begin
	Assign(f,'BLGIAC.DAT');
   Reset(f);
   n := 1;
   While not EOF(f) Do
   	Begin
      	Readln(f,Line);
         Writeln(Line);
         n := n + 1;
         If n > 24 Then
         	Begin
            	n := 1;
               Write('     Bam < Enter> de xem tiep ');
               Readln;
            End;
      End;
   Writeln;
   Write('  Bam <Enter> de ket thuc ');
   Readln;
   Close(f);
End.