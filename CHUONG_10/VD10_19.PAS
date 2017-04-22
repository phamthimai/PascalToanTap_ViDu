Program Gt_Noi_bot;
	Uses Crt;
	Const
   	Max=10;
   Type
   	Diem=Byte;
   	Mang = Array[1..Max] Of Diem;
   Var
   	Hs:Mang;
      So:Byte;
   {-------------------}
   Function Behon(Var X,Y : Diem): Boolean;
   Begin
   	Behon:= X < Y;
   End;
   {-------------------}
   Procedure Hoanvi(Var X,Y : Byte);
   	Var
      	Tam:Byte;
   Begin
   	Tam:=X;
      X:=Y;
      Y:=Tam;
   End;
   {-------------------}
   Procedure Xuat(A:Mang; N: Byte);
   	Var
      	i,hang:Byte;
   Begin
   	hang:=1;
   	For i:= 1 to N Do
      	Begin
      		If (i >=2) And (a[i] <> a[i-1]) Then
					hang:=i;
				Writeln('-Diem: ',a[i]:2,' Hang: ',hang:2);
         End;
   End;
   {-------------------}
   Procedure Nhap(Var  A: Mang; Var N: Byte);
   	Var
         i:Byte;
   Begin
   	i:=1;
      Writeln('   NHAP DIEM CUA : ',MAX:2,' HOC SINH');
      Writeln('          ----------------');
   	Write('-Nhap diem cua nguoi thu: ',i:2,' = ');
      Readln(a[i]);
      While i <  Max Do
      Begin
      	i:=i+1;
      	Write('-Nhap diem cua nguoi thu: ',i:2,' = ');
      	Readln(a[i]);
      End;
      n:=i;
      Writeln;
      Write('  *Bam phin <Enter> de xem danh sach sap xep');
      Readln
   End;
	{-------------------}

   Procedure Noibot(Var A: Mang; n: Byte);
   	Var
      	i,j:Byte;
   Begin
   	For j:=n DownTo 2 Do
      	For i:= 1 To j -1 Do
         	If Behon(A[i+1], A[i]) Then
            	Hoanvi(A[i+1], A[i]);
   End;
   {-------------------}
BEGIN
	ClrScr;
   Writeln('GIAI THUAT NOI BOT');
   Writeln('------------------');
   Writeln;
	Nhap(Hs, so);
   Noibot(Hs,so);
   Xuat(Hs,so);
   Writeln;
   Writeln('    Bam phim <Enter> de ket thuc');
   Readln
END.
