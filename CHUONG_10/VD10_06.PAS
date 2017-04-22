Program Truy_xuat_mang;
Var
	a:Array[1..26] Of Char;
   i:Integer;
Begin
	Writeln('TRUY XUAT DEN TUNG PHAN TU MANG');
   Writeln(     '------------------');
   For i:=1 To 26 Do
   	Begin
      	Write('-Ky tu thu: ',i:2,' = ');
         Readln(a[i]);
      End;
   Writeln;
   Writeln('NHUNG KY TU DA NHAP');
   Writeln('      ------');
	For i:=1 To 26 Do
   	Write(' ',a[i]);
   Writeln;
   Writeln('Muon truy xuat den phan tu nao, go so thu tu cua phan tu do');
   Repeat
   	Write('-Phan tu thu may (go so 0 de cham dut): ');
      Readln(i);
      Writeln('+Ky tu thu: ',i:2,' la: ',a[i]);
   Until i=0;
End.