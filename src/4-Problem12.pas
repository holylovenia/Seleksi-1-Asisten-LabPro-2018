program Bab4Problem12;

type
	Kunci = record
		nomorKunci : string;
		duplikat : boolean;
	end;
	listKunci = array [1 .. 255] of Kunci;

procedure Search(var list : listKunci;var neff : integer; nomor : string);
{Prosedur untuk memeriksa apakah 'list' memiliki elemen yang sama dengan 'nomor'} 
{Jika tidak, tambahkan elemen 'nomor' sebagai elemen terakhir list}
{Jika iya, elemen tersebut diberi tanda duplikat (duplikat := true)}
var
	i : integer;
	found : boolean;
begin
	if (neff = 0) then
	{Jika list kosong, langsung tambahkan elemen}
	begin
		list[neff + 1].nomorKunci := nomor;
		list[neff + 1].duplikat := false;
		inc(neff);
	end else
	begin
	{Jika list tidak kosong, lakukan pengecekan}
		found := false;
		i := 1;
		while (i <= neff) and (not found) do
		begin
			if (list[i].nomorKunci = nomor) then
			begin
				found := true;
				list[i].duplikat := true;
			end;
			inc(i)
		end;
		if (not found) then
		begin
			list[i].nomorKunci := nomor;
			list[i].duplikat := false;
			inc(neff);
		end;
	end;
end;
				
var
	daftarKunci : listKunci;
	i : integer;
	jumlahKunci : integer;
	temp : string;
	neff : integer;
begin
	write('Masukkan jumlah kunci yang ada : ');
	readln(jumlahKunci);
	neff := 0;
	writeln('Masukkan nomor ruangan kunci yang ada :');
	for i := 1 to jumlahKunci do
	begin
		readln(temp);
		Search(daftarKunci, neff, temp);
	end;
	
	writeln('Kunci yang harus diduplikat :');
	for i := 1 to neff do
	begin
		if (daftarKunci[i].duplikat = false) then
		begin
			writeln(daftarKunci[i].nomorKunci);
		end;
	end;
end.