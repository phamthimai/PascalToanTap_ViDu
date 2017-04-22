Program Cat_ky_tu_trong_ben_trai_chuoi;
Var
	St:String;
   i,d1,d2:Byte;
Begin
	Writeln('CAT KY TU TRONG O BEN PHAI CHUOI KY TU');
   Writeln('         --------------------');
   Writeln;
   Write('-Nhap mot chuoi co khoang trong o ben phai: ');
   Readln(St);
   Writeln;
   d1:=Length(St); {Chieu dai chuoi truoc khi cat khoang trong}
   Writeln('+Chieu dai chuoi   : ',d1);
   i:=Length(St);
   While St[i] = #32 Do
   	Dec(i);
   St[0]:=Chr(i);
   d2:=Length(St); {Chieu dai chuoi sau khi da cat khoang trong}
   Writeln('+So ky tu cua chuoi: ',Length(St),' ky tu gom: ',St);
   Writeln('+So ky tu trong    : ',d1-d2);
   Writeln;
   Writeln('    Bam phim bat ky de ket thuc');
   Readln
End.