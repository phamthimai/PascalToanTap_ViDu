Program Danh_Sach_Bien_Dong_mang;
Uses Crt;
CONST
	SiSo = 100;
TYPE
	Chuoi   = String[24];
	HocSinh = RECORD
   	HoTen : Chuoi;
      DiemTb : Real;
      End;
   HocSinhPtr = ^HocSinh;
   DanhSach   = Array[1..SiSo] Of HocSinhPtr;
   List       = RECORD
   	K_thuoc : Word;
      Dulieu  : DanhSach;
      End;
VAR
	Ds      : List;
   HeapTop : Pointer;
   OK      : Char;
   Chon    : Byte;
{-----------------------}

	Procedure KhoiTaoDS(Var Ds : List);
   Begin
   	Ds.K_thuoc := 0;
   End;

{-----------------------}

	Function RPad(St : String; n : Byte) : String;
   Begin
   	While Length(St) <= N Do
      	St := St + #32;
      RPad := St;
   End;

{-----------------------}

	Function Less(x,y : HocSinhPtr) : Boolean;
	Begin
   	Less := x^.DiemTb < y^.DiemTb;
	End;

{-----------------------}

	Procedure Doi(Var x, y : HocSinhPtr);
   Var
   	Tam : HocSinhPtr;
   Begin
   	Tam := X;
      X := Y;
      Y := Tam;
   End;

{-----------------------}

	Procedure QuickSort(Var A : List);
   	Procedure Sort(L,R : Word);
      Var
      	i, j : Word;
         X    : HocSinhPtr;
      Begin
      	i := L;
         j := R;
         X := A.Dulieu[(L+R) Div 2];
         Repeat
         	While Less(A.Dulieu[i],X) Do
            	Inc(i);
            While Less(X,A.Dulieu[j]) Do
            	Dec(j);
            If i <= j Then
            	Begin
               	Doi(A.Dulieu[i], A.Dulieu[j]);
                  Inc(i);
                  Dec(j);
               End;
         Until i > j;
         If L < j Then
         	Sort(L,j);
         If i < R then
         	Sort(i,R);
      End;
      Begin
      	Sort(1,A.K_thuoc);
      End;

{-----------------------}

   Function Full(A : List) : Boolean;
   Begin
   	Full := A.K_thuoc >= SiSo;
   End;

{-----------------------}

	Procedure AppendList(X : HocSinhPtr; Var A : List);
   Begin
   	If Not Full(A) then
      	Begin
         	Inc(A.K_thuoc);
            A.DuLieu[A.K_thuoc] := X;
         End;
   End;

{-----------------------}

	Procedure NhapDs(Var X : HocSinhPtr);
   Begin
   	New(X);
      With X^ Do
      	Begin
         	Write('-Ho va ten       : ');
            Readln(HoTen);
            Write('-Diem trung binh : ');
            Readln(DiemTb);
         End;
   End;

{-----------------------}

	Procedure Nhap(Var A : List);
   Var
   	p : HocSinhPtr;
   Begin
   	ClrScr;
      GotoXY(5,25);
      Write('Bam <Esc> de thoat, bam <Enter> de tiep tuc ');
      Window(1,1,80,25);
      KhoiTaoDS(A);
      Repeat
      	NhapDs(P);
         AppendList(P,A);
      Until ReadKey = #27;
   End;

{-----------------------}

	Procedure Xem(A : List);
   Var
   	i : Word;
   Begin
   	for i := 1 to A.K_thuoc Do
      	With A.Dulieu[i]^ Do
         	Begin
            	If i Mod 24 = 0 Then
               	Begin
                  	Write('     Bam <Enter> de xem tiep ');
                     Readln;
                  End;
               Writeln(RPad(HoTen,24),' ,diem = ',DiemTb:5:2);
            End;
   End;

{-----------------------}

BEGIN
	ClrScr;
	Writeln('DANH SACH BIEN DONG TREN CO SO MANG');
   Writeln('-----------------------------------');
   OK := 'C';
   Mark(HeapTop);
   While (UpCase(OK) = 'C') Do
   	Begin
      	Writeln('               MENU        ');
         Writeln('       ----************---');
         Writeln;
         Writeln('         1-Nhap du lieu ');
         Writeln('         2-Sap xep danh sach');
         Writeln('         3-Xem danh sach');
         Writeln;
         Writeln('Chon viec nao go so cua viec do');
         Write('        -Chon viec: ');
         Readln(Chon);
         While (Chon < 1) And (Chon > 3) Do
         	Begin
            	Writeln('    Moi chon lai');
               Write('  -Chon viec: ');
               Readln(Chon);
            End;
         Case Chon Of
         	1: Nhap(Ds);
            2: QuickSort(Ds);
            3: Xem(Ds);
         End;
         Write('    Co tiep tuc khong (C/K) ');
         Readln(OK);
         ClrScr;
      End;
END.