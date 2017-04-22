Program Chuyen_Vi;
	Uses Crt;
	Const
   	Max=100;
   Type
   	Matran=Array[1..Max, 1..Max] Of Integer;
   Var
   	A:Matran;
      i,j,n:Integer;
Begin
	Writeln('CHUYEN VI MA TRAN');
   Writeln('-----------------');
   Writeln;
   Write('-Cho kich thuoc cua ma tran: ');
   Readln(n);
   Writeln('	MA TRAN A');
   For i:=1 To n Do
   	For j:=1 To n Do
      	Begin
         	Write('-Phan tu A[',i,',',j,']= ');
            Readln(a[i,j]);
         End;
   Writeln;
   ClrScr;
   Writeln('            CHUYEN VI MA TRAN A');
   Window(5,3,36,24);
   For i:=1 To n Do
   	Begin
      	For j:=1 To n Do
         	Write(a[i,j]:3);
         Writeln;
      End;
   Window(45,3,76,24);
   For i:=1 To n Do
   	Begin
      	For j:=1 To n Do
         	Write(a[j,i]:3);
         Writeln;
      End;
   Readln
End.