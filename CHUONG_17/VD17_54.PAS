Program MultiFonts;
Uses Graph;
Const
	Message = 'Borland Pascal 7.0';
Var
	Gd,Gm,y : Integer;
   Ch : Char;
{---------------------------------}
	Procedure ShowText(Font : Word);
  	Begin
   	SetTextStyle(Font,HorizDir,4);
      OutTextXY(0,y,Message);
      Inc(y,TextHeight('M')+4);
   End;
{---------------------------------}
   Procedure LoadOneFont(FileName : String);
   Var
   	f : File;
      Fp : Pointer;
      Bytes : LongInt;
   Begin
   	Assign(f,Filename);
      Reset(f,1);
      Bytes := FileSize(f);
      Getmem(Fp,Bytes);
      BlockRead(f,fp^,Bytes);
      Close(f);
      If RegisterBgiFont(Fp) < 0 Then
      	Begin
         	Writeln('Khong nap duoc tap tin: ',Filename);
            Writeln('Loi do hoa: ',GraphErrorMsg(GraphResult));
            Halt;
         End;
   End;
{---------------------------------}
   Procedure LoadFonts(Path: String);
   Begin
   	If Length(Path) > 0 Then
      	If Path[Length(Path)] <> '\' Then
      		Path := Path + '\';
         LoadOneFont(Path+'BOLD.CHR');
         LoadOneFont(Path+'EURO.CHR');
         LoadOneFont(Path+'GOTH.CHR');
         LoadOneFont(Path+'LCOM.CHR');
         LoadOneFont(Path+'LITT.CHR');
         LoadOneFont(Path+'SANS.CHR');
         LoadOneFont(Path+'SCRI.CHR');
         LoadOneFont(Path+'SIMP.CHR');
         LoadOneFont(Path+'TRIP.CHR');
         LoadOneFont(Path+'TSCR.CHR');
   End;
{---------------------------------}
BEGIN
	LoadFonts('C:\BP\BGI');
   Gd :=Detect;
   InitGraph(Gd,Gm,'C:\BP\BGI');
   If GraphResult <> GrOk Then
   	Halt(1);
   Y := TextHeight('M');
   SetColor(14);
   ShowText(DefaultFont);
   ShowText(TriplexFont);
   ShowText(SmallFont);
   ShowText(SansserifFont);
   ShowText(GothicFont);
   MoveTo(0,y+16);
   For Ch := 'A' To 'z' Do
   	Begin
      	SetTextStyle((Ord(Ch)-65) Mod 5, HorizDir,2);
         OutText(Ch);
      End;
   Readln;
   CloseGraph;
END.

