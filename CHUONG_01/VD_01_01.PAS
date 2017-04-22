Program PTB2;
Var
    a,b,c:Integer;
   delta,x1,x2:Real;
Begin
    Writeln('GIAI PHUONG TRINH BAC HAI');
   Writeln('     --------------');
    Repeat
    Write('-Nhap he so a= ');
      Readln(a);
   Until a <>0;
   Write('-Nhap he so b= ');
   Readln(b);
   Write('-Nhap he so c= ');
   Readln(c);
   delta:=b*b-4*a*c;
   If delta < 0 Then
    Writeln('*Phuong trinh vo nghiem')
   Else
    If delta = 0 Then
        Writeln('*Phuong trinh co 2 nghiem bang nhau X= ',-b/2*a:6:2)
      Else
        Begin
            x1:=(-b-sqrt(delta))/2*a;
            x2:=(-b+sqrt(delta))/2*a;
            Writeln('*Nghiem thu nhat X1= ',x1:6:2);
            Writeln('*Nghiem thu hai  X2= ',x2:6:2);
         End;
      readln
End.