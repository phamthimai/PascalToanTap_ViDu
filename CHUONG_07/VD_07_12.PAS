Program Khai_Can;
CONST
	Gach= '|';
   dong='---------------------------------------------';
   Ten='               BANG KHAI CAN';
   Tde='| N |  CAN BAC 2 |  CAN BAC 3  |  CAN BAC 4 |';
Var
	i:0..9;
   n:1..100;
   can2,can3,can4:Real;
Begin
	Writeln('BANG KHAI CAN BAC 2,BAC 3, BAC 4');
   Writeln('Vua khai bao bien, vua dinh nghia kieu');
   Writeln('---------------------------------------');
   For i:=1 To 9 Do
   	Begin
      	Writeln;
         Writeln(ten);
         Writeln;
         Writeln(dong);
         Writeln(tde);
         Writeln(dong);
         For n:=10*i+1 To 10*(i+1) Do
         	Begin
            	Can2:=Sqrt(n);
               Can3:=Exp(Ln(n)/3);
               Can4:=Exp(Ln(n)/4);
               Writeln(Gach,n:3,Gach,Can2:11:8,' ',Gach, can3:12:8,
               		' ',Gach,Can4:12:8,Gach);
            End;
         Writeln(dong);
         Writeln;
         Write('       Bam phim <Enter> de xem tiep ');
         Readln;
      End;
End.