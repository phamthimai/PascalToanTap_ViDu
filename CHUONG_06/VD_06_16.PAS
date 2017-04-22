Program Kiem_tra_kieu_tham_so;
 {$V-} {Neu bo chi thi nay se gap loi Type Mismatch}
TYPE
	Chuoi=String[255]; {Khai bao kieu du lieu moi}
Var
	dong1:String[80];
   dong2:String[100];
   (*------------------*)
   Procedure In_Chuoi(Var x :Chuoi);
   Var
   	i:Integer;
   Begin
   	For i:=1 To length(x) Do
      Write(chr(Ord(x[i])));
   End;
BEGIN
	Writeln('KIEM TRA KIEU CUA THAM SO');
   Writeln('-------------------------');
   dong1:='Tram nam trong coi nguoi ta';
   In_Chuoi(dong1);
   Writeln;
   dong2:='Chu tai chu menh kheo la ghet nhau';
   In_chuoi(dong2);
   Readln;
END.
