Program Tim_Tuan_Tu;
	Uses Crt;
	Const
   	Max= 100;
   Type
   	Mang=Array[1..Max] Of Integer;
   Var
   	Pti: Mang;
      So:Integer;
{-----------------------------------}
   Function TuanTu(X:Integer; A:Mang;N:Integer):Integer;
   	Var
      	i:Integer;
   Begin
   	i:=1;
      While (i <=N) And Not(X=A[i]) Do
      	Inc(i);
      If i <=N Then
      	TuanTu:=i
      Else
      	TuanTu:=0;
   End;
{-----------------------------------}
	Procedure TaoMang(Var A:Mang; N:Integer);
   	Var
      	i:Integer;
   Begin
   	Randomize;
      For i:= 1 To N Do
      	A[i]:=Random(3000);
   End;
{-----------------------------------}
	Procedure InMang(A:Mang; N:Integer);
   	Var
      	i:Integer;
   Begin
   	For i:= 1 To N Do
      	Write(A[i]:8);
      Writeln;
   End;
{-----------------------------------}
	Procedure TimX(X:Integer; A:Mang; N:Integer);
   	Var
      	j:Integer;
   Begin
   	j:=TuanTu(X,A,N);
      If j <> 0 Then
      	Writeln('So: ',X:3,' la gia tri cua phan tu thu: ',j:2)
      Else
      	Writeln('Khong co phan tu nao bang so : ',So);
      Writeln;
   End;
{-----------------------------------}
BEGIN
	ClrScr;
	Writeln('GIAI THUAT TIM KIEM TUAN TU');
   Writeln('---------------------------');
   Writeln;
   Writeln('-Tao 100 so ngau nhien');
   TaoMang(Pti,100);
   Write('-Bam phim <Enter> de in mang ');
   Readln;
   InMang(Pti,100);
   Repeat
   	Writeln;
   	Write('-Ban can tim so nao: ');
      Readln(So);
      TimX(So,Pti,100);
      Write('Bam <Enter> de tim so khac, <Esc> de cham dut ');
   Until Readkey = #27;
END.