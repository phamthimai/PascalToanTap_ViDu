Program Xuat_du_lieu_Boolean;
	Var
   	a,b:Integer;
      c,ketthuc:Boolean;
Begin
	Writeln('XUAT DU LIEU KIEU BOOLEAN');
   Writeln('-------------------------');
   a:=20;
   b:=10;
   ketthuc:=True;
   c:=b > a;
   Writeln(' 10 > 20 -------> ',c);
   Writeln('Bien ket thuc co tri la : ',ketthuc);
   Readln
End.