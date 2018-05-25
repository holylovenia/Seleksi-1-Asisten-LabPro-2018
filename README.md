# Seleksi 1 Asisten LabPro 2018
-----------------------------------
Nama: Shevalda Gracielira
NIM: 13516134

------

------

------

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
  - [Problem 7](#problem-7)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 6](#problem-6-1)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 5](#problem-5-2)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 3](#problem-3-3)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 2](#problem-2-4)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
------

------

## Bab 1 - Percabangan
---------------------------------

### Problem 7

Anda sedang bermain suit dengan Tuan Vin. Suit adalah permainan yang mengeluarkan batu, gunting atau kertas, dan pemenang ditentukan dari apa yang mereka keluarkan. Batu menang melawan gunting, gunting menang melawan kertas, kertas menang melawan batu. Karena Anda terus kalah, Anda menantang Tuan Vin untuk mengalahkan program Anda dalam suit. Tuan Vin pun setuju, tapi Anda hanya diperbolehkan menggunakan **batu atau kertas saja**. Dapatkah Anda membuat program yang tidak pernah kalah dari Tuan Vin?


**Format Input & Output (input di-*bold*)**
***
Tuan Vin mengeluarkan: **gunting**

Anda mengeluarkan: **batu**
***
Tuan Vin mengeluarkan: **kertas**

Anda mengeluarkan: **kertas**
***
Penjelasan contoh 2:
Karena Anda hanya boleh mengeluarkan batu atau kertas saja, maka agar tidak kalah Anda harus menang atau memaksa seri dengan mengeluarkan kertas lagi.

***

### Kode program
```
program Problem07_1;

var
    pilihan_tuan_vin : string;
    pilihan_pemain : string;

begin
    write('Tuan Vin mengeluarkan: ');
    readln(pilihan_tuan_vin);

    if pilihan_tuan_vin = 'gunting' then
        pilihan_pemain := 'batu'
    else
		pilihan_pemain := 'kertas';

	writeln('Anda mengeluarkan: ', pilihan_pemain);
end.
```

### Penjelasan
Inti permasalahan ini adalah bagaimana keluaran pemain pada permainan suit agar tidak pernah kalah. Permasalahan ini dapat diatasi dengan if-else sederhana. Jika input pengguna (masukan Tuan Vin) adalah 'gunting', maka pemain dapat menang dengan mengeluarkan 'batu'. Jika input pengguna adalah 'batu', maka pemain dapat menang dengan mengeluarkan 'kertas'. Seharusnya ketika input adalah kertas, pemain dapat menang dengan mengeluarkan 'gunting'. Namun karena program hanya dapat menawarkan output 'batu' dan 'gunting', maka output untuk input 'kertas' disamakan dengan output untuk input 'batu'.

---------------------------------
---------------------------------


## Bab 2 - Pengulangan
---------------------------------

### Problem 6


Seorang mahasiswa menabung di sebuah bank.Banknya tempat mahasiswa tersebut menabung menggunakan sistem bunga majemuk.Karena kesulitan menghitung, mahasiswa tersebut ingin mengetahui berapa jumlah uang per bulannya. Selain itu, ia juga berencana menabung secara konsisten setiap bulannya. Bantulah ia untuk menghitung tabungannya.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan uang tabungan :1000
Masukan persen bunga :10
Masukan lama menabung :4
Tabungan pada bulan ke-1 = 1100  
Tabungan pada bulan ke-2 = 2310  
Tabungan pada bulan ke-3 = 3641  
Tabungan pada bulan ke-4 = 5105  
```

Penjelasan : Uang Tuan Vin pada bulan pertama adalah 1000 + 100 = 1100. Pada bulan kedua, uang Tuan
Vin menjadi (1100 + 1000) + (1100 + 1000) * 10% = 2310. Pada bulan ketiga, (2310 + 1000) + (2310 + 1000) * 10% =  3641.

Dan pada bulan keempat, uang Tuan Vin menjadi (3641 + 1000) + (3641 + 1000) * 10% =  5105. Anda dapat mengabaikan seluruh digit dibelakang koma.

### Kode program
```
program Problem6_2;
{* Menghitung uang tabungan setiap bulan
 * Asumsi lama menabung >1 bulan
 *}

var
	uang_tabungan: integer;
	bunga: integer;
	lama_menabung: integer;
	uang_tabungan_sekarang: longint;
	bulan: integer;

begin
	write('Masukan uang tabungan :');
	readln(uang_tabungan);
	write('Masukan persen bunga :');
	readln(bunga);
	write('Masukan lama menabung :');
	readln(lama_menabung);

	uang_tabungan_sekarang := 0;
	for bulan := 1 to lama_menabung do
		begin
			uang_tabungan_sekarang := (uang_tabungan_sekarang + uang_tabungan) + (uang_tabungan_sekarang + uang_tabungan) div bunga;
			writeln('Tabungan pada bulan ke-', bulan,' = ', uang_tabungan_sekarang);
		end;
end.
```

#### Penjelasan
Permasalahan ini membutuhkan program untuk menampilkan uang tabungan mahasiswa setiap bulannya jika diketahui uang awal tabungan dan bunga setiap bulan. Permasalahan ini dapat diselesaikan dengan looping sederhana dari bulan pertama sampai bulan terakhir (`lama_menabung`). Variabel `uang_tabungan_sekarang` digunakan untuk menyimpan uang tabungan untuk bulan terakhir yang dicek. Fungsi yang digunakan untuk menghitung uang tabungan bulan ini adalah:
**uang tabungan bulan ini = A + B + (A+B)/C**
di mana:
A = uang tabungan bulan lalu
B = uang tabungan awal
C = bungan tabungan per bulan (dalam persens)

-----------------------
-----------------------
------

## Bab 3 - Fungsi dan Prosedur

### Problem 5

Seorang mahasiswa sedang mengantri untuk mendapatkan nomor peserta dari lomba nyanyi yang ia ikuti. Ia pun sangat deg-degan karena kakeknya pernah bermimpi bila Tuan Vin mendapatkan nomor peserta Lucky 7, tuan Vin sudah pasti memenangkan lomba ini. Apa itu Lucky 7? Lucky 7 adalah bilangan yang mengandung digit 7 dan juga habis dibagi 7. Sebagai contoh 77 merupakan Lucky 7 sementara 76 bukan karena tidak habis dibagi 7. Diberikan nomor peserta yang didapatkan oleh mahasiswa tersebut, tentukan apakah mahasiswa tersebut akan memenangkan lomba menyanyi ini.


**Format Input & Output (input di-*bold*)**
***
Masukan nomor peserta: 117

Mahasiswa tersebut akan kalah!
***
Masukan nomor peserta: 77

Mahasiswa tersebut akan menang!
***

### Kode program

```
program Problem5_3;

var
	no_peserta : integer;

function isModSeven(number: integer) : boolean;
	begin
		isModSeven := (number mod 7) = 0;
	end;

function isContainsSeven(number: integer) : boolean;
	var
		found: boolean;
	begin
		found := false;
		while (number <> 0) and not(found) do
			begin
				if (number mod 10 = 7) then
					found := true
				else
					number := number div 10;
			end;
		isContainsSeven := found;
	end;

begin
	write('Masukan nomor peserta: ');
	readln(no_peserta);

	if isModSeven(no_peserta) and isContainsSeven(no_peserta) then
		writeln('Mahasiswa tersebut akan menang!')
	else
		writeln('Mahasiswa tersebut akan kalah!');
end.
```

### Penjelasan
Permasalahan ini mengecek apakah input pengguna (nomor peserta) adalah kelipatan 7 dan mengandung angka 7. Permasalahan ini menggunakan dua fungsi yaitu `isModSeven` dan `isContainsSeven`.

Fungsi `isModSeven` mengecek apakah angka input adalah kelipatan 7. Fungsi ini hanya menggunakan operator `mod` bawaan dari bahasa Pascal.

Fungsi `isContainsSeven` mengecek apakah angka input mengandung angka 7. Angka dicek dengan membagi terus angka dengan 10 sampai angka menjadi nol atau ditemukan angka 7. Sebelum angka dibagi 10, angka tersebut di-mod 10 untuk mengecek apakah hasilnya adalah 7. Jika iya, maka fungsi akan menghasilkan TRUE karena angka 7 telah ditemukan. Fungsi akan mengembalikan FALSE jika loop dihentikan karena angka sudah menjadi 0.

------------------
-----------------
------

## Bab 4 - *Array*

### Problem 3

Pada suatu acara pernikahan diadakan undian berhadiah mobil. Setiap tamu yang masuk ke dalam ruangan memiliki nomor unik. Tamu-tamu yang memiliki nomor tertentu akan mendapatkan hadiah. Setiap tamu yang memiliki nomo yang merupakan bilangan fibonnaci akan mendapatkan hadiah. Buatlah program untuk mencari siapa tamu yang mendapatkan hadiah

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah tamu : **10**

Masukan nama tamu 1 : **Asep**

Masukan nama tamu 2 : **Budi**

Masukan nama tamu 3 : **Charlie**

Masukan nama tamu 4 : **Doddy**

Masukan nama tamu 5 : **Erma**

Masukan nama tamu 6 : **Frans**

Masukan nama tamu 7 : **Gelbert**

Masukan nama tamu 8 : **Hans**

Masukan nama tamu 9 : **Iwan**

Masukan nama tamu 10 : **Julia**

Tamu yang akan mendapat hadiah adalah :

Asep

Budi

Charlie

Erma

Hans
***


### Kode program

```
program Problem3_4;

var
	jumlah_tamu: integer;
	nama_tamu: array [1..100] of string;
	tamu_ke, nomor: integer;

function fibonnaci(n: integer) : integer;
	begin
		if n = 1 then
			fibonnaci := 1
		else if n = 2 then
			fibonnaci := 2
		else
			begin
				fibonnaci := fibonnaci(n-1) + fibonnaci(n-2);
			end;
	end;

begin
	write('Masukkan jumlah tamu : ');
	readln(jumlah_tamu);

	for tamu_ke := 1 to jumlah_tamu do
		begin
			write('Masukan nama tamu ', tamu_ke,' : ');
			readln(nama_tamu[tamu_ke]);
		end;

	writeln('Tamu yang akan mendapat hadiah adalah :');
	nomor := 1;
	while (fibonnaci(nomor) =< jumlah_tamu) do
		begin
			writeln(nama_tamu[fibonnaci(nomor)]);
			nomor := nomor + 1;
		end;
end.
```

### Penjelasan
Permasalahan ini membutuhkan program untuk memenentukan tamu yang akan memenangkan hadiah karena nomor uniknya merupakan sebuah bilangan Fibonnaci. Program akan menyimpan terdahulu nama-nama tamu sesuai nomor unik mereka. Lalu, program akan mencoba mencari nomor Fibonnaci pertama sampai nomor Fibbonaci melebihi jumlah tamu yang ada. Untuk setiap angka Fibbonaci, nama tamu pada urutan nomor Fibonnaci tersebut akan dicetak ke layar sebagai salah satu tamu yang memenangkan hadiah. Untuk membuat nomor Fibonnaci urutan ke-n, digunakan fungsi `fibonnaci(n)`.

-----------------
-----------------
## Bab 5 - Matriks dan File Eksternal

### Problem 2

Tuan Krab mempunyai kumpulan file foto jaman SMA-nya dulu. Selagi bernostalgia membuka satu-persatu foto tersebut, dia menyadari bahwa *skill* fotografi-nya dulu sangatlah buruk. Ternyata terdapat banyak foto yang posisinya tidak sesuai, sehingga dia perlu untuk melakukan rotasi pada foto tersebut. Dia pun meminta bantuan Anda dalam merotasi foto-foto tersebut.
Sebagai seorang *programmer* handal, Anda berinisiatif untuk membuat program yang membantu dalam melakukan rotasi.
**Format *Input* dan *Output***
*Input* foto berupa file `image.txt` yang merupakan file foto sederhana. Foto direpresentasikan dalam *square pixel matrix* `N x N`. Baris pertama file ini berisi bilangan bulat positif `N` yang merupakan ukuran matriks. `N` baris selanjutnya berisi `N` buah bilangan bulat non-negatif yang merepresentasikan warna *pixel* pada posisi tersebut. Kemudian pada saat *runtime*, program akan meminta masukan berupa bilangan bulat non-negatif `R` yang merupakan banyak **rotasi 90 derajat searah jarum jam** yang akan dilakukan pada file foto tersebut. *Output* berupa file `result.txt` dengan format yang sama dengan file *input*.
**Contoh**
(Elemen baris setelah tanda ":" pada *runtime* merupakan *input* dari  pengguna)
- image.txt
```
3
1 2 3
4 5 6
7 8 9
```
- *runtime program*
```
file loaded!
Masukkan banyak rotasi : 1
result exported!
```
- result.txt
```
3
7 4 1
8 5 2
9 6 3
```

### Kode program

```
program Problem2_5;

const
	IN_FNAME = 'image.txt';
	OUT_FNAME = 'result.txt';

type
	TWO_DIMENSION_ARRAY  = array[1..100, 1..100] of integer;

var
	N : integer;
	image : TWO_DIMENSION_ARRAY;
	jumlah_rotasi : integer;
	i : integer;

procedure importImage(nama_file : string; var matriks : TWO_DIMENSION_ARRAY; var n : integer);
var
	buffer : char;
	fin : file of char;
	baris, kolom : integer;
begin
	buffer := 'a';
	assign(fin, nama_file);
	reset(fin);
	read(fin, buffer);
	val(buffer, n);
	for baris := 1 to n do
		begin
			for kolom := 1 to n do
				begin
						read(fin, buffer);
						while (ord(buffer) = 32) or (ord(buffer) = 10) or (ord(buffer) = 13) do
								read(fin, buffer);
						val(buffer, matriks[baris][kolom]);
				end;
		end;
	close(fin);
end;

procedure exportImage(nama_file : string; matriks : TWO_DIMENSION_ARRAY; n : integer);
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
	writeln(fout, buffer);
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
	importImage(IN_FNAME, image, N);
	writeln('file loaded!');

	write('Masukkan banyak rotasi : ');
	readln(jumlah_rotasi);

	if jumlah_rotasi mod 4 <> 0 then
		for i := 1 to jumlah_rotasi do
			rotate90degree(image, N);

	exportImage(OUT_FNAME, image, N);
	writeln('result exported!');
end.
```

### Penjelasan
Permasalahan ini membutuhkan program yang dapat membaca gambar (dalam representasi matriks angka non-negatif), merotasinya berapa kali yang diminta pengguna, lalu menuliskan hasil gambar ke sebuah text file. Untuk meng-import gambar, program menggunakan fungsi `importImage`. Untuk meng-export gambar, program menggunakan fungsi `exportImage`.

Program menggunakan fungsi `rotate90degree` untuk merotasi matriks. Pemanggilan fungsi `rotate90degree` dikurangi dengan ditentukan hasil mod `jumlah_rotasi` dengan 4. Jika hasilnya 0, maka gambar akan tetap sama. Selebihnya, fungsi `rotate90degree` akan dipanggil berdasarkan hasil mod tersebut. Fungsi `rotate90degree` sendiri menggunakan nested looping untuk menghasilkan matriks yang baru. Hasil sementara disimpan pada matriks `m_temp`. Setiap elemen pada [i,j] di matriks asli akan disimpan pada [j, n-i+1] di matriks `m_temp` (n adalah ukuran matriks gambar).

-----------------------------------
