Program Ghi_Tap_Tin;
Var
	I : Integer;
   f : File Of Integer;
Begin
	Writeln('THU TUC WRITE, GHI DU LIEU VAO TAP TIN TREN DIA');
   Writeln('-----------------------------------------------');
   Writeln;
   Assign(f,'SoNguyen.DAT');
   Rewrite(f);
   For i := 1 To 10 Do
   	Write(f,i);
   Writeln;
   Writeln('Da ghi vao tap tin SONGUYEN');
   Writeln('       Bam <Enter>...');
   Readln;
   Close(f);
End.