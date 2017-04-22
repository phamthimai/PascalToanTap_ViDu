Program Gt_Chon;
	Uses Crt;
	Const
   	Max=10;
   Type
   	Hoten=String[24];
   	Mang = Array[1..Max] Of Hoten;
   Var
   	Hs:Mang;
      So:Byte;
   {-------------------}
   Function ChuHoa(St:String):String;
		Var
      	i:Byte;
   Begin
   	For i:=1 To Length(St) Do
      	St[i] := UpCase(St[i]);
         ChuHoa:=St;
   End;
	{-------------------}
   Function Behon(Var X,Y : Hoten): Boolean;
   Begin
   	Behon:= ChuHoa(X) < ChuHoa(Y);
   End;
   {-------------------}
   Procedure Hoanvi(Var X,Y : Hoten);
   	Var
      	Tam:Hoten;
   Begin
   	Tam:=X;
      X:=Y;
      Y:=Tam;
   End;
   {-------------------}
   Procedure Chon(Var A: Mang; n: Byte);
   	Var
      	i,j:Byte;
   Begin
   	For i:=1 To N-1 Do
      	For j:= i To n Do
         	If Behon(A[j], A[i]) Then
            	Hoanvi(A[i], A[j]);
   End;
   {-------------------}
   Procedure Nhap(Var  A: Mang; Var N: Byte);
   	Var
      	Ch:Char;
         i:Byte;
   Begin
   	i:=1;
      Writeln('   NHAP DANH SACH: ',MAX:2,' NGUOI');
      Writeln('          ----------------');
   	Write('-Nhap ho ten nguoi thu: ',i:2,' = ');
      Readln(a[i]);
      While i <  Max Do
      Begin
      	i:=i+1;
      	Write('-Nhap ho ten nguoi thu: ',i:2,' = ');
      	Readln(a[i]);
      End;
      n:=i;
      Writeln;
      Write('  *Bam phin <Enter> de xem danh sach sap xep');
      Readln
   End;
	{-------------------}
   Procedure Xuat(A:Mang; N: Byte);
   	Var
      	i:Byte;
   Begin
   	For i:= 1 to N Do
      	Writeln(a[i]);
   End;
   {-------------------}
BEGIN
	ClrScr;
   Writeln('GIAI THUAT CHON');
   Writeln('---------------');
	Nhap(Hs, so);
   Chon(Hs,so);
   Xuat(Hs,so);
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
END.
