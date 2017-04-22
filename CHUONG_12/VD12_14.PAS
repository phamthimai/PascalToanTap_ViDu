Program Ham_MemAvail_MaxAvail;
TYPE
	ConTro = ^Ten_Tuoi;
	Ten_Tuoi = RECORD
   	HoTen : String[24];
      Tuoi  : Byte;
   End;
VAR
	p : ConTro;
Begin
	Writeln('-Tong so vung nho Heap la: ',MemAvail,' bytes');
   Writeln('-Vung nho Heap con lai la: ',MaxAvail,' bytes');
   Writeln;
   If MaxAvail < Sizeof(Ten_Tuoi) Then
   	Writeln('+Khong du vung nho dong')
   Else
   	Begin
      	GetMem(p, Sizeof(Ten_Tuoi));
         With p^ Do
         	Begin
            	Write('+Nhap ho ten: ');
               Readln(HoTen);
               Write('+Nhap tuoi  : ');
					Readln(Tuoi);
            End;
      End;
      Writeln;
      Writeln('Sau khi su dung cac bien dong');
      Writeln('-Tong so vung nho Heap bay gio la: ',MemAvail,' bytes');
   	Writeln('-Vung nho Heap con lai bay gio la: ',MaxAvail,' bytes');
      Writeln;
      Writeln('-Bam phim <Enter> de giai toa vung nho Heap');
      Readln;
      Writeln('+Tong so vung nho Heap bay gio con lai la: ',MemAvail,' bytes');
      Freemem(p,Sizeof(Ten_Tuoi));
      Writeln('+Vung nho Heap bay gio con lai la        : ',MaxAvail,' bytes');
   Readln
End.