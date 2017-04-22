Program Thu_Tuc_Seek;
Var
	I,N : Integer;
   Ch : Char;
   f : File Of Integer;
Begin
	Writeln('DI CHUYEN CON TRO TAP TIN DEN PHAN TU THU N');
   Writeln('-------------------------------------------');
   Writeln;
   Assign(f,'SoNguyen.DAT');
   Reset(f);
   Write('-Can tim phan tu thu: ');
   Readln(n);
   Seek(f,(n-1));
   Read(f,i);
   Writeln;
   Writeln('-Phan tu thu: ',n,' co tri = ',i);
   Writeln;
   Write('-Co can sua khong ? (C/K) ');
   Readln(Ch);
   If Ch in ['C','c'] Then
   	Begin
      	Seek(f,n-1);
         Write('-Nhap so can sua: ');
         Readln(i);
         Write(f,i);
      End;
   Writeln;
   Write('Da sua va ghi lai vao dia, bam <Enter> de xem lai ');
   Readln;
   Seek(f,0);
   While Not EOF(f) Do
   	Begin
   		Read(f,i);
         Writeln(i);
      End;
   Writeln;
   Seek(f,0);
   Read(f,i);
   Writeln('-Phan tu dau tien co tri= ',i);
   Writeln;
   Seek(f,Filesize(f)-1);
   Read(f,i);
   Writeln('-Phan tu cuoi cung co tri = ',i);
   Writeln;
   Writeln('       Bam <Enter>...');
   Readln;
   Close(f);
End.