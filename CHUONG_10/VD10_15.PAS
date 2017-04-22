Program Cong_Ma_Tran;
	Const
   	hang=3;
      cot=4;
   Type
   	Matran=Array[1..hang, 1..cot] Of Integer;
   Var
   	a,b:Matran;
      i,j:Integer;
Begin
	Writeln('TONG 2 MA TRAN');
   Writeln('-------------');
   Writeln;
   Writeln('    NHAP MA TRAN A');
   For i:=1 To hang Do
   	For j:=1 To cot Do
      	Begin
				Write('-Phan tu A[',i,',',j,']= ');
            Readln(a[i,j]);
         End;
   Writeln;
   Writeln('    NHAP MA TRAN B');
   For i:=1 To hang Do
   	For j:=1 To cot Do
      	Begin
				Write('-Phan tu B[',i,',',j,']= ');
            Readln(a[i,j]);
         End;
   Writeln;
   Writeln('    MA TRAN C= A + B');
   Writeln;
   For i:= 1 to hang Do
   Begin
   	For j:=1 To cot Do
      	Write((a[i,j]+b[i,j]):6);
      Writeln
   End;
   Readln
End.