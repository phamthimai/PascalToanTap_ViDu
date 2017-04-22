Program Test;
{$O+,F+}
Uses AnUtil1,AnUtil2,Crt,Overlay;
{$O AnUtil1}
{$O AnUtil2}
Var
	m,n : Word;
Begin
	ClrScr;
   OvrInit('Main.OVR');
   If OvrResult <> 0 Then
   	Begin
      	Writeln('Loi khoi dong: ',OvrResult);
         Halt(1);
      End;
   Write('-Nhap so nguyen N= ');
   Readln(n);
   Write('-Nhap so nguyen M= ');
   Readln(m);
   Doi(m,n);
   Writeln('-Giai thua cua : ',m:2,' = ',Gt(m));
   Writeln('-Giai thua cua : ',n:2,' = ',Gt(n));
   Write('   Bam <Enter> de ket thuc ');
   Readln;
End.