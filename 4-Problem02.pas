program Bab4Problem02;
{ Menghasilkan pasangan dari setiap warna pada kotak dengan setiap nama barang pada kotak lainnya }
{ ASUMSI: jumlah barang dan warna lebih besar dari 0 dan kurang besar sama dengan 10000, setiap barang dan warna terdiri dari satu kata saja }

{ KAMUS }
var
	jumlahWarna, jumlahBarang, i, j: integer;
	arrWarna, arrBarang: array [1..10000] of string;

{ ALGORITMA }
begin
	write('Masukkan jumlah warna : ');
	readln(jumlahWarna);
	writeln('Masukkan nama warna :');
	for i := 1 to jumlahWarna do
	begin
		readln(arrWarna[i]);
	end;
	write('Masukkan jumlah barang : ');
	readln(jumlahBarang);
	writeln('Masukkan nama barang :');
	for i := 1 to jumlahBarang do
	begin
		readln(arrBarang[i]);
	end;

	writeln('Ide barang selanjutnya :');
	for i := 1 to jumlahBarang do
	begin
		for j := 1 to jumlahWarna do
		begin
			writeln(arrBarang[i], ' ', arrWarna[j]);
		end;
	end;
	writeln('Terdapat ', jumlahWarna*jumlahBarang, ' ide yang mungkin');
end.