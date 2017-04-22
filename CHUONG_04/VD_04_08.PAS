Program Cau_truc_if;
Var
	so:Integer;
Begin
	Writeln('SU DUNG CAU TRUC IF');
   Writeln('-------------------');
   Write('-Nhap vao mot so: ');
   Readln(so);
   If ((so > 0) And (so < 5)) Then
   	Begin
   		If so = 1 Then
      		Writeln('Chao quy Ba');
      	If so = 2 Then
      		Writeln('Chao quy Ong');
      	If so = 3 Then
      		Writeln('Chao quy Co');
			If so = 4 Then
      		Writeln('Chao quy Cau');
      End
   Else
   	Writeln('Chao tat ca moi nguoi');
   Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
End.