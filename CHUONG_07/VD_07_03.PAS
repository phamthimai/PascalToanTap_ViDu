Program Nhap_Xuat_du_lieu;
TYPE
	Color =(Tim, Xanh, Vang, Trang, Den);
Var
	i:Integer;
   Mau:Color;
Begin
	Writeln('NHAP / XUAT DU LIEU KIEU LIET KE');
   Writeln('--------------------------------');
	Write('-Ban thich mau nao ? (nhap cac so tu 0 den 4) ');
   Readln(i);
   mau:=Color(i);
   If mau=Tim Then
   	Writeln('+Mau ban thich la mau Tim');
   If mau=Xanh Then
   	Writeln('+Mau ban thich la mau Xanh');
   If mau=Vang Then
   	Writeln('+Mau ban thich la mau Vang');
   If mau=Trang Then
   	Writeln('+Mau ban thich la mau Trang');
   If mau=Den Then
   	Writeln('+Mau ban thich la mau Den');
   Writeln;
   Write('   Bam phim <Enter> de ket thuc ');
   Readln
End.