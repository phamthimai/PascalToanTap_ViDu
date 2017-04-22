Program Phep_gan_chuoi;
Var
   Holot,ten:String;
   Que_quan:String[16];
   i,n:Integer;
Begin
	Writeln('Gan gia tri cho bien chuoi');
   Writeln('      +++++++++++++');
   Write('-Cho biet ho lot: ');
   Readln(Holot);
   Write('-Cho biet ten: ');
   Readln(ten);
   Write('-Cho biet que quan: ');
   Readln(Que_quan);
   n:=length(que_quan);
   Writeln;
   Writeln(Holot,' ',ten);
   Writeln(Que_quan);
   Writeln;
   Write('-Ban muon truy xuat den ky tu nao cua bien Que_quan: ');
   Readln(i);
   While i <= n Do
   	Begin
      	If i < n Then
         	Writeln('+Ky tu thu: ',i,' la chu: ',Que_quan[i]);
            Write('-Ban muon truy xuat den ky tu nao cua bien Que_quan: ');
   			Readln(i);
      End;
   Writeln('           Bam phim <Enter> de ket thuc');
   Readln
End.
