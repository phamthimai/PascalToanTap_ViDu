Program Danh_Sach_FILO;
Uses Crt;
TYPE
	Chuoi = String[24];
	HocSinh = RECORD
   	HoTen : Chuoi;
      Van,Toan,Ly,Hoa,Tb : Real;
      End;

   NodePtr =^NodeType;

   NodeType = RECORD
      	Data : HocSinh;
         Pre : NodePtr;
      End;
VAR
	List : NodePtr;
   Chon : Byte;
   HeapTop : Pointer;
   {--------------------------------}
   Function UpStr(St : String) : String;
   Var
   	i : Byte;
   Begin
   	For i := 1 To Length(St) Do
      	St[i] := UpCase(St[i]);
      UpStr := St;
   End;
   {--------------------------------}
	Procedure GetData(Var A : HocSinh);
   Begin
   	With A Do
      	Begin
         	Write('-Ho va ten: ');
            Readln(HoTen);
            Write('-Diem Van : ');
            Readln(Van);
            Write('-Diem Toan: ');
            Readln(Toan);
            Write('-Diem Ly  : ');
            Readln(Ly);
            Write('-Diem Hoa : ');
            Readln(Hoa);
            Tb := ((Van * 2 + Toan * 2) + Ly + Hoa)/6;
         End;
   End;
   {--------------------------------}
   Procedure DisplayData(A : HocSinh);
   	Function RPad(St : String; N : Byte) : String;
      Begin
      	While Length(St) < N Do
         	St := St + #32;
         RPad :=St;
      End;
   Begin
   	With A Do
      	Writeln(Rpad(HoTen,24),Van:6:1,Toan:6:1,Ly:6:1,Hoa:6:1,Tb:8:1);
   End;
   {--------------------------------}
   Function Empty(Ds : NodePtr):Boolean;
   Begin
   	Empty :=Ds = Nil;
   End;
   {--------------------------------}
   Function Full(Ds : NodePtr):Boolean;
   Begin
   	Full := MaxAvail < SizeOf(Ds^);
   End;
	{--------------------------------}
   Function GetNode: NodePtr;
   Var
   	P : NodePtr;
   Begin
   	New(P);
      GetData(P^.Data);
      GetNode := P;
   End;
   {--------------------------------}
   Procedure Append(P : NodePtr; Var Ds : NodePtr);
   Begin
   	P^.Pre := Ds;
      Ds := P;
   End;
   {--------------------------------}
   Procedure Insert(P : NodePtr; i : LongInt; Var Ds : NodePtr);
   Var
   	Q : NodePtr;
      j : LongInt;
   Begin
   	If Empty(Ds) Or ( i <= 1) Then
      	Append(P,Ds)
      Else
      	Begin
         	Q := List;
            j := 1;
            While (Q^.Pre <> NIl) And (j < i-1) Do
            	Begin
               	Q := Q^.Pre;
                  Inc(j);
               End;
            P^.Pre :=Q^.Pre;
            Q^.Pre :=P;
         End;
   End;
   {--------------------------------}
   Procedure Delete(i : LongInt; Var Ds : NodePtr);
   Var
   	j : LongInt;
      Q : NodePtr;
   Begin
   	If (Not Empty(Ds)) And (i > 0) Then
      	If i = 1 Then
         	Ds :=Ds^.Pre
         Else
         	Begin
            	Q := Ds;
               j := 1;
               While (Q <> Nil) And ( j > i-1) Do
               	Begin
                  	Q := Q^.Pre;
                     Inc(j);
                  End;
               If (Q <> Nil) And (Q^.Pre <> Nil) Then
               	Q^.Pre := (Q^.Pre)^.Pre;
            End;
   End;
   {--------------------------------}
   Function Less(A,B : HocSinh):Boolean;
   Begin
   	Less:=UpStr(A.HoTen) < UpStr(B.Hoten);
   End;
   {--------------------------------}
   Procedure Swap(Var A,B : HocSinh);
   Var
   	Tam : HocSinh;
   Begin
   	Tam := A;
      A := B;
      B :=Tam;
   End;
   {--------------------------------}
   Procedure SortList(Var Ds : NodePtr);
   Var
   	P,Q : NodePtr;
   Begin
   	If Not Empty(Ds) Then
      	Begin
         	P := Ds;
            While P^.Pre <> Nil Do
            	Begin
               	Q := P^.Pre;
                  While Q <> Nil Do
                  	Begin
                     	If Less(Q^.Data,P^.Data) Then
                        	Swap(P^.Data,Q^.Data);
                        Q := Q^.Pre;
                     End;
                  P := P^.Pre;
               End;
         End;
         GotoXY(25,24);
         Writeln('Da sap xep xong');
   End;
   {--------------------------------}
   Function Equal(A,B : Chuoi) : Boolean;
   Begin
   	Equal := UpStr(A) = UpStr(B);
   End;
   {--------------------------------}
   Function Search(X: Chuoi; Ds : NodePtr) : NodePtr;
   Var
   	P : NodePtr;
   Begin
   	P := Ds;
      While (P <> Nil) And Not Equal(X,P^.Data.HoTen) Do
			P :=P^.Pre;
		If P <> Nil Then
			Search := P
		Else
			Search :=Nil;
   End;
   {--------------------------------}
   Procedure InputList(Var Ds : NodePtr);
   Var
   	P : NodePtr;
   Begin
   	ClrScr;
      Repeat
      	New(P);
         GetData(P^.Data);
         Append(P,Ds);
      Until (ReadKey = #27) Or Full(Ds);
   End;
   {--------------------------------}
   Procedure ScanList(Ds : NodePtr);
   Var
   	P : NodePtr;
      N : LongInt;
   Begin
   	ClrScr;
      P := Ds;
      N := 0;
      While P <> Nil Do
      	Begin
         	DisplayData(P^.Data);
            Inc(N);
            P := P^.Pre;
         End;
      Writeln;
   End;
   {--------------------------------}
   Procedure InsertList(Var Ds : NodePtr);
   Var
   	i : LongInt;
      P : NodePtr;
   Begin
   	ClrScr;
      Writeln('-Chen them ban ghi moi: ');
      P := GetNode;
      Writeln;
      Write('-Chen vao vi tri thu: ');
      Readln(i);
      Insert(P,i,Ds);
   End;
   {--------------------------------}
   Procedure DeleteList(Var Ds : NodePtr);
   Var
   	i : LongInt;
      P : NodePtr;
   Begin
   	ClrScr;
      Write('-Xoa vi tri thu: ');
      Readln(i);
      Delete(i,Ds);
   End;
   {--------------------------------}
   Procedure SearchList(Ds : NodePtr);
   Var
   	Ht: Chuoi;
      P : NodePtr;
   Begin
   	ClrScr;
      Write('-Ho ten can tim : ');
      Readln(Ht);
      P := Search(Ht,Ds);
      If P = Nil Then
      	Writeln('Khong co hoc sinh : ',Ht)
      Else
      	DisplayData(P^.Data);
   End;
   {--------------------------------}
   Function Menu : Byte;
   Const
   	Tenmenu = '0-Thoat, 1-Nhap, 2-Chen, 3-Xoa, 4-Sap xep, 5-Liet ke '+
      				'6-Tim kiem. Ban chon: ';
   Var
   	i : Byte;
   Begin
   	GotoXY(1,23);
      Write(Tenmenu);
      Repeat
      	GotoXY(77,23);
         Readln(i);
      Until ( i >= 0) And (i <= 6);
      Menu:=i;
   End;
{----------------------------------}
BEGIN
	ClrScr;
   Mark(HeapTop);
   List := Nil;
   Repeat
     	Chon :=Menu;
      Case Chon Of
         	1:InputList(List);
            2:InsertList(List);
            3:DeleteList(List);
            4:SortList(List);
            5:ScanList(List);
            6:SearchList(List);
      End;
   Until Chon = 0;
   Release(HeapTop);
END.