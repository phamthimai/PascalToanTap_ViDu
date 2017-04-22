Program Tao_Xoa_Cua_So;
Uses Graph;
Var
	Gd,Gm : Integer;
   Vp : ViewPortType;
   k : Word;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   Rectangle(0,0,GetMaxX,39);
   SetTextJustify(CenterText,CenterText); {Chinh giua}
   SetTextStyle(TriplexFont,Horizdir,3); {Font va huong xuat}
   OutTextXY(GetMaxX Div 2,15,'Nha sach Minh Khai');
   Rectangle(0,40,GetMaxX,GetMaxY);
   SetViewPort(1,41,GetMaxX-1,GetMaxY-1,ClipOn);
   ClearViewPort;
   GetViewSettings(Vp);
   k := (Vp.y2-Vp.Y1) Div 20;
   With Vp Do
   	Repeat
      	Circle((x2-x1) Div 2,(y2-y1) Div 2, k);
         Inc(k,(y2-y1) Div 20);
      Until k > (y2-y1);
   Readln;
   ClearViewPort;
   k := (Vp.y2-Vp.Y1) Div 20;
   With Vp Do
   	Repeat
      	Rectangle(x1+k,y1+k,x2-k,y2-k);
         Inc(k,(y2-y1) Div 20);
      Until (k > (y2-y1) Div 2);
   Readln;
   ClearDevice;
   SetViewPort(0,0,GetMaxX,GetMaxY,ClipOn);
   Circle(GetMaxX Div 2, GetMaxY Div 2, GetMaxY Div 2);
   Readln;
   CloseGraph;
End.