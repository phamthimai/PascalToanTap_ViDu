Program Tao_Buffer;
Var
	f : Text;
   Filename : String[20];
   Ch : Char;
   Buf : Array[1..10240] Of Char;
Begin
	Writeln('MINH HOA THU TUC SETTEXTBUF()');
   Writeln('-----------------------------');
   Writeln;
   Write('-Cuo biet ten tap tin: ');
   Readln(Filename);
	Assign(f, Filename);
   SetTextBuf(f,Buf);
   Reset(f);
   While Not EOF(f) Do
   	Begin
      	Read(f,Ch);
         Write(Ch);
      End;
   Readln;
End.