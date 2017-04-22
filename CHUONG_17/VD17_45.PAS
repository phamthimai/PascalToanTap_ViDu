Program Kieu_Chu;
Uses Graph;
Var
	MaxX,MaxY : Integer;
{--------------------------------}
	Procedure EnterGraph(Path:String);
   Var
   	Gd,Gm,Ge : Integer;
   Begin
   	Gd := Detect;
      InitGraph(Gd,Gm,Path);
      Ge := GraphResult;
      If Ge <> 0 Then
      	Begin
         	Writeln('Loi: ',GraphErrorMsg(Ge));
            Halt(1);
         End;
   End;
{--------------------------------}
BEGIN
	EnterGraph('C:\BP\BGI');
   MaxX :=GetMaxX;
   MaxY := GetMaxY;
   SetColor(GetMaxColor);
   SetTextStyle(TriplexFont,HorizDir,4);
   SetTextJustify(CenterText,CenterText);
   OutTextXY(MaxX Div 2, MaxY Div 4,'Norm');
	SetTextStyle(TriplexFont,HorizDir,0);
   SetUserCharSize(1,3,1,2);
   OutTextXY(MaxX Div 2, MaxY Div 2,'Short');
   SetUserCharSize(3,1,1,1);
   OutTextXY(MaxX Div 2, (MaxY Div 4)*3,'Wide');
   Readln;
   CloseGraph;
END.