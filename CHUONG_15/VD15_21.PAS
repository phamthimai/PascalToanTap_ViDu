Program Bang_Luong_Giac;
Var
	F : Text;
   k,n : Word;
   Rad,S,C,T,CT : Real;
   Tde : String;
BEGIN
	Assign(f,'BLGIAC1.DAT');
   Reset(f);
   n := 1;
   Readln(f,Tde);
   Writeln(Tde);
   For k := 1 To 89 Do
   	Begin
      	Readln(f,k,Rad,s,c,t,ct);
         Writeln(k:2,' ',Rad:10:8,' ',S:10:8,' ',C:10:8,' ',
			         T:10:6,' ',CT:10:6);
         n := n+1;
         If n >= 24 Then
         	Begin
            	n := 1;
               Write('   Bam <Enter> de xem tiep ');
               Readln
            End;
      End;
   Write('  Bam <Enter> de ket thuc ');
   Readln;
   Close(f);
END.