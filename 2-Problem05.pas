program minanggota;
var
	min, N, M, i, result : integer;
	// N : jumlah kelompok, M : jumlah anggota setiap kelompok, min : jumlah anggota minimal
	// result : Kelompok yang memiliki jumlah anggota min
begin
	write('Masukkan jumlah kelompok :');
	readln(N);
	result := 0;
	if (N>0) then
	begin
		write('Masukkan jumlah anggota kelompok 1 :');
		readln(M);
		min := M;
		result := 1;
		for i:=2 to N do
		begin
			write('Masukkan jumlah anggota kelompok ',i,' :');
			readln(M);
			if (M <= min) then
			begin
				min := M;
				result := i;
			end;
		end;
	end;
	writeln('Kelompok dengan anggota tersedikit adalah kelompok ', result);
end.