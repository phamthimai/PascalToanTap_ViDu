Program Phu_lap_1;
Uses Overlay;
Begin
	OvrInit('OVR1.OVR');
   If OvrResult <> OvrOk Then
   	Begin
      	Case OvrResult Of
         	OvrError    : Writeln('Chuong trinh khong co Overlay');
            OvrNotFound : Writeln('Khong tim thay tap tin Overlay');
            OvrNoMemory : Writeln('Khong du bo nho');
            OvrIOError  : Writeln('Khong nhap xuat duoc Overlay');
            OvrNoEMSDriver: Writeln('Khong co card EMS');
            OvrNoEMSMemory: Writeln('Khong du bo nho EMS');
         End;
         Halt(1);
      End;
End.