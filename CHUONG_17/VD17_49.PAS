Program Vet_mau;
Uses Graph;
{------------------------------------}
	Procedure EnterGraph(Path: String);
   Var
   	Gd,Gm,Ge : Integer;
   Begin
   	DetectGraph(Gd,Gm);
      InitGraph(Gd,Gm,Path);
      Ge := GraphResult;
      If Ge <> GrOk Then
      	Begin
         	Writeln('Loi : ',GraphErrorMsg(Ge));
            Halt(1);
         End;
   End;
{------------------------------------}
   Function Int2St(N : Integer): String;
   Var
   	St : String;
   Begin
   	Str(N,St);
      While Length(St) < 2 Do
      	St := '0'+St;
         Int2St :=St;
   End;
{------------------------------------}
   Function Repl(Ch : Char;N : Byte) : String;
   Var
   	i : Byte;
      Tempo : String;
   Begin
   	Tempo := ' ';
      For i := 1 To N Do
      	Tempo := Tempo + Ch;
      Repl := Tempo
   End;
{------------------------------------}
   Procedure DrawLine(x,y : Integer;Ch : Char);
   Var
   	N,W : Integer;
      St : String;
   Begin
   	W := TextWidth(Ch);
      N := (GetMaxX - X) Div W;
      St := Repl(Ch,N-2);
      OutTextXY(x,y,St);
   End;
{------------------------------------}
   Procedure DemoLine;
   Var
   	H : Integer;
      Color : Word;
   Begin
   	SetTextStyle(DefaultFont,HorizDir,1);
      SetTextJustify(LeftText,CenterText);
      H := GetMaxY Div 20;
      OutTextXY(GetMaxX Div 10,H,'T/Gia');
      OutTextXY(GetMaxX Div 5,H,'Bang mau');
      H := GetMaxY Div 10;
      For Color := 0 To GetMaxColor Do
      	Begin
         	SetColor(Color);
            OutTextXY(GetMaxX Div 10,H,Int2St(Color));
            DrawLine(GetMaxX Div 5,H,#220);
            H := H + 2*TextHeight('T');
         End;
   End;
{------------------------------------}
BEGIN
	EnterGraph('C:\BP\BGI');
   DemoLine;
   Readln;
   CloseGraph;
END.

