Program Ham_EOF;
Var
	f : Text;
   Ch : Char;
   Buf : Array[1..10240] Of Char;
Begin
	Assign(f, ParamStr(1));
   SetTextBuf(f,Buf);
   Reset(f);
   While Not EOF(f) Do
   	Begin
      	Read(f,Ch);
         Write(Ch);
      End;
End.