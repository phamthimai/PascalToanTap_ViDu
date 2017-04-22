Program Lon_nho;
	Const
   	PT=10; {So phan tu}
   Var
   	A:Array[1..PT] Of Integer;
      Max,Min,i:Integer;
      VtMax,VtMin:Integer;
Begin
	Writeln('TIM TRI LON NHAT, NHO NHAT VA VI TRI CUA CHUNG');
   Writeln('            ------------------');
   For i:=1 To PT Do
   	Begin
      	Write('-Phan tu thu: ',i:2,' = ');
         Readln(a[i]);
      End;
	Max:=a[1];
   VtMax:=1;
   Min:=a[1];
   VtMin:=1;
   For i:=1 To PT Do
   	Begin
      	If a[i] > Max Then
         	Begin
            	Max:=a[i];
               VtMax:=i;
            End;
         If a[i] < Min Then
         	Begin
            	Min:=a[i];
               VtMin:=i;
            End;
      End;
   Writeln;
   Writeln('+Tri lon nhat: ',Max:3,' o vi tri thu: ',VtMax);
   Writeln('+Tri nho nhat: ',Min:3,' o vi tri thu: ',VtMin);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.