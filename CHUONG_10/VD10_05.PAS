Program Phep_gan_mang;
Type
	DanhSach = Array[1..14] Of String[7];
Const
	A: DanhSach=('Nam','Quoc','Son','Ha','Nam','De','Cu','Tu',
						'Nhien','Dinh','Phan','Tai','Thien','Thu');
Var
	B,C:DanhSach;
	i,k:Integer;
   Tam:String[7];
Begin
	Writeln('SU DUNG TOAN TU GAN (:=) VA THU TUC MOVE()');
   Writeln('            --------------');
   For k:=1 To 14 Do
   	For i:=1 To 14 Do
      	If a[k] > a[i] Then
         	Begin
            	Tam:=a[k];
               a[k]:=a[i];
               a[i]:=tam;
            End;
   b:=a;
   Move(a,c,Sizeof(a));
   For k:=1 To 14 Do
     	Writeln('A[',k:2,']= ',a[k]:8,' | B[',k:2,']= ',b[k]:8,' |  C[',k:2,']= ',c[k]);
   Writeln;
   Writeln('           Bam phim bat ky de ket thuc');
   Readln
End.