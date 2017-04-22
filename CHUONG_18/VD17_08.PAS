Program Bau_Troi_Day_Sao;
Uses Graph,Crt;
Var
	Gd,Gm : Integer;
Begin
	Gd := CGA;
   Gm := CGAhi;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> 0 Then
   	Halt;
   Randomize;
   While Not KeyPressed Do
   	PutPixel(Random(GetMaxX Div 8)*8,
              Random(GetMaxY Div 3)*3,Random(2));
	CloseGraph;
End.