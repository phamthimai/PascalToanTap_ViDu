Program Doi_chu_thuong_ra_chu_hoa;
Var
	St:String;
   i:Byte;
Begin
	Writeln('DOI CHUOI KY TU CHU HOA RA CHU THUONG');
   Writeln('           -----------------');
   Writeln;
   Write('-Nhap chuoi ky tu chu hoa: ');
   Readln(St);
   Writeln;
   Writeln('+Doi ra chuoi chu thuong la');
   Writeln;
   For I:=1 To Length(St) Do
   	Begin
   		If (St[i] >= #65) And (St[i] <= #90) Then
         	St[i] :=Chr(Ord(St[i]) +32);
            Write(St[i]);
      End;
   Writeln;
   Writeln;
	Writeln('    Bam phim <Enter> de ket thuc ');
   Readln
End.