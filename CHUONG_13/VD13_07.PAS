Program Danh_Sach_Da_Lien_ket;
Uses Crt;
TYPE
	NodePtr = ^NodeType;
   NodeType = RECORD
   	HoTen    : String[24];
      DiaChi   : String[20];
      ChucVu   : String[15];
      DonVi    : String[20];
      Pre,Next : NodePtr;
      End;
VAR
	First, Last, P,F: NodePtr;
   Ch : Char;
{-------------------------------------}
	Procedure Noi;
{-------------------------------------}
	Procedure Nhap;
   Begin
   	With P^ Do
      	Begin
         	Write('-Ho va ten: ');
            Readln(HoTen);
            Write('-Dia chi  : ');
            Readln(DiaChi);
            Write('-Chuc vu  : ');
            Readln(Chucvu);
            Write('-Don vi   : ');
            Readln(DonVi);
         End;
   End;
{-------------------------------------}
	Begin
   	ClrScr;
      If First = Nil Then
      	Begin
         	New(P);
            Nhap;
            P^.Next := Nil;
            P^.Pre  := Nil;
            First   := P;
            Last    := P;
         End
      Else
      	Begin
         	F := Last;
            New(P);
            Nhap;
            F^.Next := P;
            P^.Next := Nil;
            P^.Pre := F;
            Last := P;
         End;
   End;
{-------------------------------------}
	Procedure Duyet;
   Var
   	Ch :Char;
{-------------------------------------}
	Procedure Duyet_Truoc;
   Begin
   	P := First;
      While P <> Nil Do
      	Begin
         	With P^ Do
            Writeln(HoTen,' , ',DiaChi,' , ',ChucVu,' , ',DonVi);
            P := P^.Next;
         End;
   End;
{-------------------------------------}
	Procedure Duyet_Sau;
   Begin
   	P := Last;
      While P <> Nil Do
      	Begin
         	With P^ Do
            Writeln(HoTen,' , ',DiaChi,' , ',ChucVu,' , ',DonVi);
            P := P^.Pre;
         End;
   End;
{-------------------------------------}
	Begin
   	Repeat
      	Write('Bam (T)ruoc hoac (S)au hay (K)et thuc: ');
         Ch := ReadKey;
         If Ch = #0 Then
         	Ch := ReadKey;
         Writeln;
         Ch := UpCase(Ch);
      Until (Ch In ['T','S','K']);
      If Ch = 'T' Then
      	Duyet_truoc
      Else
      	If Ch = 'S' Then
         	Duyet_Sau;
      Writeln;
      Write('     Bam phim <Enter> .... ');
      Readln;
   End;
{-------------------------------------}
	Procedure Sap_Xep;
   Var
   	NextRec, FarRec : NodePtr;
      KetThuc : Boolean;
   Begin
   	Repeat
      	P := First;
         F := Nil;
         KetThuc := True;
         While P^.Next <> Nil Do
         	Begin
            	NextRec :=P^.Next;
               If P^.HoTen > NextRec^.HoTen Then
               	Begin
                  	KetThuc := False;
                     If NextRec^.Next <> Nil Then
                     	Begin
                        	FarRec := NextRec^.Next;
                           FarRec^.Pre := P;
                        End
                     Else
                     	FarRec := Nil;
                     If P^.Pre = Nil Then
                     	Begin
                        	First := NextRec;
                           F := Nil;
                        End
                     Else
                     	Begin
                        	F := P^.Pre;
                           F^.Next := NextRec;
                        End;
                     P^.Next := FarRec;
                     P^.Pre :=  NextRec;
                     NextRec^.Next := P;
                     NextRec^.Pre  := F;
                     P := First;
                  End
               Else
               	P := P^.Next;
            End;
      Until KetThuc;
      Last := P;
      Writeln;
      Write('Da sap xep xong, bam <Enter> ... ');
      Readln;
   End;
{-------------------------------------}
BEGIN
	First := Nil;
   Repeat
   	ClrScr;
      Repeat
      	Write('Bam (N)oi, (D)uyet, (S)ap xep hoac (K)et thuc ');
         Ch := ReadKey;
         If Ch = #0 Then
         	Ch := Readkey;
         Writeln;
         Ch := UpCase(Ch);
      Until Ch In ['N','D','S','K'];
      If Ch = 'N' Then
      	Noi
      Else
      	If Ch = 'D' Then
         	Duyet
         Else
         	If Ch = 'S' Then
            	Sap_Xep
   Until Ch = 'K'
END.