Program Phep_toan_tren_BIT;
VAR
	x,a:Word;
   y,b:Integer;
Begin
	a:=50;
   b:=50;
	Writeln('50 AND 15 -------> ',50 AND 15:6);
   Writeln('50 OR  15 -------> ',50 OR 15:6);
   Writeln('50 XOR  15 -------> ',50 XOR 15:6);
   x:= NOT A;
   y:= NOT A;
   Writeln('NOT 50 (Kieu Word) -------> ',x:6);
   Writeln('NOT 50 (Kieu Integer) ------> ',y:6);
   Writeln('50 Shl 4 -------> ',50 Shl 4:6);
   Writeln('50 Shr 4 -------> ',50 Shr 4:6);
   Writeln('Hi(865) ---------> ',Hi(865):6);
   Writeln('Lo(865) ---------> ',Lo(865):6);
   Writeln('Swap(865) ---------> ',Swap(865):6);
   Readln
End.