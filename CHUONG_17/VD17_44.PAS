Program Vi_Tri_Chu;
Uses Graph;
Var
	Gd,Gm : Integer;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt;
   MoveTo(0,10);
   SetTextJustify(LeftText,BottomText);
   OutText('Dong 10, Left, Bottom');
   SetTextJustify(LeftText,CenterText);
   OutText('Dong 10, Left, Center');
   SetTextJustify(LeftText,TopText);
   OutText('Dong 10, Left, Top');
   MoveTo(250,30);
   SetTextJustify(LeftText,BottomText);
   OutText('Cot 250, Left, Bottom');
   MoveTo(250,60);
   SetTextJustify(CenterText,BottomText);
   OutText('Cot 250, Center, Bottom');
   MoveTo(250,90);
   SetTextJustify(RightText,BottomText);
   OutText('Cot 250, Right, Bottom');
   Readln;
   CloseGraph;
End.