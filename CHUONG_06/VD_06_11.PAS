Program Thoat_chuong_trinh;
Var
	n:Integer;
	ch:Char;
Begin
	Repeat
		Write('Bam mot phim, "t" de thoat ');
   	Readln(ch);
   	If (ch='t') Or (ch ='T') Then
   		exit    {Hoac Halt}
   	Else
   		Begin
      		Write('-Nhap mot so nguyen N= ');
         	Readln(n);
         	Writeln('+Binh phuong cua ',n,' = ',Sqr(n));
         	Writeln('+Can bac hai cua ',n,' = ',Sqrt(n):0:2);
      	End;
   	Write('-Thuc hien tiep khong (c/k) ');
   	Readln(ch)
   Until (ch='k') Or (ch='K');
End.