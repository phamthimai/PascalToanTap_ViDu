Program Dong_Ho;
Uses Crt,Dos,Graph;
{-------------------------------}
	Procedure EnterGraph(Path:String);
   Var
   	Gd,Gm,Gr :Integer;
   Begin
   	Gd :=Detect;
      InitGraph(Gd,Gm,'Path');
      Gr := GraphResult;
      If Gr <> GrOk Then
      	Begin
         	Writeln('Thong bao loi: ',GraphErrorMsg(Gr));
         End;
   End;
{-------------------------------}
   Procedure Draw(L,Ao: Real);
   Begin
   	LineTo(GetX+Round(L*Cos(pi*Ao/180)),
           GetY - Round(L*Sin(pi*Ao/180)));
   End;
{-------------------------------}
   Procedure Needle1(L,alpha,Angle : Real); {kim gio,phut}
   Var
   	p,p1 : PointType;
      Begin
      	p.x := GetX;
         p.y := GetY;
         p1.x := P.x + Round(L*Cos(pi*Angle/180));
         p1.y := P.y + Round(L*Sin(pi*Angle/180));
         Draw(L/10,Angle-Alpha);
         LineTo(p1.x,p1.y);
         LineTo(p.x,p.y);
         Draw(L/10,Angle+Alpha);
         LineTo(p1.x,p1.y);
         MoveTo(p.x,p.y);
         Draw(L/10,Angle+180-Alpha);
         Draw(L/10,Angle+180+Alpha);
         Draw(L/10,Angle-Alpha);
         Draw(L/10,Angle+Alpha);
      End;
{-------------------------------}
	Procedure Needle2(L,Angle:Real); {Ve kim giay}
   Var
   	p : PointType;
   Begin
   	p.x := GetX;
      p.y := GetY;
      Draw(L,Angle);
      MoveTo(p.x,p.y);
      Draw(L/10,180+Angle);
      MoveTo(p.x,p.y);
   End;
{-------------------------------}
   Procedure HourNeedle(Hangle:Real); {Kim gio,chieu dai va goc}
   Begin
   	SetColor(DarkGray);
      Needle1(GetMaxY/4,45,HAngle);
   End;
{-------------------------------}
   Procedure MinNeedle(MAngle : Real); {Kim phut,chieu dai va goc}
   Begin
   	SetColor(LightGray);
      Needle1(GetMaxY/4+50,20,MAngle);
   End;
{-------------------------------}
   Procedure SecNeedle(SAngle : Real); {Kim giay,chieu dai va goc}
   Begin
   	SetColor(Green);
      Needle2(GetMaxY/4+70,SAngle);
   End;
{-------------------------------}
   Procedure ShowTime; {3 kim quay theo gio he thong}
   Var
   	Hour,Min,Sec,Sec100:Word;
      CurHA,CurMA,CurSA,
      OldHA,OldMA,OldSA : Real;
   Begin
   	SetWriteMode(XorPut);
      GetTime(Hour,Min,Sec,Sec100);
      CurSA := 90 -360*Sec/60;
      CurMA := 90 -360 *Min/60;
      CurHA := 90-360*Hour/12-30*Min/60;
      OldSA := CurSA;
      OldMA := CurMA;
      OldHA := CurHA;
      SecNeedle(CurSA);
      MinNeedle(CurMA);
      HourNeedle(CurHA);
      While Not KeyPressed Do
      	Begin
         	CurMA := 90 - 360*Min/60;
            CurHA :=90 - 360*Hour/12-30*Min/60;
            If OldMA <> CurMA Then
            	Begin
               	MinNeedle(OldMA);
                  MinNeedle(CurMA);
                  OLdMA := CurMA;
               End;
            If OldHA <> CurHA Then
            	Begin
               	HourNeedle(OldHA);
                  HourNeedle(CurHA);
                  OLdHA := CurHA;
               End;
            Repeat
            	GetTime(Hour,Min,Sec,Sec100);
               CurSA := 90-360*Sec/60;
               If OldSA <> CurSA Then
            	Begin
               	SecNeedle(OldSA);
                  SecNeedle(CurSA);
                  OLdSA := CurSA;
               End;
            Until KeyPressed Or (Sec = 0);
         End;
   End;
{-------------------------------}
BEGIN
	EnterGraph('C:\BP\BGI');
   MoveTo(GetMaxX Div 2,GetMaxY Div 2);
   ShowTime;
   CloseGraph;
END.
