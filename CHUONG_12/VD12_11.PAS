Program Thu_Tuc_Release;
VAR
   p1       : ^Integer;
   p2       : ^String;
   p3       : ^Real;
   p        : Pointer;
Begin
	Writeln('THU TUC RELEASE');
   Writeln('---------------');
   Writeln('-Khi moi bat dau chuong trinh thi');
   Writeln('Vung nho Heap con: ',MemAvail,' bytes trong');
   Writeln;
   New(p1);
   Writeln('-Sau khi cap phat bo nho cho bien dong P1 (kieu Integer)');
   Writeln('Vung nho Heap con: ',MemAvail,' bytes trong');
   Writeln;
   Mark(p);
   New(p2);
   Writeln('-Sau khi cap phat bo nho cho bien dong P2 (kieu String)');
   Writeln('Vung nho Heap con: ',MemAvail,' bytes trong');
   Writeln;
	New(p3);
   Writeln('-Sau khi cap phat bo nho cho bien dong P3 (kieu Real)');
   Writeln('Vung nho Heap con: ',MemAvail,' bytes trong');
   Writeln;
   Release(p);
   Writeln('-Sau khi Xoa cac bien dong P2 (kieu String) va P3 (kieu Real)');
   Writeln('Vung nho Heap bay gio la: ',MemAvail,' bytes trong');
   Readln
End.