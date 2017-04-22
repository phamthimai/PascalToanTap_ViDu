Program Sao_Chep_Tap_Tin;
{$F+}
Var
	Tof,Frf            : File;
   Tofile, Fromfile   : String[50];
   NumRead,NumWritten : Word;
   Buf                : Pointer;
Begin
	Writeln('SAO CHEP TU TAP TIN NGUON SANG TAP TIN DICH');
   Writeln('-------------------------------------------');
   Writeln;
   GetMem(Buf,2048);
   Write('-Tap tin nguon la: ');
   Readln(Fromfile);
   Write('-Tap tin dich la : ');
   Readln(Tofile);
   Assign(Frf,Fromfile);
   Reset(Frf,1);
   Assign(Tof,Tofile);
   Rewrite(Tof,1);
   Writeln;
   Writeln('Dang chep tap tin: ',Fromfile,' ',Filesize(Frf),' bytes');
   Repeat
   	BlockRead(Frf,Buf^,Sizeof(Buf),NumRead);
      BlockWrite(Tof,Buf^,NumRead,NumWritten);
   Until (NumRead = 0) Or (NumWritten <> NumRead);
   Writeln;
   Write('Da sao chep xong, bam <Enter>... ');
   Readln;
   Close(Frf);
   Close(Tof);
   Freemem(Buf,2048);
End.