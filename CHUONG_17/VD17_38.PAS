Program Hinh_Tam_Giac;
Uses Crt,Graph;
Type
	TriType = Array[1..3] Of  PointType;
Var
	Tri : TriType;
   MaxX,MaxY,i,Count,Gd,Gm,Ge : Integer;
   Pl : PaletteType;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   Ge := GraphResult;
   If Ge <> GrOk Then
   	Begin
      	Writeln('Loi do hoa: ',GraphErrorMsg(Ge));
   		Halt(1);
      End;
   MaxX := GetMaxX;
   MaxY := GetMaxY;
   GetPalette(Pl);
   Count := 1;
   While not KeyPressed Do
   	Begin
      	SetFillStyle(Random(13),Random(Pl.Size)+1);
         For i := 1 To 3 Do
         	Begin
            	With Tri[i] Do
               	Begin
                  	Tri[i].X := Random(MaxX);
                     Tri[i].Y := Random(MaxY);
                  End;
               FillPoly(3,Tri);
               Delay(100);
               Inc(Count);
               If Count > 20 Then
               	Begin
                  	ClearDevice;
                     Count := 1;
                  End;
            End;
      End;
   Readln;
   CloseGraph;
End.