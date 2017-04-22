Program For_if;
Var
	i:Byte;
Begin
	Writeln('DUNG FOR KET HOP VOI IF');
   Writeln('Dung tung trang man hinh');
   Writeln('Bam <Enter> de xem tiep');
   Writeln('-----------------------');
   For i:=0 To 255 Do
   	Begin
      	Writeln('So:',i:3,' la ky tu ',Chr(i));
         If (i+1) Mod 24 = 0 Then
         	Begin
            	Write('   Bam phim <Enter> de tiep tuc');
               Readln;
            End;
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.