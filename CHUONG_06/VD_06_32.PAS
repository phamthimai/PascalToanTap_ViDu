Program Khong_dung_Tham_khao_truoc;
Var
	x:Integer;
BEGIN
	Writeln('MINH HOA VE DANG DON GIAN');
   Writeln('-------------------------');
	Write('-Nhap mot so nguyen bat ky: ');
   Readln(x);
   While x <> 1 Do
   	Begin
      	If x Mod 2 = 0 Then
         	x:=x Div 2
         Else
         	x:= x * 3 + 1;
         Writeln(x);
      End;
   Writeln;
   Write('   Bam phim <Enter> de ket thuc');
   Readln
END.