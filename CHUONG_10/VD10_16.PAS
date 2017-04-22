Program Nhan_ma_tran;
Const
	Max=100;
   Type
   	Matran=Array[1..Max, 1..Max] Of Integer;
   Var
   	A,B,C:Matran;
      hangA,cotA,hangB,cotB:Integer;
      i,j,k:Integer;
Begin
	Repeat
		Writeln('   NHAN 2 MA TRAN');
      Writeln('Phai nhap cotA = hangB');
   	Writeln('    --------------');
   	Writeln;
   	Writeln('+Ma tran A:');
   	Write('		-So hang: ');
   	Readln(hangA);
   	Write('		-So cot : ');
   	Readln(cotA);
   	Writeln;
   	Writeln('+Ma tran B:');
   	Write('		-So hang: ');
   	Readln(hangB);
   	Write('		-So cot : ');
   	Readln(cotB);
   	If cotA <> hangB Then
   		Begin
   			Writeln('Khong nhan duoc, bam <Enter> de nhap lai');
         	Readln;
      	End;
   Until CotA=hangB;
   Writeln('	-NHAP MANG A');
   For i:=1 To hangA Do
     	For j:=1 To cotA Do
        	Begin
           	Write('+Phan tu A[',i,',',j,']= ');
            Readln(A[i,j]);
         End;
   Writeln('	-NHAP MANG B');
      For i:=1 To hangB Do
       	For j:=1 To cotB Do
        	Begin
           	Write('+Phan tu B[',i,',',j,']= ');
            Readln(B[i,j]);
         End;
   Writeln;
   For i:=1 To hangA Do
     	For j:=1 To cotB Do
        	Begin
           	C[i,j]:=0;
            For k:=1 To cotA Do
              	C[i,j]:=C[i,j] + A[i,k]*B[k,j];
          End;
   Writeln('	-MANG C');
   For i:=1 to hangA Do
     	Begin
        	For j:=1 To cotB Do
             Write(C[i,j]:6);
             Writeln;
       End;
   Readln
End.