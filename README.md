# Seleksi 1 Asisten LabPro 2018
-----------------------------------
NIM : 13516040
Nama Lengkap : Maha William Chandra

# Daftar Isi

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
  - [Problem 4](#problem-4)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 3](#problem-3)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 2](#problem-2)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 12](#problem-12)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 11](#problem-11)


<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
# Deskripsi Soal, Source Code, dan Penjelasan Solusi Setiap Soal
## Bab 1 - Percabangan
---------------------------------
### Problem 4

Tuan Vin diajarkan tentang kuadran. Bidang kartesian dibagi menjadi kuadran 1, 2, 3, 4, serta sumbu x, sumbu y, dan titik origin. Karena Tuan Vin orang yang pelupa, dia lupa ciri-ciri masing-masing daerah. Tuan Vin meminta Anda untuk membantunya dengan membuat program yang dapat menentukan daeerah suatu titik.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai X : **0**

Masukkan nilai Y : **10**

Titik (0,10) berada di sumbu Y
***
Masukkan nilai X : **-3**

Masukkan nilai Y : **4**

Titik (-3,4) berada di kuadran 2
***
Masukkan nilai X : **0**

Masukkan nilai Y : **0**

Titik (0,0) berada di titik origin
***

Source code:
```Pascal
program Bab1Problem4;

procedure ReadPosition(var x:integer; var y:integer);
{Prosedur untuk membaca input posisi X dan Y pada bidang kartesian}
begin
	write('Masukkan nilai X : ');
	readln(x);
	write('Masukkan nilai Y : ');
	readln(y);
end;

procedure PrintPosition(x:integer; y:integer);
{Prosedur untuk mencetak kuadran dari posisi (x,y) pada bidang kartesian}
begin
	if (x = 0) and (y = 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di titik origin');
	end else
	if (x = 0) and (y <> 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di sumbu Y');
	end else
	if (x <> 0) and (y = 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di sumbu X');
	end else
	if (x > 0) and (y > 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di kuadran 1');
	end else
	if (x < 0) and (y > 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di kuadran 2');
	end else
	if (x < 0) and (y < 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di kuadran 3');
	end else
		writeln('Titik (', x, ',', y, ') berada di kuadran 4');
end;
var
	xPosition : integer;
	yPosition : integer;
	
begin
	ReadPosition(xPosition,yPosition);
	PrintPosition(xPosition,yPosition);
end.
```
Penjelasan:
Pencarian solusi dilakukan dengan membaca posisi sebagai dua buah variabel bertipe integer dan kemudian dilakukan percabangan menggunakan IF untuk masing-masing kasus sehingga ada 7 buah percabangan.
---------------------------------


## Bab 2 - Pengulangan
---------------------------------
### Problem 3


Karena bosan belajar kalkulus, seorang mahasiswa membuat sebuah deret. Deret tersebut sama dengan deret fibonacci, namun setiap bertemu bilangan yang habis dibagi **3**, maka nilai bilangan tersebut ditambahkan **1**. 
Sebagai contoh, 10 nilai deret pertama adalah sebagai berikut :
**1, 1, 2, 4, 7, 11, 19, 31, 50, 82, ...**


**Penjelasan :** 
Untuk bilangan keempat, seharusnya nilainya adalah 3, namun karena 3 habis dibagi 3, maka nilainya ditambah 1 menjadi 4 


Mahasiswa tersebut ingin membuat program, karena ia merasa deret ini sangatlah hebat. Bantulah mahasiswa tersebut!


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukkan banyaknya bilangan :10 
10 bilangan pertama dari deret adalah  
1  
1  
2  
4  
7  
11  
19  
31  
50  
82  
```
```
Masukkan banyaknya bilangan :3 
10 bilangan pertama dari deret adalah  
1  
1  
2  
```

Source Code
```Pascal
program Bab2Problem3;

procedure printDeret(n : integer);
{Mencetak deret fibonacci dengan improvisasi sesuai permintaan soal}
var
	i : integer;
	nPrevious : integer;
	nCurrent : integer;
	temp : integer;
begin
	if (n > 0) then
	begin
		nPrevious := 0;
		nCurrent := 1;
		writeln(n, ' bilangan pertama dari deret adalah');
		for i := 1 to n do
		begin
			writeln(nCurrent);
			temp := nCurrent;
			nCurrent += nPrevious;
			nPrevious := temp;
			if (nCurrent mod 3 = 0) then
			begin
				inc(nCurrent);
			end;
		end;
	end;
end;

var 
	nBilangan : integer;

begin
	write('Masukkan banyaknya bilangan :');
	readln(nBilangan);
	printDeret(nBilangan);
end.
```
Penjelasan:
Program menghasilkan deret fibonacci dengan improvisasi sesuai permintaan soal dengan menggunakan for loops karena diketahui bilangan pencacah sebagai jumlah pengulangan yang perlu dilakukan.
---------------------------------

## Bab 3 - Fungsi dan Prosedur
### Problem 2

Dalam dunia komputer, sering digunakan istilah *hexadecimal*, yaitu bilangan berbasis 16 (desimal adalah bilangan berbasis 10).Berikut adalah tabel yang membandingkan desimal dengan heksadesimal


| Desimal | Heksadesimal | Desimal | Heksadesimal |
| ------- | ------------ | ------- | ------------ |
| 0       | 00           | 9       | 09           |
| 1       | 01           | 10      | 0A           |
| 2       | 02           | 11      | 0B           |
| 3       | 03           | 12      | 0C           |
| 4       | 04           | 13      | 0D           |
| 5       | 05           | 14      | 0E           |
| 6       | 06           | 15      | 0F           |
| 7       | 07           | 16      | 10           |
| 8       | 08           | 17      | 11           |


Buatlah program yang menjumlahkan dua bilangan heksadesimal dua digit menjadi bilangan
heksadesimal! (Buatlah fungsi HexToDec() dan DecToHex())


**Format Input & Output (input di-*bold*)**
***
Masukan A : **11**

Masukan B: **05**

11 + 05 = 16
***
Masukan A : **1D**

Masukan B: **2B**

1D + 2B = 48
***

Source Code
```Pascal
program Bab3Problem2;
uses sysutils;

function HexToDec(Hex:string):integer;
{Fungsi untuk mengubah bilangan hexadecimal dengan panjang maksimal 2 digit menjadi integer}
var
	Dec : integer;
begin
	case Hex[2] of
		'0' .. '9' : Dec := StrToInt(Hex[2]);
		'A' : Dec := 10;
		'B' : Dec := 11;
		'C' : Dec := 12;
		'D' : Dec := 13;
		'E' : Dec := 14;
		'F' : Dec := 15;
	end;
	
	case Hex[1] of
		'0' .. '9' : Dec += StrToInt(Hex[1]) * 16;
		'A' : Dec += 10 * 16;
		'B' : Dec += 11 * 16;
		'C' : Dec += 12 * 16;
		'D' : Dec += 13 * 16;
		'E' : Dec += 14 * 16;
		'F' : Dec += 15 * 16;
	end;
	
	HexToDec := Dec;
end;

function ConvertToHex(Dec:integer):string;
begin
	case Dec of
		0 .. 9 : ConvertToHex := IntToStr(Dec);
		10 : ConvertToHex := 'A';
		11 : ConvertToHex := 'B';
		12 : ConvertToHex := 'C';
		13 : ConvertToHex := 'D';
		14 : ConvertToHex := 'E';
		15 : ConvertToHex := 'F';
	end;
end;

function DecToHex(Dec:integer):string;
{Fungsi untuk mengubah bilangan decimal }
var
	Hex : string;
	temp : integer;
begin
	Hex := '';
	while (Dec <> 0) do
	begin
		temp := Dec mod 16;
		Hex := ConvertToHex(temp) + Hex;
		Dec := Dec div 16;
	end;
	DecToHex := Hex;
end;

var
	Hex1 : string;
	Hex2 : string;
	
begin
	write('Masukan A : ');
	readln(Hex1);
	write('Masukan B : ');
	readln(Hex2);
	writeln(Hex1, ' + ', Hex2, ' = ', DecToHex(HexToDec(UpperCase(Hex1)) + HexToDec(UpperCase(Hex2))));
end.
```
Penjelasan:
Program membaca input 2 buah hexadecimal string (dengan asumsi format sudah benar, yaitu hexadecimal dengan panjang tepat 2 digit). Program kemudian mengubah kedua hexadecimal tersebut menjadi decimal lalu menjumlahkannya. Kemudian hasil penjumlahan diubah kembali ke hexadecimal sebelum dicetak ke layar.

## Bab 4 - *Array*
### Problem 12

Lucio diminta oleh orangtuanya untuk menduplikat kunci kamar hotel yang tidak ada cadangannya. Setiap kunci, memiliki nomor yang menandakan nomor kamar. Buatlah program untuk menentukan mana saja kunci yang harus diduplikat oleh Lucio

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kunci yang ada : **10**

Masukkan nomor ruangan kunci yang ada :

102

105

102

103

102

201

202


Kunci yang harus diduplikat :

105

103

201

202
***
Source Code:
```Pascal
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
```
Penjelasan:
Program menggunakan tipe data bentukan array yang berisi sebuah string yaitu nomor kunci yang diinput dan sebuah boolean untuk menandakan apakah nomor tersebut sudah diduplikat. Setiap kali nomor kunci diinput, akan dilakukan pengecekan pada array tersebut. Jika nomor tersebut ditemukan, maka boolean tersebut menjadi true. Jika tidak, dilakukan penambahan elemen baru pada array. Setelah itu, program mencetak kelayar setiap elemen array dengan nilai boolean = false.
-----------------

## Bab 5 - Matriks dan File Eksternal
### Problem 11

Krasti Krab telah semakin maju. Kini, telah ada `N` kasir yang dapat melayani penjualan. Masing-masing kasir memiliki slot antrian sepanjang `M`. Tuan Krab ingin mengetahui panjang antrian yang paling panjang di antara semua kasir yang ada. Dia meminta bantuan Anda untuk memecahkan masalah tersebut.

**Format *Input* dan *Output***
*Input* berupa kondisi antrian disimpan dalam file `queue.txt`. Dalam file tersebut, baris pertama berisi 2 bilangan bulat positif `N` dan `M` yang merepresentasikan banyak kasir dan panjang slot antrian untuk setiap kasir. `N` baris berikutnya berisi `M` bilangan 0 atau 1 yang merepresentasikan kondisi antrian pada suatu kasir. Jika bernilai 0, maka slot tersebut kosong. Sebaliknya jika bernilai 1, maka slot tersebut terisi. Diasumsikan bahwa pengunjung yang baru datang akan memilih suatu kasir dan  **langsung mengambil slot terdepan yang tersedia pada kasir tersebut**. Oleh karena itu, pada setiap baris antrian kasir, tidak ada angka 0 yang berada di sebelah kanan angka 1.
*Output* berupa informasi mengenai panjang antrian terpanjang yang ada.

**Contoh**

- queue.txt

```
3 4
0 0 1 1
0 1 1 1
0 0 0 0
```

- *runtime program*

```
file loaded!
Antrian terpanjang adalah 3
```
Source Code
```Pascal
program Bab5Problem11;

type
	Matriks = array[1 .. 255, 1 .. 255] of integer;
	
procedure ReadFile(var nBrs : integer; var nKol : integer; var M : Matriks);
var
	inputFile : TextFile;
	i : integer;
	j : integer;
	
begin
	assign(inputFile,'queue.txt');
	reset(inputFile);
	read(inputFile, nBrs);
	read(inputFile, nKol);
	for i := 1 to nBrs do
	begin
		for j := 1 to nKol do
		begin
			read(inputFile, M[i][j]);
		end;
	end;
	writeln('file loaded!');
end;

function antrianTerpanjang(nBrs : integer; nKol : integer; M : Matriks):integer;
var
	i : integer;
	j : integer;
	found : boolean;
begin
	found := false;
	i := 1;
	j := 1;
	while (not found) and (j <= nKol) do
	begin
		if (M[i][j] = 1) then
		begin
			found := true;
		end else
		if (i <= nBrs) then
		begin
			inc(i);
		end else
		begin
			i := 1;
			inc(j);
		end;
	end;
	antrianTerpanjang := nKol - j + 1;
end;
var
	jumlahKasir : integer;
	slotAntrian : integer;
	KrastiKrab : Matriks;

begin
	ReadFile(jumlahKasir, slotAntrian, KrastiKrab);
	writeln('Antrian terpanjang adalah ', antrianTerpanjang(jumlahKasir, slotAntrian, KrastiKrab));
end.
```
Penjelasan:
Pertama program membaca input dari file eksternal dan menyimpan nilai panjang dan lebar matriks serta isi matriksnya yang merepresentasikan kasir dan antrian. Kemudian program melakukan searching secara traversal dari ATAS ke BAWAH sampai menemukan angka 1 yang pertama. Posisi angka 1 yang ditemukan menentukan panjang antrian.
-----------------------------------

