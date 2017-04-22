Program Thang_Trong_Nam;
TYPE
	TenThang=(Gieng,Hai,Ba,Tu,Nam,Sau,Bay,Tam,
             Chin,Muoi,MuoiMot,MuoiHai);
Var
	Thang:TenThang;
Begin
	Writeln('IN RA TEN THANG BANG TIENG ANH');
   Writeln('   Kieu liet ke TenThang');
   Writeln('------------------------------');
   For Thang:=Gieng To MuoiHai Do
   	Case Thang Of
      	Gieng		:Writeln('Janury');
         Hai		:Writeln('February');
         Ba			:Writeln('March');
         Tu			:Writeln('April');
         Nam		:Writeln('May');
         Sau		:Writeln('June');
         Bay		:Writeln('July');
         Tam		:Writeln('August');
         Chin		:Writeln('September');
         Muoi		:Writeln('October');
         MuoiMot	:Writeln('November');
         MuoiHai	:Writeln('December');
      End;
   Writeln;
   Write('    Bam phim <Enter> de ket thuc ');
   Readln
End.