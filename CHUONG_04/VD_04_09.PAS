Program Cau_truc_Case;
Var
	so:Integer;
Begin
	Writeln('SU DUNG CAU TRUC CASE');
   Writeln('-------------------');
   Write('-Nhap vao mot so: ');
   Readln(so);
   Case so Of
  		1 : Writeln('Chao quy Ba');
    	2 : Writeln('Chao quy Ong');
      3 : Writeln('Chao quy Co');
		4 : Writeln('Chao quy Cau')
   Else
   	Writeln('Chao tat ca moi nguoi');
   End;
   Writeln;
   Writeln('Bam phim <Enter> de ket thuc');
   Readln
End.