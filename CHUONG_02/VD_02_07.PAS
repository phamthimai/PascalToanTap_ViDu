Program bieu_thuc;
Var
	a,d,e,g:Real;
   b,c,f,h,i:integer;
Begin
	a:=8.0 /2.0 + 6;
   b:=3 - 4 * 2;
   c:=5 + 25 Mod 6;
   d:=3.5 -1.25 / 0.5;
   e:=5.5 - 3.375 / 1.125;
   f:=5 * 3 + 14 Mod 4;
   g:=4.5 / 1.125 - 3.325 * 6;
   h:=7 - 6 *2 - 33 Div 4 - 3;
   i:=(8 Mod (2 * (5 - 3 * (4 + 6 * (5 Div 2)) Div 10)));
   Writeln('-a = ',a:6:2);
   Writeln('-b = ',b:6);
   Writeln('-c = ',c:6);
   Writeln('-d = ',d:6:2);
   Writeln('-e = ',e:6:2);
   Writeln('-f = ',f:6);
   Writeln('-g = ',g:6:2);
   Writeln('-h = ',h:6);
   Writeln('-i = ',i:6);
   Readln
End.