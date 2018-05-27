# Seleksi 1 Asisten Laboratorium Programming 2018
Oleh : Dandy Arif Rahman(13516086)

## Bab 1 Percabangan - Problem 9
### Deskripsi Soal
Tuan Vin ingin mengetahui suhu udara sekarang. Terdapat termometer pada dinding di dekatnya. Namun terkadang, satuan suhu yang tertulis tidak sesuai dengan yang ingin diketahuinya. Dari 3 jenis suhu R, C dan F, berikut adalah perbandingannya:

C : R : (F-32) = 5 : 4 : 9

Tuan Vin meminta bantuan Anda untuk dapat membaca suhu dengan lebih mudah

**Format Input & Output (input di-*bold*)**
```
Masukan satuan suhu termometer: **C**

Masukan besar suhu: **40**

Masukan satuan yang ingin diketahui: **R**

Besar suhu dalam R: 32
```

### Source Code Solusi
```Python
#Nama	: Dandy Arif Rahman
#NIM	: 13516086
#Soal	: BAB 1 - Problem 9

deg1 = input("Masukan suhu satuan termometer: ")
t1 = float(input("Masukan besar suhu: "))
deg2 = input("Masukan satuan yang ingin diketahui: ")

if (deg1 == "C"):
	if (deg2 == "C"):
		t2 = t1
	elif (deg2 == "R"):
		t2 = 4 / 5 * t1
	elif (deg2 == "F"):
		t2 = (9 / 5 * t1) + 32
	else:
		t2 = -1
elif (deg1 == "R"):
	if (deg2 == "C"):
		t2 = 5 / 4 * t1
	elif (deg2 == "R"):
		t2 = t1
	elif (deg2 == "F"):
		t2 = (9 / 4 * t1) + 32
	else:
		t2 = -1
elif (deg1 == "F"):
	if (deg2 == "C"):
		t2 = 5 / 9 * (t1 - 32)
	elif (deg2 == "R"):
		t2 = 4 / 9 * (t1 - 32)
	elif (deg2 == "F"):
		t2 = t1
	else:
		t2 = -1
else:
	t2 = -1

if t2 == -1:
	print("ERROR")
else:	
	print("Besar suhu dalam %s: %.2f" % (deg2, t2))
```
### Pembahasan Solusi
Pertama, satuan suhu saat ini dimasukkan ke variabel **deg1**, nilai suhu saat ini dimasukkan ke variabel **t1**, dan satuan suhu yang diinginkan dimasukkan ke variabel **deg2**. Kemudian, program mengecek apakah **deg1** bernilai 'C' atau 'R' atau 'F'. Jika deg1 bernilai selain dari 3 karakter diatas maka nilai **t2** di-assign dengan nilai -9999. Setelah itu, dilakukan pengecekan nilai variabel **deg2** apakah bernilai 'C' atau 'R' atau 'F'. Jika **deg** bernilai selain dari 3 karakter diatas maka nilai **t2** di-assign dengan nilai -9999. Setelah diketahui nilai **deg1** dan **deg2**, dilakukan perhitungan konversi rumus dari **t1** menjadi **t2**. Di tahap terakhir, dilakukan pengecekan, jika nilai **t2** -9999 maka dikeluarkan pesan error, jika selain dari itu dikeluarkan nilai **t2**.

## Bab 2 Pengulangan - Problem 8
### Deskripsi Soal
Agar dapat lulus dari kuliah, seorang mahasiswa dituntut untuk dapat menyebutkan bilangan prima diantara **A** dan **B**. Bantulah mahasiswa tersebut untuk menyebutkan bilangan prima tersebut.

**Catatan** : Buatlah suatu fungsi yang mengecek apakah suatu bilangan merupakan bilangan prima atau bukan

**Format Input & Output**
*(Elemen baris setelah tanda ":" pada runtime merupakan input dari pengguna)*
```
Masukkan nilai A :1 
Masukkan nilai B :10
Bilangan prima diantara 1 sampai 10 adalah
2  
3  
5  
7
```
```
Masukkan nilai A :10
Masukkan nilai B :20
Bilangan prima diantara 10 sampai 20 adalah 
11  
13  
17  
19
```
---------------------------------

### Source Code Solusi
```Python
#Nama	: Dandy Arif Rahman
#NIM	: 13516086
#Soal	: BAB 2 - Problem 8
from math import sqrt, floor

ListPrime = []
A = int(input("Masukkan nilai A :"))
B = int(input("Masukkan nilai B :"))
print("Bilangan prima antara %d sampai %d adalah" %  (A, B))

for num in range(2, B + 1):
	temp = floor(sqrt(num))
	prime = True
	for i in range(2, temp+1):	
		if num % i == 0:
			prime = False
			break
	if prime : ListPrime.append(num)
for prime in ListPrime:
	print(prime)
```

### Pembahasan Solusi
Pertama, input dari user dimasukan ke variabel **A** sebagai batas bawah dan input selanjutnya dimasukan ke variabel **B** sebagai batas atas. Kemudian dilakukan pengecekan bilangan prima dengan cara, dilakukan looping dari angka 2 hingga **B** misal variabel **num**, lalu ­assign sebuah variabel **temp** dengan fungsi bawah dari akar **num**, kemudian dilakukan pengecekan dari angka 2 hingga **temp** misal **i**, jika **num** habis dibagi dengan dengan **i** maka num adalah bilangan prima, dan ditambahkan ke list bilangan prima pada variabel **ListPrime**.

## Bab 3 Fungsi dan Prosedur - Problem 9
### Deskripsi Soal
Segitiga Pascal adalah segitiga yang dibuat dimulai dari angka 1 dan tiap angka di baris kedua dan selanjutnya berasal dari jumlah dua angka di atasnya. Berikut contoh 5 baris pertama Segitiga Pascal:

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1

Segitiga Pascal juga dapat dibentuk dari kombinatorik, dengan bilangan pada baris ke-i dan kolom ke-j bernilai C(i-1,j-1). Berikut adalah contoh penerapan pada 5 baris Segitiga Pascal.

C(0,0)

C(1,0) C(1,1)

C(2,0) C(2,1) C(2,2)

C(3,0) C(3,1) C(3,2) C(3,3)

C(4,0) C(4,1) C(4,3) C(4,4) C(4,5)

Buatlah sebuah program yang membuat Segitiga Pascal! (Buat fungsi Kombinasi(n, r) untuk memudahkan penghitungan)


**Format Input & Output (input di-*bold*)**
***
Masukan jumlah baris: **5**

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1
***

### Source Code Solusi
```Python
#Nama	: Dandy Arif Rahman
#NIM	: 13516086
#Soal	: BAB 3 - Problem 7

def kombinasi(n, r):
	if n == r  : result = 1
	elif r == 0 : result = 1
	else:
		if (n - r) > r:
			pembilang = 1
			for i in range(n - r + 1, n + 1):
				pembilang *= i
			penyebut = 1
			for i in range(1, r + 1):
				penyebut *= i 
		else:
			pembilang = 1
			for i in range(r + 1, n + 1):
				pembilang *= i
			penyebut = 1
			for i in range(1, n - r + 1):
				penyebut *= i 
		result = pembilang / penyebut
	return int(result)

def printSegitiga(n):
	for i in range(1, n + 1):
		for j in range(1, i + 1):
			print(kombinasi(i - 1, j - 1), end='')
		print()

n = int(input("Masukan jumlah baris: "))
printSegitiga(n)
```

### Pembahasan Solusi
Pertama, input jumlah baris dimasukan ke variabel **n**. Lalu dengan fungsi printSegitiga(n) gambar segitiga ditampilkan.

Program terdiri dari 2 fungsi yaitu **kombinasi(n,r)** dan **printSegitiga(n)**. Fungsi **kombinasi(n,r)** melakukan perhitungan nCr dengan cara, pertama, pengecekan nilai antara **n-r** dan **r** mana yang lebih besar, ini ditujukan untuk mempercepat perhitungan. Jika **n-r** lebih besar, dilakukan perhitungan ((n-r+1) x (n-r+2) x ... x (n)) / r!. Sedangkan jika **r** lebih besar dilakukan perhitungan ((r+1) x (r+2) x ... x (n)) / (n-r)!.

Fungsi **printSegitiga(n)** menghasilkan gambar segitiga pascal dengan ukuran **n**. Pertama dilakukan looping sebanyak **n** dengan variabel **i** dan looping didalamnya sebanyak **i** dengan variabel **j**. Kemudian dilakukan pencetakan nilai **kombinasi(i-1, j-1)**.

## Bab 4 *Array* - Problem 8
### Deskripsi Soal

Terdapat sebuah array. Tentukan tiga angka a, b, dan c pada array tersebut yang memenuhi nilai a+b^2 = c dengan a != b != c

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah elemen array : **5**

Masukkan isi array : **0 1 2 4 5 7**

nilai a b c yang memenuhi adalah :

[0,2,4]

[1,2,5]

[4,1,5]

***
***
Masukkan jumlah elemen array : **3**

Masukkan isi array : **0 1 2**

tidak ada nilai a b c yang memenuhi
***

### Source Code Solusi
```Pascal
program bab4_problem8;
function evaluate(a,b,c:integer): boolean;
begin
    evaluate := a + b*b = c;
end;

var
    arr: array[1..100000] of integer;
    res: array[1..100000, 1..3] of integer;
    a,b,c,n,i,j,k,idxRes:integer;
    found: boolean;

begin
    write('Masukkan jumlah elemen array : ');
    readln(n);
    write('Masukkan isi array : ');
    for i := 1 to n do
    begin
        read(arr[i]);
    end;

    found := false;
    idxRes := 1;
    for i := 1 to n-2 do
    begin
        for j := i+1 to n-1 do
        begin
            for k := j+1 to n do
            begin
                a := arr[i];
                b := arr[j];
                c := arr[k];
                if evaluate(a,b,c) then
                begin
                    res[idxRes,1] := a;
                    res[idxRes,2] := b;
                    res[idxRes,3] := c;
                    idxRes := idxRes + 1;
                    found := true;
                end
                else if evaluate(a,c,b) then
                begin
                    res[idxRes,1] := a;
                    res[idxRes,2] := c;
                    res[idxRes,3] := b;
                    idxRes := idxRes + 1;
                    found := true;
                end
                else if evaluate(c,a,b) then
                begin
                    res[idxRes,1] := c;
                    res[idxRes,2] := a;
                    res[idxRes,3] := b;
                    idxRes := idxRes + 1;
                    found := true;
                end
                else if evaluate(c,b,a) then
                begin
                    res[idxRes,1] := c;
                    res[idxRes,2] := b;
                    res[idxRes,3] := a;
                    idxRes := idxRes + 1;
                    found := true;
                end
                else if evaluate(b,a,c) then
                begin
                    res[idxRes,1] := b;
                    res[idxRes,2] := a;
                    res[idxRes,3] := c;
                    idxRes := idxRes + 1;
                    found := true;
                end
                else if evaluate(b,c,a) then
                begin
                    res[idxRes,1] := b;
                    res[idxRes,2] := c;
                    res[idxRes,3] := a;
                    idxRes := idxRes + 1;
                    found := true;
                end;
            end;
        end;
    end;
    if not found then
        writeln('tidak ada nilai a b c yang memenuhi')
    else begin
        writeln('nilai a b c yang memenuhi adalah :');
        for i := 1 to idxRes-1 do
        begin
            writeln('[', res[i, 1], ',', res[i, 2], ',', res[i, 3], ']');
        end;
    end;
end.
```

### Pembahasan Solusi
Pertama-tama, buatlah fungsi untuk mengevaluasi apakah suatu nilai a,b,c dapat memenuhi batasan. Kemudian pada program utama, permutasi 3 angka dari semua elemen array yang diinput oleh user. Terakhir, cek semua permutasi yang ada apakah bernilai true ketika di evaluasi, jika iya masukan ke himpunan solusi.

## Bab 5 Matriks dan File Eksternal - Problem 7
### Deskripsi Soal

Spons akan membuat selai dari saus *jellyfish*. Menurut resep rahasia yang dia terima dari Tuan Krab, selai dengan rasa terbaik dihasilkan dari perpaduan dua ekor *jellyfish* dari jenis Spongian dan Patrician, dengan bobot total kedua ekor *jellyfish* tersebut adalah `X`. Spons pun pergi ke pasar untuk membeli *jellyfish* yang diperlukan. Di pasar, pedagang telah menyiapkan daftar bobot *jellyfish* yang tersedia dari masing-masing jenis (elemen masing-masing daftar *unique*). Pedagang ini merupakan orang yang sangat sistematis, sehingga daftar tersebut disimpan dalam bentuk matriks persegi yang masing-masing elemennya terurut membesar. Spons perlu untuk mengetahui berapa banyak pasangan bobot *jellyfish* jenis Spongian dan Patrician yang dapat dia gunakan untuk menghasilkan selai terbaik. Tugas Anda adalah untuk membantu Spons menghitung banyaknya pasangan bobot yang dapat ia gunakan tersebut.

**Definisi**
Misalkan matriks `A` merupakan matriks dengan elemen terurut membesar yang berukuran `N`x`N`. Hal ini berarti untuk setiap bilangan bulat non-negatif `i`, `j` yang bernilai kurang dari `N`, maka berlaku `A[i][j]` < `A[i][j+1]` dan `A[i][N-1]` < `A[i+1][0]`.

**Format *Input* dan *Output***
*Input* matriks bobot ukuran diambil dari file eksternal `spongian.txt` dan `patrician.txt`. Pada file-file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. Perlu diperhatikan bahwa nilai `N` ini sama di kedua file. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Pada saat *runtime*, pengguna akan memasukkan bilangan bulat positif `X` yang merupakan target jumlah bobot yang dicari oleh Spons.
 *Output* berupa banyaknya pasangan bobot dari kedua jenis *jellyfish* yang berjumlah `X`.

**Contoh**

- spongian.txt

```
3
1 5 6
8 10 11
15 16 18
```

- patrician.txt

```
3
2 4 7
9 10 12
13 16 20
```

- *runtime program*

```
matriks loaded!
Masukkan target bobot: 21
Banyak pasangan adalah 4
```

Keterangan: pasangan yang memenuhi adalah (1, 20), (5, 16), (8, 13) dan (11, 10).

### Source Code Solusi
```Pascal
program bab5_problem7;
uses sysutils;
var
    fspongian, fpatrician: TextFile;
    nSpon, nPat, i, j, k, l, count, bobot: integer;
    arrSpon, arrPat: array [1..1000, 1..1000] of integer;

begin
    // read file spongian.txt
    assign(fspongian, 'spongian.txt');
    reset(fspongian);
    read(fspongian, nSpon);
    for i := 1 to nSpon do
    begin
        for j := 1 to nSpon do
        begin
            read(fspongian, arrSpon[i,j]);
        end;
    end;
    close(fspongian);

    // read patrician.txt
    assign(fpatrician, 'patrician.txt');
    reset(fpatrician);
    read(fpatrician, nPat);
    for i := 1 to nPat do
    begin
        for j := 1 to nPat do
        begin
            read(fpatrician, arrPat[i,j]);
        end;
    end;

    writeln('matriks loaded!');

    write('Masukkan target bobot: ');
    readln(bobot);

    count := 0;
    for i := 1 to nSpon do
    begin
        for j := 1 to nSpon do
        begin
            for k := 1 to nPat do
            begin
                for l := 1 to nPat do
                begin
                    if (arrSpon[i,j] + arrPat[k,l]) = bobot then
                        count := count + 1;
                end;
            end;
        end;
    end;
    writeln('Banyak pasangan adalah ', count);

end.
```

### Pembahasan Solusi
Pertama-tama, baca angka pertama pada file, kemudian loop bersarang dengan masing-masing looping sebanyak angka pertama tersebut, dan baca masing-masing angka selanjutnya yang kemudian disimpan dalam sebuah matriks. Setelah proses pembacaan file selesai, bandingkanlah setiap kemungkinan antara elemen matriks patrician dan matriks spongian, kemudian jika ditemukan jumlah antar 2 elemen tersebut yang sama dengan target bobot, maka tambahkan counter. Diakhir, print counter ke terminal.

