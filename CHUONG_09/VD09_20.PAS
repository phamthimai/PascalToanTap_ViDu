Program Doi_chu_hoa_ra_chu_thuong;
Var
	ch:Char;
Begin
	Writeln('DOI KY TU CHU HOA RA CHU THUONG');
   Writeln('      -----------------');
   Writeln;
   Write('-Nhap ky tu chu hoa: ');
   Readln(ch);
   If (Ch >= #65) And (Ch <= #90) Then
   	Ch:= Chr(Ord(Ch)+32);
	Writeln;
   Writeln('+Doi thanh chu thuong: ',Ch);
   Readln
End.