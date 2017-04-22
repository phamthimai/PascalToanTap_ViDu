Program Tao_Menu;
Uses Crt;
Type
	Menu = RECORD
   	Name : String[7];
      Active : Boolean
      End;
Var
	a : array[1..10] Of Menu;
   k : Integer;
   Done : Boolean;
   Ch : Char;
{-------------------------------}
	Procedure Box(x1,y1,x2,y2:Integer);
   Var
   	k : Integer;
   Begin
   	GotoXY(x1,y1);
      Write(#201);
      For k := x1+1 To x2-1 Do
      	Write(#205);
      Write(#187);
      For k := y1+1 To y2-1 Do
      	Begin
         	GotoXY(x1,k);
            Write(#186);
            GotoXY(x2,k);
            Write(#186);
         End;
      GotoXY(x1,y2);
      Write(#200);
      For k := x1+1 To x2-1 Do
      	Write(#205);
      Write(#188);
   End;
{-------------------------------}
   Procedure SetTextColor(Bk,Tx : Integer);
   Begin
   	TextAttr := (Bk Shl 4) + Tx;
   End;
{-------------------------------}
   Procedure WriteMenu(M : Menu; Pos : Integer);
   Begin
   	If M.Active = True Then
      	SetTextColor(Red,Yellow+Blink)
      Else
      	SetTextColor(Red,White);
      GotoXY(Pos,3);
      Write('      '); {7 khoang trong}
      GotoXY(WhereX-7,3);
      Write(M.Name);
      GotoXY(WhereX-6,3);
      SetTextColor(Blue,White);
   End;
{-------------------------------}
   Procedure Left;
   Begin
   	a[k].Active := False;
      WriteMenu(a[k],2+(k-1)*8);
      If k < 10 Then
      	Inc(k)
      Else
      	k := 1;
      a[k].Active := True;
      WriteMenu(a[k],2+(k-1)*8);
   End;
{-------------------------------}
   Procedure Right;
   Begin
   	a[k].Active := False;
      WriteMenu(a[k],2+(k-1)*8);
      If k < 10 Then
      	Dec(k)
      Else
      	k := 10;
      a[k].Active := True;
      WriteMenu(a[k],2+(k-1)*8);
   End;
{-------------------------------}
BEGIN
	a[1].Name :=' File';
   a[2].Name :=' Edit';
   a[3].Name :=' Search';
   a[4].name :=' Run ';
   a[5].Name :='Compile';
   a[6].Name :=' Debug';
   a[7].Name :=' Tools';
   a[8].Name :=' Options';
   a[9].Name :=' Window';
   a[10].Name:=' Help';
   ClrScr;
   Box(1,2,80,4);
   For k := 1 To 10 Do
   	Begin
      	a[k].Active := False;
         WriteMenu(a[k],2+(k-1)*8);
      End;
   a[1].Active := True;
   k := 1;
   WriteMenu(a[1],2);
   Done := False;
   Repeat
   	Ch := ReadKey;
      If Ch = #0 Then
      	Ch := Readkey;
      Case Ch Of
      	#77 : Left;
         #75 : Right;
         #13 : Done := True;
         'F','f' : Begin
         			 	k := 1;
							Done := True;
         			 End;
         'E','e' : Begin
         			 	k := 2;
							Done := True;
         			 End;
			'S','s' : Begin
         			 	k := 3;
							Done := True;
         			 End;
         'R','r' : Begin
         			 	k := 4;
							Done := True;
         			 End;
         'C','c' : Begin
         			 	k := 5;
							Done := True;
         			 End;
         'D','d' : Begin
         			 	k := 6;
							Done := True;
         			 End;
         'T','t' : Begin
         			 	k := 7;
							Done := True;
         			 End;
         'O','o' : Begin
         			 	k := 8;
							Done := True;
         			 End;
         'W','w' : Begin
         			 	k := 9;
							Done := True;
         			 End;
         'H','h' : Begin
         			 	k := 10;
							Done := True;
         			 End
      Else
      	Write(#7);
      End;
   Until Done;
   GotoXY(3,24);
   Write('Ban vua chon chuc menu: ', a[k].Name);
   Readln;
END.