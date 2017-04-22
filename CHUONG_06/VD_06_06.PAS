Program Uoc_so_chung;
Uses Crt;
Var
	so1,so2,usc:Integer;
   tiep:Char;
   (*----------------*)
   Procedure gioi_thieu;
   	Begin
         ClrScr;
         TextColor(Red);
         TextBackGround(Black);
      	Writeln('**************************************');
      	Writeln('*     MINH HOA CHUONG TRINH CON      *');
         Writeln('*  Su khac nhau giua Thu tuc va Ham  *');
         Writeln('* Tim uoc so chung lon nhat cua 2 so *');
         Writeln('*  Ngay viet chuong trinh 24-3-1999  *');
         Writeln('**************************************');
         Writeln;
      End;
   (*----------------*)
   Procedure Nhap_so;
   	Var
   		sua:Char;
   	Begin
         TextColor(Yellow);
         TextBackGround(Black);
      	Repeat
      		Write('-Nhap so thu nhat: ');
         	Readln(so1);
         	Write('-Nhap so thu hai : ');
         	Readln(so2);
            TextColor(Cyan);
            TextBackGround(Black);
            Write('-Co can sua khong (c/k) ? ');
            Readln(sua);
         Until Upcase(sua) ='K';
         Writeln;
      End;
   (*----------------*)
   Function uoc_so(x,y:Integer):Integer;
   	Begin
      	Repeat
         	If x > y Then
            	x:=x-y
            Else
            	y:=y-x;
         Until x=y;
         usc:=x;
      End;
   (*----------------*)
   Procedure Xuat;
   	Begin
         TextColor(Magenta);
         TextBackGround(Black);
      	Writeln('+Uoc so chung lon nhat cua');
         Writeln('   So ',so1,' va ',so2,' la: ',usc);
         Writeln;
      End;
   (*----------------*)
BEGIN
	Repeat
   	Gioi_thieu;
   	Nhap_so;
   	uoc_so(so1,so2);
   	Xuat;
      TextColor(Green);
      TextBackGround(Black);
   	Write('-Co thuc hien tiep nua khong (c/k)? ');
      Readln(tiep);
   Until (tiep = 'k') Or (tiep = 'K');
END.