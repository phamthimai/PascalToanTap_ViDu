Program Mang_ky_tu;
{$V-}
	Type
		Bon_Mua=(Xuan, Ha, Thu, Dong);
   	Str4=String[4];
	Var
		Mua :Bon_Mua;
   	Tenmua:Array[Bon_Mua] Of Str4;
   	St:Str4;
   	i:Integer;
	Procedure Doi_chu(Var ss :String);
   	Var
      	i,kt:Integer;
      Begin
      	kt:=Length(SS);
         For i:=1 To kt Do
         	SS[i]:=UpCase(ss[i]);
      End;

BEGIN
	Tenmua[Xuan]:='XUAN';
   Tenmua[Ha]:='HA';
   Tenmua[Thu]:='THU';
   Tenmua[Dong]:='DONG';
   Write('-Hay chon mua: ');
   Readln(St);
   Doi_chu(St);
   While St <> Tenmua[Mua] Do
   	Mua:=Succ(Mua);
   Writeln(Tenmua[Mua]);
   Readln;

END.