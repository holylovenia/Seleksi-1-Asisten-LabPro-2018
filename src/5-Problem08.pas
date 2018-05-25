program bab5problem08;

{ Digunakan untuk memanggil fungsi StrToInt }
uses Sysutils;

{ 
	Menyimpan informasi detail tentang benteng, seperti lokasi dan apakah benteng tersebut sudah dicek
	untuk serangan terhadap atau dari benteng lain.
}
type
	Bishop = record
	x : integer;		{ Menyimpan posisi kolom dari benteng }
	y : integer; 		{ Menyimpan baris kolom dari benteng }
	checked : boolean;  { Jika True, benteng saling serang. Jika False, benteng tidak saling serang }
end;

{
	Mencatat kumpulan benteng di papan catur dalam Array
}
type
	BishopArr = array of Bishop;


function parseBishop(): BishopArr;
{ Parsing dari file chess.txt ke dalam BishopArr }
	{ deklarasi variabel lokal }
	var
		chessFile : TextFile;
		n : integer;
		s : string;
		i, j: integer;
		nb : integer; { menghitung jumlah benteng }
		bishopList : bishopArr; { array of bishop }
	{ algoritma parser }
	begin
		{ assign file chess.txt sebagai variabel chessFile }
		assign(chessFile, 'chess.txt');
		{ membuka file dari awal }
		reset(chessFile);
		{ membaca nilai n, yaitu ukuran dari chessboard }
		readln(chessFile, s);
		n := StrToInt(s);
		{ mengalokasikan array bishopList }
		nb := 0;
		i := 0;
		while not eof(chessFile) do
		begin
			{ parsing board yang ada pada file }
			readln(chessFile, s);
			j := 0;
			while (j < n) do
			begin
				{ mengisi tile pada board sesuai dengan lokasi benteng (bishop) dan status checked diisi FALSE }
				if (s[2*j+1] = '1') then
				{ Jika terdapat benteng, masukkan lokasi dan status checked bishop pada bishopList }
				begin
					setLength(bishopList, nb+1);
					bishopList[nb].x := j;
					bishopList[nb].y := i;
					bishopList[nb].checked := False;
					nb := nb + 1;
				end;
			j := j + 1;
			end;
		i := i + 1;
		end;		 
		{ menutup file }
		Close(chessFile);
		{ mengembalikan bishopList dari fungsi }
		parseBishop := bishopList;
	end;

var
	bishopList : BishopArr; { Array yang menyimpan seluruh lokasi benteng }
	len : integer;			{ Jumlah benteng pada papan catur }
	i, j: integer;			{ Iterator }
	counter : integer;		{ Jumlah benteng yang saling serang }

{ algoritma utama }
begin
	{ 
		Membuat array of bishop yang akan diolah.
		bishop telah terurut berdasarkan letak x dan y. 
	}
	bishopList := parseBishop();
	writeln('matriks loaded!');
	{ menghitung banyaknya benteng }
	len := length(bishopList); // bawaan
	{ inisiasi counter sebagai penghitung jumlah benteng yang saling serang }
	counter := 0;
	{ Memproses tiap benteng }
	for i := 0 to len-1 do
	begin
		{  Mencari benteng lain yang lokasinya lebih kanan bawah }
		for j := i+1 to len-1 do
		begin
			{ Jika terdapat benteng yang mempunyai lokasi x atau y yang sama, tandai sebagai saling serang }
			if(bishopList[i].x = bishopList[j].x) or (bishopList[i].y = bishopList[j].y) then
			begin
				{ 
					Jika salah satu atau kedua benteng belum dihitung saling serang, hitung.
					Buat elemen checked menjadi True, menandakan benteng sudah terhitung.
				}
				if not(bishopList[i].checked) then
				begin
					bishopList[i].checked := True;
					counter := counter + 1;
				end;
				if not(bishopList[j].checked) then
				begin
					bishopList[j].checked := True;
					counter := counter + 1;
				end;
			end;
		end;
	end;
	{ Jumlah benteng yang tidak saling serang: len - counter }
	writeln('Banyaknya benteng yang tidak saling serang adalah ', len - counter);
end.