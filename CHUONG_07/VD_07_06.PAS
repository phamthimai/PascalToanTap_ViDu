Program Cac_Ham;
TYPE
	Ngay=(ThuHai,ThuBa,ThuTu,ThuNam,ThuSau,ThuBay,ChuNhat);
Var
	Thu:Ngay;
Begin
   Writeln('         CAC HAM CUA KIEU LIET KE ');
   Writeln('             Tri dau tien la 0');
   Writeln('         -------------------------');
   Writeln;
   Writeln('     Cac gia tri cua kieu liet ke <Ngay>');
   Writeln;
   Writeln('ThuHai,ThuBa,ThuTu,ThuNam,ThuSau,ThuBay,ChuNhat');
   Write('  ');
   For Thu:=ThuHai To ChuNhat Do
   	Begin
			Write(Ord(Thu));
         Write('      ');
      End;
   Writeln;
   Thu:=ThuBa;
   Writeln;
   Write('       ');
   Write(Ord(Thu));
   Write('   la tri cua Ord(ThuBa)');
   writeln;
   Write('       ');
   Write(Succ(Ord(thu)));
   Write('   la tri cua Succ(ThuBa)');
   Writeln;
   Write('       ');
   Write(Pred(Ord(Thu)));
   Write('   la tri cua Pred(ThuBa)') ;
   Writeln;
   Writeln;
   Write('      Bam phim <Enter> de ket thuc ');
   Readln
End.