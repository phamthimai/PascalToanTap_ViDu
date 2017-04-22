Program Tim_Nhi_Phan;
	Uses Crt;
	Type
   	Mang=Array[1..100] Of Integer;
   Var
   	A:Mang;
      i,j,X:Integer;
{--------------------------------------}
	Procedure Hoanvi(Var a,b:Integer);
   	Var
      	Tam:Integer;
   Begin
   	Tam:=a;
      a:=b;
      b:=Tam;
   End;
{--------------------------------------}
	Procedure Quicksort(Var A:Mang; Lo, Hi :Integer);
      {--------------------------------------}
      Procedure Sort(l,r:Integer);
      	Var
         	i,j,X:Integer;
      Begin
      	i:=L;
         j:=R;
         X:=a[(L+R) Div 2];
         Repeat
         	While A[i] < X Do
            	i:=i+1;
            While X < A[j] Do
            	j:=j-1;
            If i <= j Then
            	Begin
               	Hoanvi(A[i], A[j]);
                  i:=i+1;
                  j:=j-1;
               End;
         Until i > j;
         If L < j Then
         	Sort(L,j);
         If i < R Then
         	Sort(i,R);
      End;
      Begin
      	Sort(Lo,Hi);
      End;
    {--------------------------------------}
   Function NhiPhan(X:Integer; A:Mang; N:Integer): Integer;
   	Var
      	Low, High, Mid:Integer;
   Begin
   	Low:=1;
      High:=N;
      While High >= Low Do
      	Begin
         	Mid :=(Low + High) Div 2;
            If X > A[Mid] Then
            	Low:=Mid + 1
            Else
            	If X < A[Mid] Then
               	High:=Mid - 1
               Else
               	High:=-1;
         End;
      If High = -1 Then
      	NhiPhan:= Mid
      Else
      	NhiPhan:= 0;
   End;
{--------------------------------------}
BEGIN
	ClrScr;
   Writeln('GIAI THUAT TIM KIEM NHI PHAN');
   Writeln('----------------------------');
	Randomize;
   For i:=1 To 100 Do
   	A[i]:=Random(3000) + 1;
   Quicksort(A,1,100);
   For i:=1 To 100 Do
   	Write(A[i]:8);
   Repeat
   	Write('-Can tim so nao (bam so 0 de ket thuc) ');
   	Readln(i);
   	j:=NhiPhan(i,A,100);
   	If j= 0 Then
   		Writeln('Khong tim thay so: ',i)
   	Else
   		Writeln('So: ',i:4,' la phan tu thu: ',j);
   Until i = 0;
   Writeln;
   Write(' Bam phim <Enter> de ket thuc ');
   Readln;
END.