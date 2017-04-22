Program Dat_Thuoc_Tinh;
Uses Dos;
Var
	f : Text;
   Filename: String[20];
   Attname : Char;
   Attr : Word;
Begin
	Writeln('MINH HOA THUOC TINH SETFATTR');
   Writeln('----------------------------');
   Writeln('	Thuoc tinh chi doc  (R)');
   Writeln('	Thuoc tinh che dau  (H)');
   Writeln('	Thuoc tinh he thong (S)');
   Writeln('	Thuoc tinh luu tru  (A)');
   Writeln;
   Write('-Cho biet ten tap tin: ');
   Readln(Filename);
   Write('-Can dat thuoc tinh (R,H,S,A): ');
   Readln(Attname);
   If (Upcase(Attname) = 'R') Then
		Attr := $01;
   If (Upcase(Attname) = 'H') Then
		Attr := $02;
   If (Upcase(Attname) = 'S') Then
		Attr := $04;
   If (Upcase(Attname) = 'A') Then
		Attr := $20;
   Assign(f,Filename);
   SetFAttr(f,Attr);
   Writeln;
   Write('	Da dat xong thuoc tinh, bam <Enter>...');
   Readln
End.
