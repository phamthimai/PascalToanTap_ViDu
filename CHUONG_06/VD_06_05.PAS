Program Phep_tinh_so_hoc;
Var
	x,y:Integer;
   phep_tinh,tiep:Char;
	(*---------------------*)
   FUNCTION CONG(a,b:Integer):Integer;
   Begin
   	cong:=a+b;
   End;
   (*---------------------*)
   FUNCTION TRU(a,b:Integer):Integer;
   Begin
   	tru:=a-b;
   End;
   (*---------------------*)
   FUNCTION NHAN(a,b:Integer):Integer;
   Begin
   	nhan:=a*b;
   End;
   (*---------------------*)
   FUNCTION CHIA(a,b:Integer):Integer;
   Begin
   	chia:=a DIV b;
   End;
BEGIN
	Repeat
		Writeln('CAC PHEP TOAN SO HOC');
   	Writeln('--------------------');
   	Write('-Nhap so thu nhat: ');
   	Readln(x);
   	Write('-Nhap so thu hai : ');
   	Readln(y);
   	Write('-Nhap phep tinh (+,-,*,/): ');
   	Readln(phep_tinh);
   	Case phep_tinh Of
   		'+'	:Writeln('+So ',X,' + ',Y,' = ',cong(x,y):5);
      	'-'	:Writeln('+So ',X,' - ',Y,' = ',tru(x,y):5);
      	'*'	:Writeln('+So ',X,' * ',Y,' = ',nhan(x,y):5);
      	'/'	:Writeln('+So ',X,' / ',Y,' = ',chia(x,y):5);
   	End;
   	Writeln;
   	Write('   Co thuc hien tiep khong (c/k) ');
      Readln(tiep);
   Until Upcase(tiep)='K';
END.