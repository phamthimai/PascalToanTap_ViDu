Program Tao_so_ngau_nhien;
	Const
   	Max=99;
   Type
   	MangNguyen=Array[0..Max] Of Boolean;
   Var
   	b:MangNguyen;
	Procedure Tao_so(Var br:MangNguyen);
   	Var
      	i,Tam:Integer;
      Begin
      	Writeln;
         For i:=0 To Max Do
         	br[i]:=False;
         Randomize;
         For i:=0 To Max Do
         	Begin
            	Repeat
               	Tam:=Random(Max+1);
               Until Not br[tam];
               br[Tam]:=True;
               Write(Tam:4);
            End;
      End;
BEGIN
	Tao_so(b);
   Readln;
END.