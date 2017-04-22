Program Kieu_To_Tien_Con_Chau;
Uses Crt;
TYPE
	Location = OBJECT
   	X,Y : Integer;
      Procedure Init(IntX, IntY : Integer);
      End;
   Point    = OBJECT(Location)
   	Visible : Boolean;
      End;
VAR
	M : Point;
{-------------------------------------}
	Procedure Location.Init;
   Begin
   	X := IntX;
      Y := IntY;
   End;
{-------------------------------------}
BEGIN
	ClrScr;
   With M Do
   	Begin
      	Init(24,10);
         GotoXY(X,Y);
         Write('Day la vi tri cua diem M ');
      End;
   Readln
END.