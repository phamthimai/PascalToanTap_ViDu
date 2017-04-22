Program Khai_bao_1;
TYPE
	Kytu=Set of Char;
Var
	ch:Kytu;
   ch1:Char;
Begin
	Writeln('DINH NGHIA KIEU TRUOC, KHAI BAO BIEN SAU');
   Writeln('---------------------------------------');
	ch:=[];
   While not eoln Do
   	Begin
      	Read(ch1);
         ch:= ch+[ch1];
      End;
   Writeln('Cac chu cai do la: ');
   For ch1:='a' To 'z'Do
   	If ch1 in ch Then
      	Writeln(ch1);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln;
   Readln
End.