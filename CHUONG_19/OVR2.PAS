Program Phu_lap_2;
Uses Overlay;
Begin
	OvrInit('OVR2.OVR');
   If OvrResult <> OvrOk Then
   	Begin
      	Writeln('Khoi dong Overlay khong thanh cong');
         Halt(1);
      End;
      OvrInitEMS;
     	Case OvrResult Of
         OvrIOError  : Writeln('Khong nhap xuat duoc Overlay');
         OvrNoEMSDriver: Writeln('Khong co card EMS');
         OvrNoEMSMemory: Writeln('Khong du bo nho EMS');
      Else
        Writeln('Su dung EMS de thuc hien nhanh qua trinh Overlay');
      End;
End.