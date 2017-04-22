Program Kiem_tra_tuoi;
Var
	tuoi:Integer;
Begin
	Writeln('KIEM TRA TUOI CUA MOT NGUOI');
   Write('-Nhap tuoi: ');
   Readln(tuoi);
   If (tuoi < 18)  Then
     	Writeln('+Nguoi nay con o tuoi vi thanh nien')
   Else
   	Writeln('+Nguoi nay da truong thanh');
   Writeln;
   Write('+Bam phim <Enter> de ket thuc');
   Readln
End.