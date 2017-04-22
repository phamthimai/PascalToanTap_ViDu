Program Khai_bao_2;
Var
	so:0..9;
   n,n1,conso:Integer;
   SoChon: Set of 0..9;
Begin
	Writeln('VUA DING NGHIA KIEU, VUA KHAI BAO BIEN');
   Writeln('--------------------------------------');
   Write('-Nhap so N= ');
   Readln(n);
   n1:=n;
   Sochon:=[];
   Conso:=0;
   Repeat
   	so:=n Mod 10;
   	If not(so in sochon) Then
			Begin
         	Conso:=Conso+1;
            Sochon:=Sochon + [so];
			End;
      n:=n Div 10;
   Until n = 0;
   Writeln('*So ',n1,' co ',Conso,' ky so thanh phan');
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.