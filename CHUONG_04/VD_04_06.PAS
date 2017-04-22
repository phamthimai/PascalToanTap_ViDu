Program Ca_cuoc;
Var
	Bi_1,Bi_2:(Trang,Den);
   i:Integer;
   Dat_cuoc:Real;
Begin
	Repeat
   	i:=Random(2);
      FillChar(Bi_1,1,i);
      i:=Random(2);
      FillChar(Bi_2,1,i);
      Write('Dat diem ca cuoc (so 0 de ket thuc): ');
      Readln(Dat_cuoc);
      If Dat_cuoc = 0 Then Halt;
      	If (Bi_1=Trang) And (Bi_2=Den) Then
      		Begin
         		Dat_cuoc:=Dat_cuoc * 0.0;
            	Writeln('Vien bi 1 mau trang, Vien bi 2 cung la mau trang');
               Writeln('Ban bi thua het tat ca');
         	End
      	Else  If (Bi_1=Trang) And (Bi_2=Den) Then
      		Begin
         		Dat_cuoc:=Dat_cuoc * (2/3);
            	Writeln('Vien bi 1 mau trang, Vien bi 2 mau den');
               Writeln('Ban bi thua theo ty le 2:3');
         	End
      	Else  If (Bi_1=Den) And (Bi_2=Trang) Then
      		Begin
         		Dat_cuoc:=Dat_cuoc * 1.0;
            	Writeln('Vien bi 1 mau den, Vien bi 2 mau trang');
               Writeln('Van nay hoa 1:1');
         	End
      Else  (* (Bi_1=Den) And (Bi_2=Den) *)
      	Begin
        		Dat_cuoc:=Dat_cuoc * 2.0;
           	Writeln('Vien bi 1 mau den, Vien bi 2 cung mau den');
            Writeln('Ban thang gap doi so diem dat cuoc');
        	End;
      Writeln('Ban nhan duoc : ',Dat_cuoc:0:2,' diem');
      Writeln;
      Writeln;
   Until i > 100;
End.