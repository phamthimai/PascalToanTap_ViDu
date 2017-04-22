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
	Writeln('NHAP XUAT DU LIEU TUONG MINH');
   Writeln('     XEP HANG HOC KY');
   Writeln('     ---------------');
   Writeln;
   Write('-Ho lot: ');
   Readln(hs.Holot);
   Write('-Ten: ');
   Readln(hs.Ten);
   Write('-Diem Van: ');
   Readln(hs.Van);
   Write('-Diem Toan: ');
   Readln(hs.Toan);
   Write('-Diem Ly: ');
   Readln(hs.Ly);
   Write('-Diem Hoa: ');
   Readln(hs.Hoa);
   Tb:=((Hs.Van*2 + Hs.Toan*2) + Hs.Ly + Hs.Hoa)/6;
   If Tb < 5 Then
   	Begin
      	Writeln('+Ho va ten: ',hs.Holot,' ',hs.Ten);
         Writeln('+Diem trung binh: ',Tb:4:2);
         Writeln('+Xep hang kem');
      End
   Else
   	If tb <= 6.5 Then
      	Begin
      		Writeln('+Ho va ten: ',hs.Holot,' ',hs.Ten);
            Writeln('+Diem trung binh: ',Tb:4:2);
         	Writeln('+Xep hang Trung binh');
      	End
      Else
         If tb <= 8.0 Then
      		Begin
      			Writeln('+Ho va ten: ',hs.Holot,' ',hs.Ten);
               Writeln('+Diem trung binh: ',Tb:4:2);
         		Writeln('+Xep hang Kha');
      		End
      	Else
      		If tb <= 9.5 Then
      			Begin
      				Writeln('+Ho va ten: ',hs.Holot,' ',hs.Ten);
                  Writeln('+Diem trung binh: ',Tb:4:2);
         			Writeln('+Xep hang Gioi');
      			End
      		Else
            	Begin
      				Writeln('+Ho va ten: ',hs.Holot,' ',hs.Ten);
                  Writeln('+Diem trung binh: ',Tb:4:2);
         			Writeln('+Xep hang Xuat sac');
      			End;
   Writeln;
   Writeln('   Bam phim <Enter> de ket thuc');
   Readln
End.