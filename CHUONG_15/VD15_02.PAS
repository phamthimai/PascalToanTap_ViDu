Program Tim_Tap_Tin;
Var
	F : File; { Tap tin loai khong co kieu }
   Ten : String;
{--------------------------------}
	Function FileExists(FileName : String) : Boolean;
   Var
    F : File;
   Begin
   	{$I-}
      Assign(f,Filename);
      Reset(f);
      Close(f);
      {$I+}
      FileExists := (IOResult = 0) And (FileName <> ' ');
   End;
{--------------------------------}
BEGIN
	If ParamCount = 0 Then
   	Begin
      	Write('-Tap tin can tim: ');
         Readln(Ten);
      End
   Else
   	If ParamCount = 1 Then
      	Ten := ParamStr(1)
      Else
      	Begin
         	Writeln('Qua nhieu tham so ');
            Exit;
         End;
   Writeln;
   If FileExists(Ten) Then
   	Writeln('-Co tap tin: ',Ten,' tren dia')
   Else
   	Writeln('-Tap tin: ',Ten,' khong co tren dia');
   Readln
END.
