# Seleksi 1 Asisten LabPro 2018
***

## Author
### NIM : 13516098
### Nama : Rifqi Rifaldi Utomo
***

## Bab 1 - Percabangan - Problem 6
***

### Deskripsi Soal

Tuan Vin pergi meminjam buku ke perpustakaan. Perpustakaan tersebut meminjamkan buku dengan sewa pokok P per hari dan batas waktu sewa T. Jika setelah T hari tidak dikembalikan, harga sewa akan bertambah D per harinya. Saat Tuan Vin hendak mengembalikan buku, Tuan Vin bingung menghitung harga sewa bukunya. Agar tidak ditipu mengurus perusahaan, Tuan Vin memeinta bantuan Anda untuk menghitung uang sewa yang tepat.


**Format Input & Output (input di-*bold*)**
***
Masukan harga sewa pokok: **1000**

Masukan batas waktu sewa: **7**

Masukan tambahan harga sewa: **500**

Masukan lama Tuan Vin meminjam: **3**

Harga sewa yang harus dibayar Tuan Vin adalah: 3000
***
Masukan harga sewa pokok: **3000**

Masukan batas waktu sewa: **7**

Masukan tambahan harga sewa: **500**

Masukan lama Tuan Vin meminjam: **10**

Harga sewa yang harus dibayar Tuan Vin adalah: 31500
***


Penjelasan contoh 1:
Tuan Vin tidak melebihi batas waktu sewa sehingga tidak perlu membayar lebih


Penjelasan contoh 2:
Pada 7 hari pertama, harga sewa hanya 3000. Setelah itu, harga sewa naik menjadi 3500, sehingga total sewanya adalah 7*3000 + (10-7)*3500 = 31500
***
### Source Code
```pascal
program Bab1Problem06;
{ Menghitung uang sewa berdasarkan harga sewa pokok, batas waktu sewa, tambahan harga sewa, dan lama peminjaman }
{ ASUMSI: semua masukan merupakan bilangan bulat positif }

{ KAMUS }
var
  hargaSewaPokok, batasWaktuSewa, tambahanHargaSewa, lamaMeminjam, hargaSewaTotal : longint;

{ ALGORITMA }
begin
  {Inisialisasi-aksi}
  write('Masukan harga sewa pokok: ');
  readln(hargaSewaPokok);
  write('Masukan batas waktu sewa: ');
  readln(batasWaktuSewa);
  write('Masukan tambahan harga sewa: ');
  readln(tambahanHargaSewa);
  write('Masukan lama Tuan Vin meminjam: ');
  readln(lamaMeminjam);
  
  if (lamaMeminjam <= batasWaktuSewa) then
  begin
    hargaSewaTotal := lamaMeminjam * hargaSewaPokok;
  end
  else
  begin
    hargaSewaTotal := batasWaktuSewa * hargaSewaPokok + (lamaMeminjam - batasWaktuSewa) * (hargaSewaPokok + tambahanHargaSewa);
  end;
  writeln('Harga sewa yang harus dibayar Tuan Vin adalah: ', hargaSewaTotal);
end.
```
***
### Penjelasan
TBD

***


## Bab 2 - Pengulangan - Problem 5
***
### Deskripsi Soal


Terdapat sebuah permainan, dimana terdapat N buah kelompok, dan masing - masing kelompok memiliki **M** orang anggota kelompok. Banyaknya anggota kelompok bisa berbeda - beda antar kelompok. Sebuah kelompok dianggap menang jika kelompok tersebut mengetahui kelompok berapa yang memiliki anggota paling sedikit. Bantulah kelompok tersebut untuk memenangkan permainan.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan jumlah kelompok :3
Masukan jumlah anggota kelompok 1 :10 
Masukan jumlah anggota kelompok 2 :12 
Masukan jumlah anggota kelompok 3 :9 
Kelompok dengan anggota tersedikit adalah kelompok 3
```
***
### Source Code
```pascal
program Bab2Problem05;
{ Menghasilkan kelompok dengan jumlah anggota terkecil dari kelompok-kelompok yang ada }
{ ASUMSI: semua input bertipe bilangan bulat positif, hanya ada satu kelompok dengan anggota paling sedikit }

{ KAMUS }
var
  n, m, i, minAnggota, minKelompok: longint;

{ ALGORITMA }
begin
  write('Masukan jumlah kelompok :');
  readln(n);
  for i := 1 to n do
  begin
    write('Masukan jumlah anggota kelompok ', i, ' :');
    readln(m);
    if (i = 1) then
    begin
      minAnggota := M;
      minKelompok := 1;
    end
    else
    begin
      if (m < minAnggota) then
      begin
        minAnggota := M;
        minKelompok := i;
      end;
    end;
  end;
  writeln('Kelompok dengan anggota tersedikit adalah kelompok ', minKelompok);
end.
```
***
### Penjelasan

TBD
***

## Bab 3 - Fungsi dan Prosedur - Problem 4
***
### Deskripsi Soal

Bilangan prima adalah bilangan yang hanya habis dibagi oleh 1 dan bilangan itu sendiri. Buatlah program yang menentukan semau bilangan prima diantara dua buah bilangan A dan B (0  ≤ A, B ≤ 100000) inklusif.
Catatan : Buatlah fungsi yang memeriksa apakah sebuah bilangan adalah bilangan prima atau bukan.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai A : **0**

Masukkan nilai B : **10**

Bilangan prima diantara 0 sampai 10 adalah:

2

3

5

7
***
Masukkan nilai A : **25**

Masukkan nilai B : **10**

Bilangan prima diantara 10 sampai 25 adalah:

11

13

17

19

23
***

### Source Code
```pascal
program Bab3Problem04;
{ Menghasilkan bilangan prima diantara dua bilangan bulat A dan B }
{ ASUMSI: Masukan selalu benar }

{ KAMUS }
var
  a, b, i, min, max: longint;


{DEKLARASI DAN REALISASI FUNGSI}
function isPrima (n: longint) : boolean;
{ Menghasilkan true apabila N adalah bilangan prima }

{ KAMUS LOKAL }
var
  i, sqrtn: longint;
  notPrima: boolean;
{ ALGORITMA }
begin
  if (n < 2) then
  begin
    isPrima := false;
  end
  else { n >= 2}
  begin
    if (n = 2) then
    begin
      isPrima := true;
    end
    else { n > 2}
    begin
      notPrima := false;
      for i := 2 to round(sqrt(n)) do
      begin
        if (n mod i = 0) then
        begin
          notPrima := true;
        end;
      end;
      isPrima := not notPrima;
    end;
  end;
end;


{ ALGORITMA }
begin
  write('Masukkan nilai A : ');
  readln(a);
  write('Masukkan nilai B : ');
  readln(b);
  if (a < b) then
  begin
    min := a;
    max := b;
  end
  else {a >= b}
  begin
    min := b;
    max := a;
  end;
  writeln('Bilangan prima diantara ', min, ' sampai ', max, ' adalah:');
  for i := min to max do
  begin
    if isPrima(i) then
    begin
      writeln(i);
    end;
  end;
end.
```
***
### Penjelasan

TBD
***

## Bab 4 - *Array* - Problem 2
-----------------
### Deskripsi Soal

Iwan adalah produsen barang unik. Untuk mendapatkan ide, Iwan memiliki kotak berisikan nama warna dan kotak berisi nama barang. Iwan memasangkan nama warna dan nama barang untuk mendapatkan ide barang unik yang akan ia produksi selanjutnya. Karena barang yang dimiliki Iwan semakin banyak, ia membutuhkan bantuan. Buatlah program untuk memasangkan setiap warna pada kotak dengan setiap nama barang pada kotak lainnya

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah warna : **3**

Masukkan nama warna :

**Biru**

**Hijau**

**Kuning**

Masukkan jumlah barang : **5**

Masukkan nama barang :

**Gunting**

**Permen**

**Buku**

**Baju**

**Tempe**

Ide barang selanjutnya :

Gunting Biru

Gunting Hijau

Gunting Kuning

Permen Biru

Permen Hijau

Permen Kuning

Buku Biru

Buku Hijau

Buku Kuning

Baju Biru

Baju Hijau

Baju Kuning

Tempe Biru

Tempe Hijau

Tempe Kuning

Terdapat 15 ide yang mungkin
***

### Source Code
```pascal
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
  writeln('Terdapat ', i*j, ' ide yang mungkin');
end.
```
***
### Penjelasan

TBD

***

## Bab 5 - Matriks dan File Eksternal - Problem 1
### Deskripsi Soal
Pearl diajarkan mengenai suatu jenis matriks baru di sekolah, yaitu *bysimmetric matrix*. Matriks ini merupakan suatu matriks persegi berukuran `N`x`N` yang elemen-elemennya simetri terhadap kedua diagonalnya.
Tugas Anda adalah untuk membantu Pearl menentukan apakah suatu matriks tergolong jenis *bysimmetrix*.
**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut.
Jika matriks merupakan *bysimmetric matrix*, maka dituliskan **Yes** pada layar. 
Sebaliknya, jika bukan *bysimmetric matrix*, maka dituliskan **No**.
**Contoh**
- matriks.txt
```
3
1 2 3
2 5 2
3 2 1
```
- *runtime program*
```
matriks loaded!
Yes
```
***
### Source Code
```pascal
program Bab5Problem01;
{ Menghasilkan benar apabila matriks pada matriks.txt adalah matriks bisimetris }
{ ASUMSI: selalu terdapat file matriks.txt dan file tersebut selalu memiliki format masukan yang benar }

{ KAMUS }
var
  fin: text;
  n, i, j: longint;
  matriks: array [1..1000] of array [1..1000] of longint;
  isBysimmetrix: boolean;

{ ALGORITMA }
begin
  assign(fin, 'matriks.txt');
  reset(fin);
  read(fin, n);
  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      read(fin, matriks[i][j]);
    end;
  end;
  writeln('matriks loaded!');
  close(fin);
  
  isBysimmetrix := true;

  for i := 1 to n do
  begin
    for j := 1 to n do
    begin
      if (matriks[i][j] <> matriks[j][i]) or (matriks[i][j] <> matriks[n-j+1][n-i+1]) then
      begin
        isBysimmetrix := false;
      end;
    end;
  end;
  
  if isBysimmetrix then
  begin
    writeln('Yes');
  end
  else {not Bysimmetrix}
  begin
    writeln('No');
  end;

end.
```
***
### Penjelasan
TBD