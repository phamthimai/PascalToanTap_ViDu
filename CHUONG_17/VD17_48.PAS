Program TextDemo;
Uses Crt,Graph;
Const
	CharType : Array[0..4] Of String =
   		('Default','Triplex','Small','Sans-Serif','Gothic');
Var
	S : String;
   MaxX,MaxY,i,j,k,Gd,Gm,Ge : Integer;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   Ge := GraphResult;
   If Ge <> GrOk Then
   	Begin
      	Writeln('Loi: ',GraphErrorMsg(Ge));
         Halt;
      End;
   MaxX := GetMaxX;
   MaxY := GetMaxY;
   For i := 0 To 4 Do
   	Begin
      	k := 0;
         For j := 1 To 10 Do
         	Begin
            	SetTextStyle(i,HorizDir,j);
               OutTextXY(j*20,k,CharType[i]);
               k := k + TextHeight(CharType[i]) + 10;
            End;
         SetTextStyle(0,HorizDir,2);
         S :='Bam phim ENTER... ';
         OutTextXY(MaxX - TextWidth(S),MaxY - TextHeight(S),S);
         Readln;
         ClearDevice;
      End;
   CloseGraph;
End.