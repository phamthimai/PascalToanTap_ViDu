Program Noi_Tap_Tin;
Var
	f : Text;
Begin
	Writeln('THU TUC APPEND(); NOI THEM TAP TIN');
   Writeln('----------------------------------');
   Writeln;
   Assign(f,'BLGIAC.DAT');
   Append(f);
   Writeln(f);
   Writeln(f); {Ghi them 2 dong trong}
   Writeln(f,'               Tp Ho Chi Minh, ngay 29/11/1999');
   Writeln(f,'                          NGUOI LAP TRINH');
   Writeln(f);
   Writeln(f);
   Writeln(f,'                  Nguyen Van Keo + Pham Van Cot');
   Close(f);
End.