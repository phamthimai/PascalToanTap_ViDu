Program Tim_Tap_Tin_Tren_Dia;
Var
	f : File; { Tap tin khong co kieu}
   Filename : String;
Begin
	Writeln('TIM TAP TIN TRN THU MUC VA O DIA CHI DINH');
   Writeln('-----------------------------------------');
   Writeln;
   Write('-Cho biet ten tap tin can tim: ');
   Readln(Filename);
   Assign(f,filename);
   {$I-}
   Reset(f);
   If IOResult = 0 Then
     	Writeln('+Co tap tin: ',filename,' tren dia')
   Else
		Writeln('+Tap tin: ',filename,' khong co tren dia');
   Readln;
   Close(f);
End.
