UNIT MYUTIL;

INTERFACE  {Giao dien ben ngoai }

FUNCTION Cong(a,b:Integer):LongInt;
FUNCTION Tru(a,b:Integer):LongInt;
FUNCTION Nhan(a,b:Integer):LongInt;
FUNCTION Chia(a,b:Integer):LongInt;
FUNCTION BinhPhuong(a:Integer):LongInt;
FUNCTION Lapphuong(a:Integer): LongInt;
FUNCTION Giaithua(N:Integer):LongInt;
(*-------------------*)

IMPLEMENTATION  {Cai dat noi dung }

FUNCTION Cong(a,b:Integer):LongInt;
Begin
	Cong:=(a+b);
End;
(*-------------------*)
FUNCTION Tru(a,b:Integer):LongInt;
Begin
	Tru:=a-b;
End;
(*-------------------*)
FUNCTION Nhan(a,b:Integer):LongInt;
Begin
	Nhan:=a*b;
End;
(*-------------------*)
FUNCTION Chia(a,b:Integer):LongInt;
Begin
	Chia:=a Div b;
End;
(*-------------------*)
FUNCTION BinhPhuong(a:Integer):LongInt;
Begin
	Binhphuong:= a * a;
End;
(*-------------------*)
FUNCTION Lapphuong(a:Integer): LongInt;
Begin
	Lapphuong:=a*a*a;
End;
(*-------------------*)
FUNCTION Giaithua(N:Integer):LongInt;
Begin
	If n > 0 Then
   	Giaithua:=n * Giaithua(n-1)
	Else If n = 0 Then
   	Giaithua:= 1;
End;
END.
