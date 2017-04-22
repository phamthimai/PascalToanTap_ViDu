Program Trung_binh_cong;
	Const
   	Max = 100;
	Var
		So:Array[1..Max] Of Integer;
      Tong,i:Integer;
      Tb:Real;
Begin
	Writeln('TINH TRUNG BINH CONG 100 SO NGUYEN');
   Writeln('        --------------');
   Tong:=0;
   Tb:=0.0;
   For i:= 1 To Max Do
   	Begin
      	Write('-So thu: ',i:2,' = ');
         Readln(So[i]);
         Tong:=Tong+So[i];
      End;
   Tb:=Tong / Max;
   Writeln;
   Writeln('+Tri trung binh cong cua: ',Max:3,' so nguyen = ',Tb:8:2);
   Readln
End.