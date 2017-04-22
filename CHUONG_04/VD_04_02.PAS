Program Kiem_tra_tuoi;
Var
	tuoi:Integer;
Begin
	Writeln('KIEM TRA TUOI CUA MOT NGUOI');
   Write('-Nhap tuoi: ');
   Readln(tuoi);
   If (tuoi < 18)  Then
   	Begin
      	Writeln('+Tuoi cua nguoi nay la : ',tuoi,' tuoi');
     		Writeln('+Nguoi nay con dang o tuoi vi thanh nien');
         Writeln('+Nguoi nay chua duoc di bau cu');
      End;
   Writeln;
   Write('+Bam phim <Enter> de ket thuc');
   Readln
End.