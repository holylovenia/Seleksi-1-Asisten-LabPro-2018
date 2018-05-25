program Problem2_5;
{*  Shevalda Gracielira/13515134
 * Merotasi gambar dalam representasi matriks dua dimensi
 * Rotasi 90 derajat searah jarum jam
 * Asumsi ukuran matriks tidak lebih dari 100x100
 *}

const
	IN_FNAME = 'image.txt';
	OUT_FNAME = 'result.txt';

type
	TWO_DIMENSION_ARRAY  = array[1..100, 1..100] of integer;

var
	N : integer;										// ukuran matriks sebenarnya
	image : TWO_DIMENSION_ARRAY;		// gambar
	jumlah_rotasi : integer;				// jumlah rotasi terhadap matriks gambar
	i : integer;

procedure importImage(nama_file : string; var matriks : TWO_DIMENSION_ARRAY; var n : integer);
{* Membaca matriks gambar dari file 'image.txt' *}
var
	buffer : char;
	fin : file of char;
	baris, kolom : integer;
begin
	buffer := 'a';
	assign(fin, nama_file);
	reset(fin);
	read(fin, buffer);		// Membaca ukuran matriks gambar
	val(buffer, n);
	// Membaca isi matriks gambar
	for baris := 1 to n do
		begin
			for kolom := 1 to n do
				begin
						read(fin, buffer);
						while (ord(buffer) = 32) or (ord(buffer) = 10) or (ord(buffer) = 13) do
							// skip spasi, newline, dan carriage return
								read(fin, buffer);
						val(buffer, matriks[baris][kolom]);
				end;
		end;
	close(fin);
end;

procedure exportImage(nama_file : string; matriks : TWO_DIMENSION_ARRAY; n : integer);
{* Menuliskan matriks gambar ke file 'result.txt' *}
var
	buffer : string;
	c_temp : char;
	fout : text;
	baris, kolom : integer;
begin
	buffer := '';
	assign(fout, nama_file);
	rewrite(fout);
	c_temp := chr(n+48);
	buffer := buffer + c_temp;
	writeln(fout, buffer);		// menulis ukuran matriks gambar
	// menuliskan isi matriks gambar
	for baris := 1 to n do
		begin
			buffer := '';
			for kolom := 1 to n do
				begin
					c_temp := chr(matriks[baris,kolom]+48);
					buffer := buffer + c_temp;
					if kolom <> n then
						buffer := buffer + ' '
				end;
			writeln(fout, buffer);
		end;
	close(fout);
end;

procedure rotate90degree(var source : TWO_DIMENSION_ARRAY; n : integer);
{* Merotasi matriks gambar 90 derajat searah jarum jam *}
var
	baris, kolom : integer;
	m_temp : TWO_DIMENSION_ARRAY;
begin
	for baris := 1 to n do
		begin
			for kolom := 1 to n do
				begin
					m_temp[kolom, n-baris+1] := source[baris, kolom];
				end;
		end;
	source := m_temp;
end;

begin
	// membaca gambar dari text file
	importImage(IN_FNAME, image, N);
	writeln('file loaded!');

	write('Masukkan banyak rotasi : ');
	readln(jumlah_rotasi);

	// rotasi matriks gambar
	if jumlah_rotasi mod 4 <> 0 then
		for i := 1 to jumlah_rotasi do
			rotate90degree(image, N);

	// menuliskan hasil gambar ke text file
	exportImage(OUT_FNAME, image, N);
	writeln('result exported!');
end.
