Program Nhap_thang_ngay_nam;
Var
	ngay,thang,nam,ngayMax:Integer;
Begin
	Writeln('SU DUNG BAY LOI VA HAM IOResult');
	Writeln('---------------');
	{$I-}
	Repeat
   	Write('-Nhap nam: ');
      Readln(nam);
	Until(IOResult = 0) And (Nam >=1900) and (nam <=2000);
   Repeat
   	Write('-Nhap thang: ');
      Readln(thang);
   Until (IOResult = 0) And (thang >=1) And (thang <=12);
   Case thang Of
   	1,3,5,7,8,10,12	:ngayMax:=31;
      4,6,7,9,11			:ngayMax:=30;
   Else
   	If (nam Mod 4 =0 ) Then
      	ngayMax :=29
      Else
      	ngayMax :=28;
   End;
   Repeat
   	Write('-Nhap ngay: ');
      Readln(ngay);
   Until (IOResult = 0) And (ngay >1) And (ngay <=ngayMax);
   {$I+}
   Writeln('Ngay ',ngay,',thang ',thang,',nam ',nam);
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.
