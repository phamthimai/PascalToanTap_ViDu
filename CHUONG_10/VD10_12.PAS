Program Nhap_xuat;
	Const
   	So_be =3;
      Loai_bi =4;
   Var
   	a:Array[1..So_be, 1..Loai_bi] Of Integer;
      i,j,tong:Integer;
Begin
	Writeln('TINH TONG SO BI CUA TUNG BE VA TONG SO BI');
	Writeln('-------------------');
	For i:=1 To So_be Do
		Begin
      	Writeln('*SO BI,BE THU: ',i:2,' MUON CO');
         For j:=1 To Loai_bi Do
         	Begin
            	Write('-Loai bi (1:Xanh, 2:Do, 3:Tim, 4:Vang) thu: ',j,' = ');
               Readln(a[i,j]);
            End;
		End;
   For i:=1 To So_be Do
   	Begin
      	Tong:=0;
         For j:=1 To Loai_bi Do
         	Tong:=Tong+a[i,j];
         Writeln('+Tong so bi cua be thu: ',i:2,' da lay= ',Tong);
      End;
   For j:=1 To Loai_bi Do
   	Begin
      	Tong:=0;
         For i:=1 To So_be Do
         	Tong:=Tong+a[i,j];
         Writeln('+Tong so bi loai: ',j:2,' da lay= ',Tong);
      End;
   Readln
End.