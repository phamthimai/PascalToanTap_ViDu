{$M 16384, 65536,655360}
Uses Overlay;
Const ExtraSize = 49152; { 48K}
Begin
	OvrInit('OVR3.OVR');
   Writeln('Do lon vung dem Overlay: ',OvrGetBuf,' bytes');
   OvrSetBuf(OvrGetBuf+ExtraSize);
   Writeln('Kich thuoc vung dem tang len la: ',OvrGetBuf,' bytes');
   Readln;
End.