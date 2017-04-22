Program Danh_Sach_Vong;
Uses Crt;
TYPE
	Chuoi = String[24];
   NodePtr = ^Node;
   Node = RECORD
   	Doivien : Chuoi;
      Next    : NodePtr;
      End;
VAR
	R : NodePtr;
   N  : Word;
   HeapTop : Pointer;
{--------------------------------------}
	Procedure Append(St : Chuoi);
   Var
   	P : NodePtr;
   Begin
   	New(P);
      P^.Doivien := St;
      If R = Nil Then
      	R := P
      Else
      	P^.Next := R^.Next;
      R^.Next := P;
      R := P;
   End;
{--------------------------------------}
	Function Next(P: NodePtr) : NodePtr;
   Begin
   	If P <> R Then
      	Next := P^.Next
      Else
      	Next := Nil;
   End;
{--------------------------------------}
	procedure Display;
   Var
   	P : NodePtr;
   Begin
   	ClrScr;
      P := R^.Next;
      While P <> Nil Do
      	Begin
         	Writeln(P^.Doivien);
            P := Next(P);
         End;
   End;
{--------------------------------------}
	Procedure Input;
   Var
   	St : Chuoi;
   Begin
   	Writeln('NHAP DANH SACH DOI VIEN');
		Writeln('-----------------------');
		Writeln;
      Repeat
			Write('-Doi vien: ');
			Readln(St);
			Append(St);
			Writeln('          Bam <Enter> de nhap tiep, bam <Esc> de ngung ');
   	Until Readkey = #27;
   End;
{--------------------------------------}
	Procedure DeleteNode(N :Word; Var P : NodePtr);
   Var
   	i : Word;
   Begin
   	i := 1;
      While i < N-1 Do
      	Begin
         	P := P^.Next;
            Inc(i);
         End;
      If Next(P) = R Then
      	R :=R^.Next;
      P^.Next := P^.Next^.Next;
      P := P^.Next;
   End;
{--------------------------------------}
   Procedure Loaibo;
   Var
   	N,i : Word;
      P   : NodePtr;
   Begin
   	Write('-So de dem: ');
      Readln(n);
      If R <> Nil Then
      	Begin
         	P := R^.Next;
            While R^.Next <> R Do
            	Begin
               	DeleteNode(N,P);
                  Display;
                  GotoXY(10,22);
                  Writeln('Bam phim <Enter> de chon doi vien ke tiep ');
                  Readln;
               End;
         End;

   End;
{--------------------------------------}
BEGIN
	ClrScr;
	Mark(Heaptop);
   R := Nil;
   Input;
   ClrScr;
   Loaibo;
   ClrScr;
   Release(HeapTop);
END.
