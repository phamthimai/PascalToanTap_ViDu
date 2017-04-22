Program Toa_do;
TYPE
	diem =Record
   	x,y :Integer;
   End;
Var
	m :diem;
Begin
	Write('-Cho biet vi tri X = ');
   Readln(m.x);
   Write('-Cho biet vi tri Y = ');
   Readln(m.y);
   Writeln('+Diem A co toa do la : ',m.x,',',m.y);
   Readln
End.