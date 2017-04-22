Program Tham_khao_truoc;
Var
	x:Integer;
   FUNCTION Up(Var i: Integer):Integer; Forward;
   FUNCTION Down(Var i: Integer): Integer;
   Begin
   	i:=i Div 2;
      Writeln(i);
      If i <> 1 Then
      	i:=Up(i);
   End;
   FUNCTION Up;
   Begin
   	While i Mod 2 <> 0 Do
      	Begin
         	i:=i * 3 + 1;
            Writeln(i);
         End;
      i:=Down(i);
   End;
BEGIN
	Writeln('MINH HOA VE THAM KHAO TRUOC');
   Writeln('----------------------------');
	Write('-Nhap mot so nguyen bat ky: ');
   Readln(x);
   x:=Up(x);
   Writeln;
   Write('   Bam phim <Enter> de ket thuc');
   Readln
END.