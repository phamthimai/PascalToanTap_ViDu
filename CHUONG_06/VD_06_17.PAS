Program Mien_tac_dong_cua_bien;
Var
	A,B,C:Integer;
   (*-------------*)
   Procedure Me1;
   Var
   	D,E:Integer;
      (*-------------*)
      Procedure Con1;
      Var
      	D1,E1:Integer;
      Begin
 			d1:=5;
         e1:=5;
         Writeln('+Tong cua Con1= ',(a+b+c+d+e+d1+e1));
         Writeln;
      End;
      (*-------------*)
      Procedure Con2;
      Var
      	D2,E2:Integer;
      Begin
      	d2:=10;
         e2:=10;
         Writeln('+Tong cua Con2= ',(a+b+c+d+e+d2+e2));
         Writeln;
      End;
      (*-------------*)
   Begin
      d:=15;
      e:=15;
      Con1;
      Con2;
      Writeln('+Tong cua Me1= ',(a+b+c+d+e));
      Writeln;
   End;
   (*-------------*)
   Procedure Me2;
   Var
   	F,G:Integer;
   Begin
   	f:=20;
      g:=20;
      Writeln('+Tong cua Me2= ',(a+b+c+f+g));
      Writeln;
   End;
   (*-------------*)
BEGIN
	a:=30;
   b:=30;
   c:=30;
   Me1;
   Me2;
   Writeln('+Tong cua chuong trinh chinh= ',(a+b+c));
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
END.