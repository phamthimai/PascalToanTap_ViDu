Program Xuat_nhap;
Var
	a,b:Set of 'A'..'Z';
   i,n:Integer;
   Ch:Char;
Begin
	Writeln('CACH THUC NHAP XUAT DU LIEU KIEU TAP HOP');
   Writeln('----------------------------------------');
   a:=[];
   Write('-Nhap so N: ');
   Readln(n);
   For i:=1 To N Do
   	Begin
      	Write('-Nhap ky tu thu: ',i:2,' = ');
      	Readln(Ch);
         Ch:=Upcase(Ch);
         a:=a+[Ch];
      End;
   Writeln;
   Write(n,' Chu hoa sap xep theo thu tu la : ');
   Writeln;
   For Ch:='A' To 'Z' Do
   	If Ch In a Then
      	Write(Ch,', ');
	Writeln;
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.