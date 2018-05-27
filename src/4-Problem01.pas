//Nama / NIM : Christian Kevin Saputra / 13516073

Program Bab4_Array;

var
	stok , temp: array of string;
	jumlah,i,j,k,pilihan :integer;
	found: boolean;
	namabarang :string;

{Algoritma}
Begin
	write('Masukkan jumlah barang: ');
	readln(jumlah);
	SetLength(stok, jumlah);
	for i:=0 to jumlah-1 do
	Begin
		write('Masukkan nama barang: ');
		readln(stok[i]);
	end;
	while length(stok) <> 0 do
	Begin
		writeln();
		writeln('1.Jual');
		writeln('2.Lihat stok');
		writeln();
		write('Pilihan menu: ');
		readln(pilihan);
		while (pilihan < 1) or (pilihan > 2) do
		Begin
			writeln('Pilihan menu salah. Silahkan ulangi');
			write('Pilihan menu: ');
			readln(pilihan);
		end;
		j:=0;
		if (pilihan = 1) then
		Begin
			found:=false;
			write('Masukkan nama barang:');
			readln(namabarang);
			while (j <= length(stok) - 1) and (not(found)) do
			Begin
				if (stok[j] = namabarang) then
				Begin
					stok[j] := 'null';
					found:=true;
					//mengurangi elemen di dalam array
					SetLength(temp, length(stok)-1);
					k:=0;
					for i:=0 to length(stok) - 1 do
					Begin
						if (i <> j) then
						Begin
							temp[k] := stok[i];
							k:= k + 1;
						end;
					end;		
					stok:=Copy(temp,0,length(temp));		
				end else
					j := j + 1;
			end;

			if (not(found)) then
				writeln('Barang tidak ada')
			else
				writeln('Barang berhasil dijual');
		end else
		Begin
			write ('Stok toko: ');
			while (j < length(stok)-1) do
			Begin
				if(stok[j] = 'null') then
					j:= j + 1
				else
					write(stok[j],', ');
					j:= j+1;
			end;
			if(stok[j] <> 'null') then
			Begin
				writeln(stok[j]);
				j:= j+1;
			end;
		end;
	end;
	writeln('Barang sudah habis, silahkan melakukan restok barang');
end.