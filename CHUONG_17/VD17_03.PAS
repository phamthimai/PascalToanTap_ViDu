Program Card_Mode_man_hinh;
Uses Graph;
Var
	Gd,Gm : Integer;
   kieu  : Word;
   Cardmode : String;
Begin
	DetectGraph(Gd,Gm);
   InitGraph(Gd,Gm,'C:\BP\BGI');
   Cardmode := GetDriverName;
   Kieu := GetMaxMode;
   CloseGraph;
   Writeln('-Ten card man hinh: ',Cardmode);
   Writeln('-Ten mode man hinh: ',kieu);
   Readln
End.