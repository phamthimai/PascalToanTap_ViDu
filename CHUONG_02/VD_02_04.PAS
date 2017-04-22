Program bien_chung_rieng;
Var
	a:byte;
   Procedure cong;
   Var
   	a:byte;
   Begin
        a:= a + 3;
        Writeln('+Gia tri cua a + 1 = ',a);
   End;
Begin
	Write('-Nhap gia tri cho so a= ');
   Readln(a);
   cong;
   Writeln('-Gia tri cua a luc nay la : ',a);
   Readln
End.
