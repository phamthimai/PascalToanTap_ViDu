Program Phep_toan_quan_he;
TYPE
	Taphop=Set of 0..9;
Var
	a,b:Taphop;
   c,d,e,f:Set of(Xuan,Ha,Thu,Dong);
   kq:Boolean;
Begin
	Writeln('MINH HOA CAC PHEP TOAN QUAN HE');
   Writeln('------------------------------');
   Writeln;
	a:=[1,3,5,7];
   b:=[1,3,5,7];
   c:=[Xuan,Ha,Thu,Dong];
   d:=[Xuan,Thu];
   e:=[Ha,Dong];
   f:=[Xuan,Ha,Thu,Dong];
   If (a = b) Then
   	Begin
      	Writeln('A:=[1,3,5,7]');
         Writeln('B:=[1,3,5,7]');
   		Writeln('     *A = B  ---> TRUE');
      End
   Else
   	Begin
         Writeln('A:=[1,3,5,7]');
         Writeln('B:=[1,3,5,7]');
   		Writeln('     *A <> B ---> TRUE');
      End;
   If (c >= d) Then
   	Begin
         Writeln('C:=[Xuan,Ha,Thu,Dong]');
         Writeln('D:=[Ha,Dong]');
      	Writeln('     *C >= D ---> TRUE')
      End
   Else
      Begin
         Writeln('C:=[Xuan,Ha,Thu,Dong]');
         Writeln('D:=[Ha,Dong]');
         Writeln('     *C <= D ---> TRUE')
      End;
   If (e >= f) Then
   	Begin
         Writeln('E:=[Xuan,Thu]');
         Writeln('F:=[Xuan,Ha,Thu,Dong]');
      	Writeln('     *E >= F ---> TRUE')
      End
   Else
      Begin
         Writeln('E:=[Xuan,Thu]');
         Writeln('F:=[Xuan,Ha,Thu,Dong]');
         Writeln('     *E <= F ---> TRUE')
      End;
    If 'u' in['X','u','a','n'] Then
    	kq:=True
    Else
      kq:=False;
   Writeln('     *''u'' in[''X'',''u'',''a'',''n'']--->',kq);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.