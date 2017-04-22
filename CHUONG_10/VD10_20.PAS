Program Gt_QuickSort;
	Uses Crt;
	Const
   	Max=1000;
   Type
		Mang = Array[1..Max] Of Integer;
   Var
   	a:Mang;
      i:Integer;
   {-------------------}
   Procedure Hoanvi(Var m,n : Integer);
   	Var
      	Tam:Byte;
   Begin
   	Tam:=m;
      m:=n;
      n:=Tam;
   End;
   {-------------------}
   Procedure Xuat;
   	Var
      	i:Integer;
   Begin
   	ClrScr;
   	For i:= 1 to Max Do
      	Begin
      		If i Mod 240 =0  Then
					Readln;
				Write(' ',a[i]:6,' ');
         End;
   End;
   {-------------------}
   Procedure Nhap;
   	Var
         i:Integer;
   Begin
   	For i:=1 To Max Do
      	a[i]:=Random(1000);
      Writeln;
      Write('  *Bam phim <Enter> de xem danh sach sap xep');
      Readln
   End;
	{-------------------}

   Procedure QuickSort(Var A: Mang; Lo,Hi: Integer);
   	Procedure Sort(Left, Right:Integer);
   		Var
      		i,j,x:Integer;
   	Begin
   		i:=Left;
   		j:=Right;
      	x:=a[(Left + Right) Div 2];
      	Repeat
      		While a[i] < x Do
           		Inc(i);
         	While x < a[j] Do
         		Dec(j);
         	If i <=j Then
         		Begin
            		Hoanvi(a[i],a[j]);
               	Inc(i);
               	Dec(j);
            	End;
   		Until i > j;
      	If Left < j Then
      		Sort(Left,j);
      	If i < Right Then
      		Sort(i,Right);
   	End;
   Begin
   	Sort(Lo,Hi);
   End;
   {-------------------}
BEGIN
	ClrScr;
   Writeln('GIAI THUAT QUICKSORT');
   Writeln('--------------------');
   Writeln;
	Nhap;
   Quicksort(a,1,Max);
   Xuat;
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
END.
