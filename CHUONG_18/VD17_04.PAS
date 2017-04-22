Program Loi_Khoi_Dong;
Uses Graph;
Var
	Gd,Gm : Integer;
   kieu  : Word;
   Cardmode : String;
Begin
	DetectGraph(Gd,Gm);
   InitGraph(Gd,Gm,'Path');
   Cardmode := GetDriverName;
   Writeln(GraphErrorMsg(GraphResult));
   Write('Bam <Enter> de tiep tuc ');
   Readln;
   DetectGraph(Gd,Gm);
   InitGraph(Gd,Gm,'C:\BP\BGI');
   Kieu := GetMaxMode;
   CloseGraph;
   Writeln('-Ten card man hinh: ',Cardmode);
   Writeln('-Ten mode man hinh: ',kieu);
   Readln
End.