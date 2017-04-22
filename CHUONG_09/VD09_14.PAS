Program Thu_tuc_Str;
Var
	St:String;
   Value:Real;
	m,n:Integer;
Begin
	Writeln(' MINH HOA THU TUC STR();');
   Writeln('      ------------');
   Write('-Nhap vao mot so thuc (Real): ');
   Readln(Value);
   Write('-Nhap tri N: ');
   Readln(N);
   Write('-Nhap tri M: ');
   Readln(M);
   Str(Value,St);
   Writeln('+Chuoi so khong dinh dang: ',St);
   Str(Value:N:M,St);
   Writeln('+Chuoi so co dinh dang   : ',St);
   Writeln('     Bam phim <Enter> de ket thuc');
   Readln
End.