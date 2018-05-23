# Seleksi 1 Asisten LabPro 2018

Pembuat: **I Kadek Yuda Budipratama Giri** *(13516115)*

## Deskripsi Soal yang Dikerjakan

### Bab 1 - Percabangan

#### Problem 12

Tuan Vin menemukan sebuah kertas berisi persamaan matematika, tetapi operatornya ada yang hilang. Persamaan tersebut berbentuk:


A op1 B = C op2 D


Tuan Vin tahu bahwa operator yang mungkin hanya tambah, kurang, kali dan div dan pasti ada jawabnnya. Karena iseng, Tuan Vin menantang Anda untuk menyelesaikannya. Jika ada lebih dari 1 jawaban, tampilkan yang mana saja


**Format Input & Output (input di-*bold*)**
<pre>
Masukkan nilai A: <b>2</b>

Masukkan nilai B: <b>3</b>

Masukkan nilai C: <b>7</b>

Masukkan nilai D: <b>1</b>

Persamaan yang mungkin adalah: 2 * 3 = 7 - 1
</pre>

<pre>
Masukkan nilai A: <b>10</b>

Masukkan nilai B: <b>3</b>

Masukkan nilai C: <b>2</b>

Masukkan nilai D: <b>1</b>

Persamaan yang mungkin adalah: 10 / 3 = 2 + 1
</pre>


### Bab 2 - Pengulangan

#### Problem 11


Suatu program didesain untuk mengenkripsi sebuah teks. Caranya adalah dengan mengubah karakter setiap hurufnya (kecuali tanda baca) dengan aturan menggeser sebanyak N. Misal jika N adalah 2, maka teks **i love you!** akan berubah menjadi **k nqxg aqw!**. 
Anda ditugaskan untuk memecahkan isi teks terenkripsi yang diberikan dan juga diberikan besarnya nilai **N**


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan teks terenkripsi :k nqxg aqw!
Masukan nilai N :2
Teks aslinya adalah "i love you!"
```


### Bab 3 - Fungsi dan Prosedur

#### Problem 10

Faktorial dari sebuah bilangan bulat N (N!) dapat dinyatakan dalam bentuk sebagai berikut.
`N! = N x (N-1) x (N-2) x ... x 1`


Buatlah sebuah program yang menghitung nilai faktorial dari sebuah bilangan bulat yang diberikan. misal N! (Catatan: Buat fungsi Faktorial(N) untuk menghitung nilai faktorial tersebut)


**Format Input & Output (input di-*bold*)**
<pre>
Masukan N: <b>6</b>

N! = 720
</pre>


### Bab 4 - Array

#### Problem 9

Julia baru saja membolos kelas kalkulus. Padahal saat itu baru saja diajarkan tentang turunan persamaan matematika biasa. Sebagai teman yang baik, buatlah sebuah program yang dapat menurunkan persamaan matematika

**Format Input & Output (input di-*bold*)**
<pre>
Masukkan pangkat paling besar : <b>2</b>

Masukkan koefisien x^2 : <b>5</b>

Masukkan koefisien x^1 : <b>2</b>

Masukkan koefisien x^0 : <b>2</b>

Maka hasil turunannya adalah 10x^1 + 2x^0
</pre>

<pre>
Masukkan pangkat paling besar : **3**

Masukkan koefisien x^3 : <b>1</b>

Masukkan koefisien x^2 : <b>5</b>

Masukkan koefisien x^1 : <b>2</b>

Masukkan koefisien x^0 : <b>2</b>

Maka hasil turunannya adalah 3x^2 + 10x^0 + 2x^0
</pre>


### Bab 5 - Matriks dan File Eksternal

#### Problem 8

Tuan Krab sedang iseng bermain catur di waktu luangnya. Namun, Tuan Krab ingin mencoba sebuah permainan catur baru. Pada permainan ini, dia hanya menggunakan sejumlah benteng (*rook*). Selain itu, ukuran papan catur adalah `N`x`N` dengan `N` adalah bilangan bulat positif. Tantangannya adalah mencari banyaknya benteng yang tidak saling menyerang dengan benteng lain yang ada pada permainan. Bantulah Tuan Krab untuk menyelesaikan permainan ini!

**Format *Input* dan *Output***
*Input* kondisi papan permainan diambil dari file eksternal `chess.txt`. Kondisi permainan digambarkan dengan matriks berukuran `N`x`N`. Jika isi suatu *cell* matriks adalah 1, maka terdapat benteng pada *cell* tersebut. Sebaliknya jika berisi 0, maka *cell* tersebut kosong. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks pada baris tersebut.
*Output* berupa informasi mengenai banyak benteng yang tidak saling serang.

**Contoh**

- chess.txt

```
4
1 0 0 1
0 1 0 0
0 0 1 0
0 0 0 1
```

- *runtime program*

```
matriks loaded!
Banyaknya benteng yang tidak saling serang adalah 2
```

## Source Code dan Penjelasan

### Bab 1 Problem 12

#### Source Code
**1-Problem12.pas**
```Pascal
program bab1problem12;

var
a, b, c, d : integer;

begin
	write('Masukkan nilai A: '); readln(a);
	write('Masukkan nilai B: '); readln(b);
	write('Masukkan nilai C: '); readln(c);
	write('Masukkan nilai D: '); readln(d);

	{ Mencoba seluruh kemungkinan jawaban sehingga a op1 b = c op2 d terpenuhi }

	if (a + b = c + d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' + ',b,' = ',c,' + ',d);
	end
	else if (a + b = c - d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' + ',b,' = ',c,' - ',d);
	end
	else if (a + b = c * d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' + ',b,' = ',c,' * ',d);			
	end
	else if (d <> 0) and (a + b = c / d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' + ',b,' = ',c,' / ',d);
	end
	else if (a - b = c + d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' - ',b,' = ',c,' + ',d);
	end
	else if (a - b = c - d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' - ',b,' = ',c,' - ',d);
	end
	else if (a - b = c * d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' - ',b,' = ',c,' * ',d);
	end
	else if (d <> 0) and (a - b = c / d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' - ',b,' = ',c,' / ',d);
	end
	else if (a * b = c + d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' * ',b,' = ',c,' + ',d);
	end
	else if (a * b = c - d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' * ',b,' = ',c,' - ',d);
	end
	else if (a * b = c * d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' * ',b,' = ',c,' * ',d);
	end
	else if (d <> 0) and (a * b = c / d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' * ',b,' = ',c,' / ',d);
	end
	else if (b <> 0) then
	begin
		if (a / b = c + d) then
		begin
			writeln('Persamaan yang mungkin adalah: ',a,' / ',b,' = ',c,' + ',d);
		end
		else if (a / b = c - d) then
		begin
			writeln('Persamaan yang mungkin adalah: ',a,' / ',b,' = ',c,' - ',d);
		end
		else if (a / b = c * d) then
		begin
			writeln('Persamaan yang mungkin adalah: ',a,' / ',b,' = ',c,' * ',d);
		end
		else if (d <> 0) and (a / b = c / d) then
		begin
			writeln('Persamaan yang mungkin adalah: ',a,' / ',b,' = ',c,' / ',d);
		end
		else
			writeln('Tidak ada persamaan A op1 B = C op2 D yang memenuhi');
	end
	{ Jika tidak ada kemungkinan yang dapat dilakukan, maka diberikan pesan kesalahan }
	else
	begin
		writeln('Tidak ada persamaan A op1 B = C op2 D yang memenuhi');
	end;
end.
```

#### Penjelasan Solusi

Untuk menyelesaikan permasalahan ini, solusi dari permasalahan akan dicari secara *brute-force* dengan mengetes semua kemungkinan op1 dan op2. Untuk mengetesnya, nilai A, B, C, D akan diperiksa satu per satu dengan semua kemungkinan operator angka (+, -, *, \/). Jika ada yang memenuhi, solusi diambil. Jika tidak ada, diberikan keterangan bahwa solusinya tidak ada.

Implementasi dalam program dimulai dengan memninta input A, B, C, D dalam program. Setelah itu, akan dijalankan sebuah *decision making* dengan `if-else` di mana kondisi benar dari `A op1 B = C op2 D`, dengan op1 dan op2 dalah operator angka (+, -, *, \/). Untuk pembagian (\/), dibuat akan diperiksa terlebih dahulu apabila nilai penyebutnya 0. Jika tidak, maka kondisi persamaan `A op1 B = C op2 D` akan diperiksa lebih lanjut. Jika salah satu kondisi persamaan terpenuhi untuk op1 dan op2, akan dicetak output yang memberikan solusi. Jika tidak ada, akan diberikan pesan kesalahan bahwa solusi `A op1 B = C op2 D` tidak dapat ditemukan untuk nilai A, B, C, dan D.

---

### Bab 2 Problem 11

#### Source Code
**2-Problem11.pas**
```Pascal
program bab2problem11;

const
MIN_UPPER = Ord('A');
MAX_UPPER = Ord('Z');
MIN_LOWER = Ord('a');
MAX_LOWER = Ord('z');

var
input, output : string;
n, i, asciiValue, max, min: integer;
alphabet : boolean; { menentukan apakah suatu karakter yang dibaca ada dalam alphabet atau tidak }
begin
	write('Masukan teks terenkripsi :');
	readln(input);
	write('Masukan nilai N :');
	readln(n);
	{ inisialisasi nilai output }
	output := input;
	for i := 1 to length(input) do
	begin
		{ mencari nilai ASCII karakter yang dibaca }
		asciiValue := Ord(input[i]);
		{ jika nilai ASCII di antara nilai minimal dan maksimal uppercase, enkripsi di bagian uppercase  }
		if ((asciiValue >= MIN_UPPER) and (asciiValue <= MAX_UPPER)) then
		begin
			alphabet := True;
			max := MAX_UPPER;
			min := MIN_UPPER;
		end
		{ jika nilai ASCII di antara nilai minimal dan maksimal lowercase, enkripsi di bagian lowercase  }
		else if ((asciiValue >= MIN_LOWER) and (asciiValue <= MAX_LOWER)) then
		begin
			alphabet := True;
			max := MAX_LOWER;
			min := MIN_LOWER;
		end
		{ jika tidak ada di keduanya, bukan alpabet }
		else alphabet := False;
		if (alphabet) then
		begin
			{ mendekripsi nilai ascii }
			asciiValue := asciiValue - n;
			{ penanganan jika nilai hasil deksripsi tidak dalam jangkauan alphabet lower/uppercase }
			while (asciiValue <= min) do
			begin
				asciiValue := asciiValue + 26
			end;
			while (asciiValue >= max) do
			begin
				asciiValue := asciiValue - 26
			end;
			{ mencari karakter dari nilai ascii yang telah didekripsi, dimasukkan ke dalam output }
			output[i] := chr(asciiValue);
		end
	end;
	writeln('Teks aslinya adalah "',output,'"');
end.
```

#### Penjelasan Solusi

---

### Bab 3 Problem 10

#### Source Code
**3-Problem10.pas**
```Pascal
program bab3problem10;

var
n : longint;

{ definisi fungsi Factorial }
function Factorial(n : longint) : longint;
{ Mengembalikan nilai n! dalam bentuk long integer untuk memenuhi angka-angka besar }
	
	{ algoritma fungsi }
	begin
		{ BASIS: 1! = 0! = 1 }
		if (n <= 1) then 
		begin
			Factorial := 1; 
		end
		{ REKURENS : n! = n * (n-1)! }
		else
			Factorial := n * Factorial(n-1);
	end;

{ algoritma program utama }
begin
	write('Masukan N: ');
	readln(n);
	writeln('N! = ',Factorial(n));
end.
```

#### Penjelasan Solusi

---

### Bab 4 Problem 9

#### Source Code
**4-Problem09.pas**
```Pascal
program bab4problem9;

var
n,i,x : integer;
result : array of integer; { array yang menyimpan persamaan derajat n-1 hasil turunan persamaan derajat n. range indeks 0..(n-1) }

begin
	write('Masukkan pangkat paling besar : ');
	readln(n);
	{ Mengalokasikan ukuran dari array yang akan digunakan, yaitu sebesar n }
	setlength(result, n);
	{ Mengambil hasil input persamaan dan sekaligus menghitung hasilnya }
	for i := n downto 0 do
	begin
		write('Masukkan koefisien x^',i,': ');
		readln(x);
		{ Jika pangkatnya X^0 pada persamaan, tidak perlu dimasukkan ke dalam result }
		if (i > 0) then
		begin
			result[i-1] := i*x;
		end;
	end;
	write('Maka hasil turunannya adalah ');
	{* Penulisan hasil 
	   Spek penulisan hasil:
	       1. Pada penulisan X^(n-1), jika koefisiennya tidak negatif, tanda '+' tidak perlu ditulis
	       2. Pada penulisan koefisien pangkat lain, jika koefisien negatif, harus didahului ' - '. Jika tidak, harus didahului '+' 

	   Contoh penulisan:
	       [1] 3X^2 + 10X^1 + 2X^0
	       [2] - 10X^1 + 2X^0
	       [3] 10X^1 - 2X^0
	*}
	for i := n-1 downto 0 do
	begin
		{ Penanganan kasus koefisien positif }
		if(result[i] > 0) then
			begin
				{ Penanganan kasus penulisan X^m dan X^(n-1) | m < (n-1) }
				if (i < n-1) then
				begin
					write('+ ',result[i],'X^',i);
				end
				else
					write(result[i],'X^',i);
			end
		else
		{ Penanganan kasus koefisien negatif }
			write('- ', -1*result[i],'X^',i);
		{ Penanganan spasi untuk estetika }
		if (i > 0) then
			write(' ');
	end;
end.
 ```

#### Penjelasan Solusi

---

### Bab 5 Problem 8

#### Source Code
**5-Problem08.pas**
```Pascal
program bab5problem8;

uses Sysutils;

{ deklarasi tipe Tile }
type
	Tile = record       { Struktur data Tile sebagai kotak dalam board catur }
	bishop : integer;   { Menyimpan keberadaan benteng pada kotak catur. 1 jika ada, 0 jika tidak }
	checked : boolean;  { Menyimpan apakah tile ini sudah dihitung saling serang jika ada benteng di tile ini }
end;

type 
	ChessBoard = record             { Struktur data ChessBoard sebagai papan catur beserta benteng yang ada }
	board : array of array of Tile; { Menyimpan keadaan chessboard }
	nBishop : integer;              { Menyimpan jumlah benteng dalam chessboard}
end;

{ deklarasi variabel gloal }
var
chess: ChessBoard;  { Kotak catur }
len : integer;		{ Ukuran kotak catur }
i, j, k: integer;   { Variabel iterator }
count : integer;    { Penghitung jumlah banteng yang saling serang }

{ Deklarasi fungsi file parser }
function ParseChessBoard(): ChessBoard;
{ Parsing dari file chess.txt ke dalam matrix of Tile }

	{ deklarasi variabel lokal }
	var
		chessFile : TextFile;
		n : integer;
		s : string;
		i, j: integer;
		nb : integer; { menghitung jumlah benteng }
		board : array of array of Tile; { board }
	{ algoritma parser }
	begin
		{ assign file chess.txt sebagai variabel chessFile }
		assign(chessFile, 'chess.txt');
		{ membuka file dari awal }
		reset(chessFile);
		{ membaca nilai n, yaitu ukuran dari chessboard }
		readln(chessFile, s);
		n := StrToInt(s);
		{ mengalokasikan matrix board }
		setlength(board,n,n);
		nb := 0;
		i := 0;
		while not eof(chessFile) do
		begin
			{ parsing board yang ada pada file }
			readln(chessFile, s);
			j := 0;
			while (j < n) do
			begin
				{ mengisi tile pada board sesuai dengan keadaan benteng (bishop) dan status checked diisi FALSE }
				if (s[2*j+1] = '1') then
				{ Jika terdapat bentang, tambahkan pada counter nb sebagai counter jumlah benteng pada board }
				begin
					board[i, j].bishop := 1;
					board[i, j].checked := False;
					nb := nb + 1;
				end
				else if (s[2*j + 1] = '0') then
				begin
					board[i, j].bishop := 0;
					board[i, j].checked := False;
				end;
			j := j + 1;
			end;
		i := i + 1;
		end;		 
		{ menutup file }
		Close(chessFile);
		ParseChessBoard.board := board;
		ParseChessBoard.nBishop := nb;
	end;

begin
	{ Parsing chessboard dari file chess.txt }
	chess := ParseChessBoard();
	writeln('matriks loaded!');
	{ Inisiasi panjang board dan counter jumlah benteng saling serang }
	len := length(chess.board);
	count := 0;
	{ Memproses chessboard }
	for i := 0 to len-1 do
	begin
		for j := 0 to len-1 do
		begin
			{ cek untuk chess[i,j] apakah ada benteng }
			if (chess.board[i, j].bishop = 1) then
			begin
				{ cek secara horizontal mulai dari tile di sebelah kanannya jika ada benteng lain }
				k := j+1;
				while (k < len) do
				begin
					{ 
					    Jika terdapat benteng pada salah satu tile di sebelah kanannya, 
					    cek kedua benteng apabila sudah pernah dicatat sebagai benteng yang saling serang
					}
					if (chess.board[i,k].bishop = 1) then
					begin
						{ Jika belum dicek, hitung benteng tersebut lalu catat sebagai saling serang }
						if not(chess.board[i,j].checked) then 
						begin
							count := count + 1;
							chess.board[i,j].checked := True;
						end;
						{ Jika belum dicek, hitung benteng lain tersebut lalu catat sebagai saling serang }
						if not(chess.board[i,k].checked) then
						begin
							count := count + 1;
							chess.board[i,k].checked := True;
						end;
						{ langsung keluar dari loop dan memeriksa tile lain  }
						k := len;
					end
					{ Jika tidak ada benteng, cek tile sebelahnya sampai akhir dari kolom board }
					else k := k + 1;
				end;

				{ cek secara vertical mulai dari tile di bawahnya jika ada benteng lain }
				k := i+1;
				while (k < len) do
				begin
					{ 
					    Jika terdapat benteng pada salah satu tile di bawahnya, 
					    cek kedua benteng apabila sudah pernah dicatat sebagai benteng yang saling serang
					}
					if (chess.board[k,j].bishop = 1) then
					begin
						{ Jika belum dicek, hitung benteng tersebut lalu catat sebagai saling serang }
						if not(chess.board[i,j].checked) then 
						begin
							count := count + 1;
							chess.board[i,j].checked := True;
						end;
						{ Jika belum dicek, hitung benteng lain tersebut lalu catat sebagai saling serang }
						if not(chess.board[k,j].checked) then
						begin
							count := count + 1;
							chess.board[k,j].checked := True;
						end;
						{ langsung keluar dari loop dan memeriksa tile lain  }
						k := len;
					end
					{ Jika tidak ada benteng, cek tile di bawahnya sampai akhir dari baris board }
					else k := k + 1;
				end;
			end;
		end;
	end;
	{ Jumlah benteng yang tidak saling serang adalah jumlah benteng dikurangi jumlah benteng yang saling serang }
	writeln('Banyaknya benteng yang tidak saling serang adalah ',chess.nBishop - count);
end.
```

#### Penjelasan Solusi

---
