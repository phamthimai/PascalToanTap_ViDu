{$M 16384, 65536,655360}
Uses Overlay;
Begin
	OvrInit('OVR4.OVR');
   If OvrResult <> OvrOk Then
   	Halt(1);
   Writeln('Do lon vung dem Overlay: ',OvrGetBuf,' bytes');
   Readln;
   OvrClearBuf;
End.