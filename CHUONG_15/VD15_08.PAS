Program Cat_Tap_Tin;
Var
	f : File Of Integer;
   i,j : Integer;
Begin
	Writeln('CAT TAP TIN BANG THU TUC TRUNCATE');
   Writeln('---------------------------------');
   Writeln;
   Assign(f,'TEST.INT');
   Rewrite(f);
   For i := 1 To 10 Do
   	Write(f,i);
   Writeln;
   Writeln('Da tao tap tin TEST.INT co 10 so nguyen');
   Write('Bam <Enter> de xem noi dung tap tin TEST');
   Readln;
   Reset(f);
   While Not EOF(f) Do
   	Begin
      	Read(f,i);
         Writeln(i);
      End;
   Reset(f);
   Writeln;
   Write('   Bam <Enter> de cat 5 phan tu ');
   Readln;
   Reset(f);
   For i := 1 To 5 Do
   	Read(f,i);
   Truncate(f);
   Writeln;
   Writeln(' Da cat 5 phan tu cua tap tin');
   Write('Bam <Enter> de xem noi dung tap tin con lai ');
   Readln;
   Reset(f);
   While Not EOF(f) Do
   	Begin
      	Read(f,i);
         Writeln(i);
      End;
   Writeln;
   Write('   Bam <Enter> de ket thuc ');
   Readln;
   Close(f);
   Erase(f);
End.