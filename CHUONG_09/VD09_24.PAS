Program Cat_ky_tu_trong_ben_trai_chuoi;
Var
	St:String;
   i:Byte;
Begin
	Writeln('CAT KY TU TRONG O BEN TRAI CHUOI KY TU');
   Writeln('         --------------------');
   Writeln;
   Write('-Nhap mot chuoi co khoang trong o ben trai: ');
   Readln(St);
   Writeln;
   Writeln('+Chieu dai chuoi   : ',Length(St));
   i:=1;
   While St[i] = #32 Do
   	Inc(i);
   Delete(St,1,(i-1));
   Writeln('+So ky tu cua chuoi: ',Length(St),' ky tu gom: ',St);
   Writeln('+So ky tu trong    : ',i-1);
   Writeln;
   Writeln('    Bam phim <Enter> ky de ket thuc');
   Readln
End.