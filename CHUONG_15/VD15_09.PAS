Program Ham_Tap_Tin;
Var
	f : File Of Integer;
   i,j,k,v : Integer;
Begin
	Writeln('SU DUNG CAC HAM TAP TIN ');
   Writeln('------------------------');
   Writeln;
   Assign(f,'TEST.INT');
   Rewrite(f);
   For i := 1 To 10 Do
   	Write(f,i);
   Writeln;
   Writeln('Da tao tap tin TEST.INT co 10 so nguyen');
   Write('Bam <Enter> de xem noi dung tap tin TEST');
   Readln;
   Reset(f);
   While Not EOF(f) Do
   	Begin
      	Read(f,i);
         Writeln(i);
      End;
   Writeln;
   k:= Filesize(f);
   Writeln('-Kich thuoc tap tin= ',k,' phan tu');
   Writeln;
   Write('Bam <Enter> de di chuyen den phan tu thu 5 ');
   Readln;
   Seek(f,5-1);
   Read(f,i);
   Writeln;
   Writeln('-Phan tu thu 5 co tri = ',i);
   v := Filepos(f);
   Writeln;
   Writeln('-Vi tri con tro tap tin hien gio o phan tu thu: ',v);
   Writeln;
   Write('Bam <Enter> de xem cac phan tu con lai ');
   Readln;
   While Not EOF(f) Do
   	Begin
      	Read(f,i);
         Writeln(i);
      End;
   Writeln;
   If EOF(f) Then
   	Writeln('-Da ket thuc tap tin')
   Else
   	Writeln('-Chua ket thuc tap tin');
   Writeln;
   Write('   Bam <Enter> de ket thuc ');
   Readln;
   Close(f);
   Erase(f);
End.