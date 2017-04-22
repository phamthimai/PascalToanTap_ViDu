Program KhoiDong_Ngat_KhoiPhuc_Tat;
Uses Graph;
Var
	Gd,Gm : Integer;
Begin
	Gd := Detect;
	InitGraph(Gd,Gm,'C:\BP\BGI');
   Circle(160,100,80);
   Readln;
   RestoreCrtMode;
   Writeln('-Ngat do hoa, tro ve van ban');
   Write('Bam <Enter> de tro lai che do do hoa ');
   Readln;
   SetGraphMode(CGAC0);
   Circle(160,100,80);
   Readln;
   CloseGraph;
End.
