Program Bang_Mau;
Uses Graph,Crt;
Var
	Gd,Gm : Integer;
   Ch : Char;
   k : Byte;
   Result : Integer;
Begin
	Gd := Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   Repeat
   	Ch := Readkey;
      Val(Ch,k,Result);
      Setcolor(k);
      SetBkColor(k+3);
      Line(0,0,GetMaxX,GetMaxY);
   Until Ch = #27;
End.