Program Xem_Thuoc_Tinh;
Uses Dos;
Var
	f : Text;
   Attr : Word;
   Filename : String[20];
Begin
	Writeln('THU TUC GETFATTR()');
   Writeln('------------------');
   Writeln;
   Write('-Chi biet ten tap tin: ');
   Readln(Filename);
   Assign(f,filename);
   GetFAttr(f,attr);
   Writeln(Filename);
   If DosError <> 0 Then
   	Writeln('Ma loi: ',DosError)
   Else
   	If Attr And Archive <> 0 Then
      	Writeln('-Tap tin nay co thuoc tinh luu tru');
      If Attr And Hidden <> 0 Then
      	Writeln('-Tap tin nay co thuoc tinh che dau');
      If Attr And ReadOnly <> 0 Then
      	Writeln('-Tap tin nay co thuoc tinh chi doc');
      If Attr And Sysfile <> 0 Then
      	Writeln('-Tap tin nay co thuoc tinh he thong');
      If Attr And Directory <> 0 Then
      	Writeln('-Day la ten thu muc');
   Writeln;
   Write('	Bam <Enter>. . . ');
   Readln
End.