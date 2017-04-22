Program Ve_Vong_Tron;
Uses Graph;
Var
	Gd,Gm : Integer;
{--------------------------------}
	Function Asp(Value:Integer):Integer;
   Var
   	Xasp,Yasp : Word;
   Begin
   	GetAspectRatio(Xasp,Yasp);
      Asp := Round(Value*Xasp/Yasp);
   End;
{--------------------------------}
BEGIN
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   SetColor(14);
   Ellipse(GetMaxX Div 2,GetMaxY Div 2,0,360,40,Asp(40));
   Readln;
   CloseGraph;
END.
