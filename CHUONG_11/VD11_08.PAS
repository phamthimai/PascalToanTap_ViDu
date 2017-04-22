Program Xep_hang;
	TYPE
   	Hocky= RECORD
      	Holot:String[17];
         Ten:String[7];
         Van,Toan,Ly,Hoa:Real;
         END;
   VAR
   	HS:Hocky;
      tb:Real;
Begin
	Writeln('SU DUNG CAU LENH WITH');
   Writeln('   XEP HANG HOC KY');
   Writeln('  ---------------');
   Writeln;
   With HS Do
   	Begin
   		Write('-Ho lot: ');
   		Readln(Holot);
   		Write('-Ten: ');
   		Readln(Ten);
   		Write('-Diem Van: ');
   		Readln(Van);
   		Write('-Diem Toan: ');
   		Readln(Toan);
   		Write('-Diem Ly: ');
   		Readln(Ly);
   		Write('-Diem Hoa: ');
   		Readln(Hoa);
      End;
   With HS Do
   	Begin
   		Tb:=((Van*2 + Toan*2) + Ly + Hoa)/6;
   		If Tb < 5 Then
   			Begin
      			Writeln('+Ho va ten: ',Holot,' ',Ten);
         		Writeln('+Diem trung binh: ',Tb:4:2);
         		Writeln('+Xep hang kem');
      		End
   		Else
   			If tb <= 6.5 Then
      			Begin
      				Writeln('+Ho va ten: ',Holot,' ',Ten);
            		Writeln('+Diem trung binh: ',Tb:4:2);
         			Writeln('+Xep hang Trung binh');
      			End
      		Else
         		If tb <= 8.0 Then
      				Begin
      					Writeln('+Ho va ten: ',Holot,' ',Ten);
               		Writeln('+Diem trung binh: ',Tb:4:2);
         				Writeln('+Xep hang Kha');
      				End
      			Else
      				If tb <= 9.5 Then
      					Begin
      						Writeln('+Ho va ten: ',Holot,' ',Ten);
                  		Writeln('+Diem trung binh: ',Tb:4:2);
         					Writeln('+Xep hang Gioi');
      					End
      				Else
            			Begin
      						Writeln('+Ho va ten: ',Holot,' ',Ten);
                  		Writeln('+Diem trung binh: ',Tb:4:2);
         					Writeln('+Xep hang Xuat sac');
      					End;
      End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.