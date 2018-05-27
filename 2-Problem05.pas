program Bab2Problem05;
{ Menghasilkan kelompok dengan jumlah anggota terkecil dari kelompok-kelompok yang ada }
{ ASUMSI: semua input bertipe bilangan bulat positif, hanya ada satu kelompok dengan anggota paling sedikit }

{ KAMUS }
var
	n, m, i, minAnggota, minKelompok: longint;

{ ALGORITMA }
begin
	write('Masukan jumlah kelompok :');
	readln(n);
	for i := 1 to n do
	begin
		write('Masukan jumlah anggota kelompok ', i, ' :');
		readln(m);
		if (i = 1) then
		begin
			minAnggota := M;
			minKelompok := 1;
		end
		else
		begin
			if (m < minAnggota) then
			begin
				minAnggota := M;
				minKelompok := i;
			end;
		end;
	end;
	writeln('Kelompok dengan anggota tersedikit adalah kelompok ', minKelompok);
end.
