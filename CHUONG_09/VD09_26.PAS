Program Cat_ky_tu_trong_o_giua_chuoi;
Var
	St:String;
   i,d1,d2:Byte;
Begin
	Writeln('CAT KY TU TRONG O GIUA CHUOI KY TU');
   Writeln('      --------------------');
   Writeln;
   Write('-Nhap mot chuoi co khoang trong o giua chuoi: ');
   Readln(St);
   Writeln;
   d1:=Length(St); {Chieu dai chuoi truoc khi cat khoang trong}
   Writeln('+Chieu dai chuoi   : ',d1);
   i:=Pos(#32#32,St);
   While i <>0 Do
   	Begin
   		Delete(St,i,1);
         i:=Pos(#32#32,St);
      End;
   d2:=Length(St); {Chieu dai chuoi sau khi da cat khoang trong}
   Writeln('+So ky tu cua chuoi: ',Length(St),' ky tu gom: ',St);
   Writeln('+So ky tu trong    : ',d1-d2);
   Writeln;
   Writeln('    Bam phim bat ky de ket thuc');
   Readln
End.