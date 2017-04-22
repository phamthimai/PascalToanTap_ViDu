{$O+,F+}
Uses Crt,Overlay,UnitA,UnitB,UnitC;
{$O UnitA}
{$O UnitB}
Type
	HocSinh = RECORD
   	HoTen : String[24];
      Diem : Byte;
      End;
Var
	Hs : Array[1..20] Of HocSinh;
   SiSo : Byte;
{-------------------------------}
	Procedure Nhap;
   Const
   	St1='--------------------------------';
      St2='|     Ho va ten        | Diem  |';
      St3='--------------------------------';
      St4='|                      |       |';
      St5='--------------------------------';
   Var
   	Dong : Byte;
      Thoat : Boolean;
   Begin
   	WriteSt(17,1,$70,St1);
      WriteSt(17,2,$70,St2);
      WriteSt(17,3,$70,St3);
      Dong := 4;
		Thoat := False;
      While (Siso < 20) And (Not Thoat) Do
      	Begin
         	Inc(Siso);
            WriteSt(17,dong,$70,St4);
            WriteSt(17,dong+1,$70,St5);
            With Hs[Siso] Do
            	Begin
               	GotoXY(19,dong);
                  Readln(HoTen);
                  ReadInt(41,dong,7,$70,Diem);
               End;
            Inc(dong);
            WriteSt(1,25,$07,'Bam<Enter>-Nhap tiep. Bam<Esc>-Thoat');
            If Readkey = #27 Then
            	Thoat := True;
         End;
   End;
{-------------------------------}
BEGIN
	OvrInit('MainProg.ovr');
   If OvrResult <> 0 Then
   	Halt;
   TextAttr := $07;
   ClrScr;
   SiSo := 0;
   Nhap;
END.