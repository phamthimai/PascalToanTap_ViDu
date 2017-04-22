Program Thu_tuc_Delete;
Var
	St,St1:String;
   Pos,Num:Integer;
Begin
	Writeln(' MINH HOA THU TUC DELETE();');
   Writeln('      ------------');
   Write('-Nhap mot chuoi: ');
   Readln(St);
   Write('-Muon xoa tu vi tri nao: ');
   Readln(Pos);
   Write('-Muon xoa bao nhieu ky tu: ');
   Readln(Num);
   Writeln('+Neu xoa tu vi tri thu: ',Pos:2);
   Writeln('+So ky tu can xoa: ',Num:2);
   Delete(St,Pos,Num);
   Writeln('+Ket qua con lai : ',St);
   Readln
End.