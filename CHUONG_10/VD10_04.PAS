Program Phep_gan_mang;
Type
	Mang = Array[1..10] Of Integer;
Var
	a,b : Mang;
   k:Byte;
Begin
	Writeln('GAN NOI DUNG MANG A CHO MANG B');
   Writeln('    Dung toan tu gan (:=)');
   Writeln('         ---------');
   For k:=1 to 10 Do
   	Begin
      	Write('-Phan tu thu: ',k:2,' = ');
         Readln(a[k]);
      End;
   Writeln('Mang B co tri gap doi mang A');
   Writeln('        ===========');
   For k:=1 To 10 Do
   	b[k] := a[k] * 2;
   For k:=1 To 10 Do
   	Writeln('A[',k:2,']= ',a[k]:4,' va B[',k:2,']= ',b[k]);
   Readln
End.