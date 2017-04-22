Program Tim_Danh_Sach;
Uses Crt;
Label 100;
CONST
	Spt = 5;
VAR
	Ds      : Array[1..Spt] Of String[24];
   HoTen   : String[24];
   Co      : Boolean;
   OK,tiep : Char;
   i       : Integer;

{-------------------------}

	Procedure NhapDs;
   Begin
   	i := 1;
      Writeln('NHAP DU LIEU CHO DANH SACH');
      Writeln('--------------------------');
      Writeln;
      While i <= Spt Do
      	Begin
         	Write('-Ho ten nguoi thu: ',i:2,' = ');
            Readln(Ds[i]);
            i := I + 1;
            Writeln;
         End;
   End;

{-------------------------}

BEGIN
	OK := 'C';
   ClrScr;
   Writeln('TAO VAO TIM TRONG DANH SACH');
   Writeln('----------------------------');
   Writeln;
   While (Upcase(OK) = 'C') Do
   	Begin
      	ClrScr;
      	NhapDS;
         Tiep := 'C';
         While (UpCase(tiep) = 'C') Do
         	Begin
            	ClrScr;
            	Writeln('TIM DANH SACH THEO TEN');
               Writeln;
               Write('-Cho biet ho ten can tim: ');
               Readln(HoTen);
               i := 1;
               While ( i <= Spt) Do
               	Begin
                  	If Ds[i] = HoTen Then
                     	Begin
                        	Writeln;
                           Writeln(HoTen,' la phan tu thu: ',i:2,' cua danh sach');
                           Goto 100;
                        End
                     Else
                     	i := i + 1;
                  End;
               If (i > Spt ) then
               	Writeln(HoTen,'  Khong co trong danh sach');
               100:
               Write(' Co tim tiep khong ? (C/K) ');
               Readln(tiep);
               While (UpCase(Tiep) <> 'C') And (UpCase(tiep) <> 'K') Do
						Begin
                  	Write('Ban phai go c hoac k : ');
                     Readln(Tiep);
                  End;
            End;
         ClrScr;
         Write('Co tiep tuc chuong trinh nua khong? (C/K) ');
         Readln(OK);
         While (UpCase(OK) <> 'C') And (UpCase(OK) <> 'K') Do
				Begin
            	Write('-Ban phai go c hoa k: ');
               Readln(OK);
				End;
      End;
END.
