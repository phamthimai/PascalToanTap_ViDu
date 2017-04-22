Program Tao_ma_tran;
	Const
   	Max=10;
   Var
   	a:Array[1..Max, 1..Max] Of Integer;
      i,j:Integer;
Begin
	Writeln('TAO MA TRAN VUONG KICH THUOC 10 x 10');
   Writeln('         -------------');
   Writeln;
   For i:= 1 To Max Do
   	Begin
      	For j:=1 To Max Do
         	Begin
         		If i=j Then
            		a[i,j]:=1
            	Else
            		a[i,j]:=0;
            	Write(a[i,j]:5);
      		End;
   		Writeln(#10)
     End;
     Readln
End.