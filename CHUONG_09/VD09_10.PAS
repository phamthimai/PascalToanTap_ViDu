Program So_sanh_chuoi;
Var
   chuoi1,chuoi2:String;
Begin
	Writeln('     Phep so sanh chuoi');
   Writeln('        +++++++++++++');
   Write('-Nhap chuoi thu nhat: ');
   Readln(Chuoi1);
   Write('-Nhap chuoi thu hai : ');
   Readln(Chuoi2);
   Begin
   	If length(Chuoi1)=length(Chuoi2) Then
   		Writeln('	+Hai chuoi nay bang nhau ')
   	Else
   	   If Chuoi1 = Chuoi2 Then
   			Writeln('	+Hai chuoi nay hoan toan giong nhau')
   		Else
   			If Chuoi1 < Chuoi2 Then
   				Writeln('	+Chuoi thu nhat NHO HON chuoi thu hai')
   			Else
   				Writeln('	+Chuoi thu nhat LON HON chuoi thu hai');
   End;
   Writeln;
   Writeln('           Bam phim <Enter> de ket thuc');
   Readln
End.
