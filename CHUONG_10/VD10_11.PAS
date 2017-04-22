Program Sai_khac_TBC;
	Const
   	Max=100;
	Var
   	n,i:Integer;
      a:Array[1..Max] Of Real;
      Tong,Tb:Real;
Begin
	Writeln('TIM PHAN TU SAI KHAC VOI TRI TRUNG BINH CONG');
   Writeln('------------------');
	Write('-So phan tu= ');
   Readln(n);
   tong:=0;
   For i:=1 To N Do
   	Begin
      	Write('-Phan tu thu: ',i:2,' = ');
         Readln(a[i]);
         Tong:=Tong+a[i];
      End;
   tb:=Tong /n;
   Writeln;
   Writeln('+Trong binh cong cua: ',n:3,' phan tu = ',Tb:8:2);
   Writeln;
   Writeln('+Cac so sai khac voi Tb khong qua 1 la: ');
   For i:=1 To N Do
   	If ABS(a[i]-tb) <=1 Then
      	Write(a[i]:8:2,' ');
   Writeln;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.