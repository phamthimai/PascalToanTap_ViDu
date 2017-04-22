Program Bien_mang;
Var
	a:Array[Char] Of Integer;
   Ch:Char;
Begin
	Writeln('KHAI BAO BIEN MANG TUONG MINH');
   Writeln(     '------------------');
   For Ch:='A' To 'Z' Do
   	Begin
      	a[Ch]:=Ord(Ch);
         Writeln('-Ky tu: ',Ch,' co ma la: ',a[Ch]);
      End;
   Readln
End.