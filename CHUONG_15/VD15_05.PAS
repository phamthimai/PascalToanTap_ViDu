Program Doi_Ten;
Label tt;
Var
	f : File Of String;
	Tencu,Tenmoi : String;
Begin
	Writeln('THU TUC RENAME, DOI TEN TAP TIN');
   Writeln('-------------------------------');
   tt:Writeln;
   Write('-Cho biet ten tap tin can doi: ');
   Readln(tencu);
   Assign(f,TenCu);
   {$I-}
   Reset(f);
   If IOResult <> 0 Then
   	Begin
      	Writeln;
         Writeln('  Khong co tap tin: ',Tencu,' tren dia');
         Write('        Bam <Enter>... de tim lai ');
         Readln;
         Goto tt;
      End
   Else
   	Begin
      	Writeln;
			Write('-Doi thanh ten tap tin moi: ');
         Readln(TenMoi);
         Close(f);
      End;
   Assign(f,Tencu);
   Rename(f,TenMoi);
   Writeln;
   Write('  Da doi ten xong, bam <Enter>. . . ');
   Readln;
   Close(f);
End.
