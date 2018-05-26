program hargasewa;
var
	P, T, D, L : integer; // P : harga sewa pokok, T : batas waktu sewa, D : tambahan harga sewa, L : lama tuan Vin meminjam
	R : integer; // R : hasil harga sewa yang harus dibayar
begin
	write('Masukkan harga sewa pokok: ');
	readln(P);
	write('Masukkan batas waktu sewa: ');
	readln(T);
	write('Masukkan tambahan harga sewa: ');
	readln(D);
	write('Masukkan lama Tuan Vin meminjam: ');
	readln(L);
	if (L <= T) then
	begin
		R := L * P;
	end;
	if (L > T) then
	begin
		R := (T * P) + ((L-T) * (P+D));
	end;
	writeln('Harga sewa yang harus dibayar Tuan Vin adalah: ', R);
end.