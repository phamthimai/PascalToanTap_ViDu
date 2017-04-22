Program Khai_bao_tuong_minh;
Var
   Holot: String[17];
   Ten  : String[7];
   Noi_sinh: String[20];
   Dia_chi: String[20];
   do_dai1,do_dai2,do_dai3,do_dai4:Integer;
Begin
   Write('-Cho biet ho lot: ');
   Readln(holot);
   Write('-Cho biet ten: ');
   Readln(Ten);
   Write('-Cho biet noi sinh: ');
   Readln(Noi_sinh);
   Write('-Cho biet dia chi: ');
   Readln(Dia_chi);
   do_dai1:=Ord(holot[0]);
   holot[0]:=Char(do_dai1);
   Writeln('+Do dai cua bien Holot la: ',do_dai1);
   Writeln('+Ky tu bieu dien do dai cua bien holot la: ',holot[0]);
   do_dai2:=Ord(ten[0]);
   ten[0]:=Char(do_dai2);
   Writeln('+Do dai cua bien Ten la: ',do_dai2);
   Writeln('+Ky tu bieu dien do dai cua bien Ten la: ',Ten[0]);
   do_dai3:=Ord(Noi_sinh[0]);
   Noi_sinh[0]:=Char(do_dai3);
   Writeln('+Do dai cua bien Noi_sinh la: ',do_dai3);
   Writeln('+Ky tu bieu dien do dai cua bien Noi_sinh la: ',Noi_sinh[0]);
   do_dai4:=Ord(Dia_chi[0]);
   Dia_chi[0]:=Char(do_dai4);
   Writeln('+Do dai cua bien Dia_chi la: ',do_dai4);
   Writeln('+Ky tu bieu dien do dai cua bien Dia_chi la: ',Dia_chi[0]);
   Readln
End.
