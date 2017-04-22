Program In_ten_thang;
TYPE
	TenThang=(Gieng,Hai,Ba,Tu,Nam,Sau,Bay,Tam,
				 Chin,Muoi,MuoiMot,MuoiHai);
	ThuTuThang= 1..12;  {Mien con}
Var
	so:ThuTuThang;  { Kieu mien con}
(*--------------------------*)
	FUNCTION Thang(n:ThuTuThang):TenThang;
   Var
   	i:TenThang;   {Kieu liet ke}
   Begin
   	For i:=Gieng To MuoiHai Do
      	If Ord(i) = (so-1) Then
         	Thang:=i;
   End;
(*--------------------------*)
BEGIN
	Writeln('IN TEN CAC THANG RA MAN HINH');
   Writeln(' Su dung kieu liet ke va mien con');
   Writeln('---------------------------------');
   Repeat
   	Write('-Cho so thu tu cua thang (so 0 de ngung): ');
   	Read(so);
   	Case thang(so) Of
   		Gieng		: Writeln('	-La thang Gieng');
      	Hai		: Writeln('	-La thang Hai');
      	Ba			: Writeln('	-La thang Ba');
      	Tu			: Writeln('	-La thang Tu');
      	Nam		: Writeln('	-La thang Nam');
      	Sau		: Writeln('	-La thang Sau');
      	Bay		: Writeln('	-La thang Bay');
      	Tam		: Writeln('	-La thang Tam');
      	Chin		: Writeln('	-La thang Chin');
      	Muoi		: Writeln('	-La thang Muoi');
      	MuoiMot	: Writeln('	-La thang Muoi mot');
      	MuoiHai	: Writeln('	-La thang Muoi hai');
   	End;
   Writeln;
   Until so=0;
END.