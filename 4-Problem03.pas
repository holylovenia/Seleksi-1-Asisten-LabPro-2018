program fibonacci;
var
	arraytamu : array[1..100] of string; // arraytamu : kumpulan nama dari tamu - tamu
	arrayfibonacci : array[1..100] of integer; // arrayfibonacci : deret fibonacci yang diperlukan untuk digunakan pada fungsi isFibonacci
	arrayhasil : array[1..100] of string; // arrayhasil : kumpulan nama yang urutannya merupakan angka fibonacci
	jmlfibonacci : integer; // jmlfibonacci : panjang deret arrayfibonacci
	N, i, j : integer;

type
	arrint = array[1..100] of integer;

procedure makeFibonacci(x : integer; var result : arrint; var count : integer);
// Prosedur makeFibonacci digunakan untuk membuat deret Fibonacci yang semua angkanya lebih kecil dari x
var
	i : integer;
	hasilsetelah : integer;
begin
	result[1] := 0;
	result[2] := 1;
	i := 3;
	result[i] := result[i - 1] + result[i - 2];
	hasilsetelah := result[i] + result[i-1];
	while (hasilsetelah < x) do
	begin
		i := i + 1;
		result[i] := result[i - 1] + result[i - 2];
		hasilsetelah := result[i] + result[i-1];
	end;
	count := i;
end;

function isFibonacci(x : integer; arr : arrint; length : integer) : boolean;
// Fungsi isFibonacci digunakan untuk mengembalikan true jika x ada di dalam deret fibonacci arr yang berpanjang length
var
	i : integer;
begin
	isFibonacci := false;
	for i:=1 to length do
	begin
		if (x = arr[i]) then
			isFibonacci := true;
		begin
		end;
	end;
end;

begin
	write('Masukkan jumlah tamu : ');
	readln(N);
	makeFibonacci(N,arrayfibonacci,jmlfibonacci);
	j := 0;
	for i:=1 to N do
	begin
		write('Masukkan nama tamu ', i, ' : ');
		readln(arraytamu[i]);
		// Memasukkan nama ke arrayhasil jika urutan tersebut merupakan angka dalam deret fibonacci
		if (isFibonacci(i, arrayfibonacci, jmlfibonacci)) then
		begin
			j := j + 1;
			arrayhasil[j] := arraytamu[i];
		end;
	end;
	writeln('Tamu yang akan mendapat hadiah adalah : ');
	// Mencetak hasil
	for i:=1 to j do
	begin
		writeln(arrayhasil[i]);
	end;
end.