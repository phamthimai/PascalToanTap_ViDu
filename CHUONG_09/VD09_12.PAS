Program Thu_tuc_Insert;
Var
	St1,St2:String;
   Pos:Integer;
Begin
	Writeln(' MINH HOA THU TUC INSERT();');
   Writeln('      ------------');
   Write('-Nhap chuoi chinh (St1)   : ');
   Readln(St1);
   Write('-Nhap chuoi can chen (St2): ');
   Readln(St2);
   Write('-Muon chen vao vi tri thu may: ');
   Readln(Pos);
   Writeln('+Chuoi chinh (St1)   : ',St1);
   Writeln('+Chuoi can chen (St2): ',St2);
   Writeln('+Chen vao vi tri thu : ',Pos:2);
   Insert(St2,St1,Pos);
   Writeln('+Ket qua la          : ',St1);
   Writeln('     Bam phim <Enter> ky de ket thuc');
   Readln
End.