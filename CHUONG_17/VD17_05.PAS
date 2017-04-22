Program ThuTuc_Ham_Tien_nghi;
Uses Graph,Crt;
Var
	Gd,Gm,LoMode,HiMode,MaxMode : Integer;
   CenterX,CenterY : Word;
   CardMonitor : String;
Begin
	DetectGraph(Gd,Gm);
   Writeln('-Chi so card man hinh: ',Gd);
   Writeln('-Chi so mode man hinh: ',Gm);
   Initgraph(Gd,Gm,'A:'); {Co y sai de thong bao loi}
   Writeln(GraphErrorMsg(GraphResult));
   GotoXY(5,25);
   Write('Bam <Enter>... ');
   Readln;
   Gd := CGA;
   Gm := CGAC2;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   CenterX := GetMaxX Div 2;  {Toa doo con tro}
   CenterY := GetMaxY Div 2;
   MaxMode := GetMaxMode;
   CardMonitor := GetDriverName;
   Circle(CenterX,CenterY,CenterY);
   Readln;
   GraphDefaults;
   SetColor(1);
   Circle(CenterX,CenterY,CenterY);
   GetModeRange(Gd,LoMode,HiMode);
   Readln;
   CloseGraph;
   Writeln('-TenCard : ',CardMonitor);
   Writeln('-Mode toi da : ',MaxMode);
	Writeln('-Mode thap   : ',LoMode);
   Writeln('-Mode cao    : ',HiMode);
   Readln;
End.