Program Cay_Nhi_Phan;
Uses Crt;
TYPE
	ConTro =^Nut;
   Nut = RECORD
   	So : integer;
      Phai,Trai : ConTro;
      End;
VAR
	So1 : Integer;
   Goc : ConTro;
   TimThay : Boolean;
   Ch : Char;
{---------------------------------}
	Procedure TaoCay(Var Goc : ConTro);
   Var
   	Tam : conTro;
      Ch : Char;
{---------------------------------}
	Procedure DatSo(Tam : ConTro; Var dc : ConTro);
	Begin
   	If dc = Nil Then
      	dc := Tam
      Else
      	If Tam^.So < dc^.So Then
            	DatSo(Tam,dc^.Trai)
            Else
            	DatSo(Tam,dc^.Phai);
  	End;
{---------------------------------}
	Begin
   	New(Goc);
      Write('-Nhap so: ');
      Readln(Goc^.So);
      Goc^.Trai := Nil;
      Goc^.Phai := Nil;
      Write('     Nhap nua khong?(c/k) ');
      Readln(Ch);
      While UpCase(Ch) = 'C' Do
      	Begin
         	New(Tam);
            Write('-Nhap so: ');
            Readln(Tam^.So);
            Tam^.Trai := Nil;
            Tam^.Phai := Nil;
            Datso(Tam,Goc);
            Write('     Nhap nua khong?(c/k) ');
      		Readln(Ch);
         End;
      ClrScr;
   End;

{---------------------------------}
	Procedure Tim(Goc : ConTro; So1: Integer; Var TimThay : Boolean);
   Var
   	Tam : ConTro;
   Begin
   	Tam := Goc;
      TimThay := False;
      While (Not TimThay) And (Tam <> Nil) Do
      	With Tam^ Do
         	If So1 < So Then
            	Tam := Trai
            Else
            	If So1 > So Then
               	Tam := Phai
               Else
               	TimThay := True;
   End;
{---------------------------------}
BEGIN
	ClrScr;
	Writeln('TAO CAY NHI PHAN');
   Writeln('----------------');
   Writeln;
   Repeat
      Repeat
      	Writeln('1-Tao cay nhi phan');
         Writeln('2-Tim so');
         Writeln('3-Ket thuc');
         Write('Chon : ');
         Ch := Readkey;
         Writeln;
      Until Ch in ['1'..'3'];
      Case  Ch Of
      	'1' : Taocay(Goc);
         '2' : Begin
         			Write('-So muon tim: ');
                  Readln(So1);
                  Tim(Goc, So1, TimThay);
                  If TimThay Then
                  	Begin
                  		Writeln('		+Da tim thay');
                        Writeln;
                        Write('Bam <Enter> de tiep ...');
                        Readln;
                     End
                  Else
                    	Begin
                  		Writeln('		+Khong tim thay');
                        Writeln;
                        Write('Bam <Enter> de tiep ...');
                        Readln;
                     End;
                  ClrScr;
         		End;
      End;
   Until Ch = '3';
END.
