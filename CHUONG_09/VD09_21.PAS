Program Doi_chu_hoa_ra_chu_thuong;
Var
	ch:Char;
Begin
	Writeln('DOI KY TU CHU HOA RA CHU THUONG');
   Writeln('      -----------------');
   Writeln;
   Write('-Nhap ky tu chu hoa: ');
   Readln(ch);
   If (Ch >= 'A') And (Ch <= 'Z') Then
   	Ch:= Chr(Ord(Ch)+Ord('a') - Ord('A'));
	Writeln;
   Writeln('+Doi thanh chu thuong: ',Ch);
   Readln
End.