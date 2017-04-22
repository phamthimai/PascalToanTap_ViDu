Program Thu_tuc_Str;
Var
	St:String;
   Value,n:Integer;
Begin
	Writeln(' MINH HOA THU TUC STR();');
   Writeln('      ------------');
   Write('-Nhap vao mot gia tri so (Value): ');
   Readln(Value);
   Write('-Nhap tri N: ');
   Readln(N);
   Str(Value,St);
   Writeln('+Chuoi so khong dinh dang: ',St);
   Str(Value:N,St);
   Writeln('+Chuoi so co dinh dang   : ',St);
   Writeln('     Bam phim <Enter> ky de ket thuc');
   Readln
End.