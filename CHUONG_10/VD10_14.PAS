Program Ma_tran_Chuyen_Vi;
	Uses Crt;
	Const
   	Max=10;
   Var
   	a:Array[1..Max, 1..Max] Of Integer;
   Procedure Tao;
   	Var
      j,k:Integer;
   Begin
   	Randomize;
      For k:=1 To Max Do
      	For j:= 1 To Max Do
         	a[k,j]:=Random(100);
   End;
   {----------------}
   Procedure Xuat;
   	Var
      	k,j:Integer;
   Begin
   	Window(5,3,36,24);
   	For k:=1 to Max Do
      	Begin
         	For j:=1 To Max Do
            	Write(a[k,j]:3);
            Writeln(#10);
         End;
      Window(45,3,76,24);
      For k:=1 To Max Do
      	Begin
         	If Odd(k) Then
            	For j:= 1 To Max Do
               	Write(a[k,j]:3)
            Else
            	For J:=Max Downto 1 Do
               	Write(a[k,j]:3);
            Writeln(#10);
         End;
   End;
BEGIN
	ClrScr;
   Writeln('CHUYEN VI PHAN TU CUA MA TRAN');
   Writeln('     --------------');
   Tao;
   Xuat;
   Readln
END.