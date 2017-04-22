Program Bien_doi_kieu_bat_buoc;
Var
	a,b,c:Integer;
Begin
	Writeln('THEM TEN KIEU VAO TRUOC DOI SO ');
   Writeln('------------------------------');
   b:=1234;
   c:=1432;
   a:=LongInt(b) * 81 DIV c ;
   Writeln('-Tri cua a:=b*81 DIV c la: ',a);
   Readln
End.