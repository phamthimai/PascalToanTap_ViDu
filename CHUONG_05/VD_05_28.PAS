Program Menu;
Var
	chon:Byte;
   ketthuc:Boolean;
   a,b,h,r:Integer;
   s:Real;
Begin
	Repeat
   	ketthuc:=False;
		Writeln('                   TAO MENU');
   	Writeln('                   --------');
   	Writeln('                1-Hinh vuong');
   	Writeln('                2-Hinh chu nhat');
   	Writeln('                3-Hinh tam giac');
   	Writeln('                4-Hinh thang');
   	Writeln('                5-Hinh tron');
   	Writeln('                6-Ket thuc');
   	Writeln;
   	Repeat
   		Write('        Chon cong viec nao (go tu 1 den 6) : ');
   		Readln(chon);
   	Until (chon >=1) And (chon <=6);
   	Case chon Of
   		1:Begin
			  	Writeln('TINH DIEN TICH HINH VUONG');
        	  	Writeln('-------------------------');
           	Write('-Nhap canh hinh vuong: ');
           	Readln(a);
           	s:=a*a;
           	Writeln('+Dien tich hinh vuong = ',S:6:2);
           End;
         2:Begin
				Writeln('TINH DIEN TICH HINH CHU NHAT');
        	  	Writeln('-------------------------');
           	Write('-Nhap chieu dai: ');
           	Readln(a);
           	Write('-Nhap chieu rong: ');
           	Readln(b);
           	s:=a*b;
           	Writeln('+Dien tich hinh chu nhat = ',S:6:2);
           End;
         3:Begin
				Writeln('TINH DIEN TICH HINH TAM GIAC');
        	  	Writeln('-------------------------');
           	Write('-Nhap canh day: ');
           	Readln(a);
           	Write('-Nhap chieu cao: ');
           	Readln(h);
           	s:=a*h/2;
           	Writeln('+Dien tich hinh tam giac = ',S:6:2);
           End;
         4:Begin
				Writeln('TINH DIEN TICH HINH THANG');
        	  	Writeln('-------------------------');
           	Write('-Nhap canh day dai: ');
           	Readln(a);
           	Write('-Nhap canh day ngan: ');
           	Readln(b);
           	Write('-Nhap chieu cao: ');
           	Readln(h);
           	s:=0.5*(a+b)*h;
           	Writeln('+Dien tich hinh thang = ',S:6:2);
           End;
         5:Begin
				Writeln('TINH DIEN TICH HINH TRON');
        	  	Writeln('-------------------------');
           	Write('-Nhap ban kinh: ');
           	Readln(r);
           	s:=r*r*pi;
           	Writeln('+Dien tich hinh tron = ',S:6:2);
           End;
         6:Ketthuc:=True;
      End;
      Until ketthuc;
      Writeln;
      Writeln('   Bam phim <Enter> de ket thuc');
      Readln
   End.


   Readln;
End.