Unit Points;

INTERFACE

TYPE
	Location = OBJECT
   	X,Y : Integer;
      Procedure Init(InitX,InitY : Integer);
      Function GetX : Integer;
      Function GetY : Integer;
      End;
   Point = OBJECT(Location)
   	Visible : Boolean;
      Procedure Init(InitX, InitY : Integer);
      procedure Show;
      Procedure Hide;
      Function IsVisible : Boolean;
      Procedure Moveto(NewX,NewY:Integer);
      End;

IMPLEMENTATION

Uses Graph, Crt;

	{--------------------------------}
   Procedure Location.Init;
   Begin
   	X := InitX;
      Y := InitY;
   End;
   {--------------------------------}
   Function Location.GetX;
   Begin
   	GetX := X;
   End;
   {--------------------------------}
   Function Location.GetY;
   Begin
   	GetY := Y;
   End;
   {--------------------------------}
   procedure Point.Init;
   Begin
   	Location.Init(InitX,InitY);
      Visible := False;
   End;

   {--------------------------------}
   Procedure Point.Show;
   Begin
   	Visible := True;
      PutPixel(X,Y,GetColor);
   End;
   {--------------------------------}
	Procedure Point.Hide;
   Begin
   	Visible := False;
      PutPixel(X,Y,0);
   End;
   {--------------------------------}
   Function Point.IsVisible;
   Begin
   	Isvisible := Visible;
   End;
   {--------------------------------}
	Procedure Point.Moveto;
   Begin
   	Hide;
      X := NewX;
      Y := NewY;
      Show;
   End;
END.



   {--------------------------------}