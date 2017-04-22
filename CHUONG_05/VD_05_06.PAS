Program For_tang;
Var
	i:Integer;
Begin
	Writeln('      CAU LENH FOR DON');
   Writeln('    Bien dieu khien tang');
   Writeln('Can thiep vao bien dieu khien');
   Writeln('--------------------');
   For i:=1 To 10 Do
   	Begin
     	Writeln(i);
      i:=i+1;
      if i >10 Then
      	halt
      End;
   Writeln;
   Writeln('   Bam phim <enter> de ket thuc');
   Readln
End.