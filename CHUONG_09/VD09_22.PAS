Program Doi_chu_thuong_ra_chu_hoa;
Var
	St:String;
   i:Byte;
Begin
	Writeln('DOI CHUOI KY TU CHU THUONG RA CHU HOA');
   Writeln('           -----------------');
   Writeln;
   Write('-Nhap chuoi ky tu chu thuong: ');
   Readln(St);
   Writeln;
   Writeln('+Doi ra chuoi chu hoa la');
   Writeln;
   For I:=1 To Length(St) Do
   	Begin
   		St[i]:= UpCase(St[i]);
         Write(St[i]);
      End;
   Writeln;
   Writeln;
	Writeln('    Bam phim <Enter> de ket thuc ');
   Readln
End.