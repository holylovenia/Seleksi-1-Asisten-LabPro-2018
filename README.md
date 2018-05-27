# Seleksi 1 Asisten LabPro 2018


NIM : 13516093  
Name : Muhammad Farhan


## Daftar Isi
- [Bab 1 - Problem 2](##-1.-Decision-Making---Problem-2)
- [Bab 2 - Problem 1](##-2.-Loop---Problem-1-1)
- [Bab 3 - Problem 12](##-3.-Function-and-Procedure---Problem-12-2)
- [Bab 4 - Problem 11](##-4.-Array---Problem-11-3)
- [Bab 5 - Problem 10](##-5.-Matrix-and-External-File---Problem-10-4)


## 1. Decision Making - Problem 2
Tuan Vin ingin meminta bantuan Anda. Tuan Vin diminta untuk mengurutkan nilai ujian antara 3 orang. Ini adalah hal yang mudah, tetapi Tuan Vin perlu memeriksa ratusan orang. Karena malas, Tuan Vin meminta bantuan Anda, yang jago membuat program. Nilai ketiga orang dijamin berbeda.

___
Masukan Nama 1 : **Kevin**
Masukan Nilai 1 : **70**

Masukan Nama 2 : **Richard**
Masukan Nilai 2 : **100**

Masukan Nama 3 : **Albert**
Masukan Nilai 3 : **80**

Peringkat pertama adalah Richard
Peringkat kedua adalah Albert
Peringkat ketiga adalah Kevin
___

### Solution
```pascal
program Rank;
uses crt;

type
    name = string;
    score = integer;

var
    stName, ndName, rdName, tempName: name;
    stScore, ndScore, tempScore: score;

begin
    write('Masukan Nama 1 : ');
    readln(stName);
    write('Masukan Nilai 1 : ');
    readln(stScore);

    write('Masukan Nama 2 : ');
    readln(tempName);
    write('Masukan Nilai 2 : ');
    readln(tempScore);

    if (stScore > tempScore) then
    begin
        ndName := tempName;
        ndScore := tempScore;
    end
    else
    begin
        ndName := stName;
        ndScore := stScore;
        stName := tempName;
        stScore := tempScore;
    end;

    write('Masukan Nama 3 : ');
    readln(tempName);
    write('Masukan Nilai 3 : ');
    readln(tempScore);

    if (tempScore > stScore) then
    begin
        rdName := ndName;
        ndName := stName;
        stName := tempName;
    end
    else if (tempScore < ndScore) then
        rdName := tempName
    else
    begin
        rdName := ndName;
        ndName := tempName;
    end;

    writeln('Peringkat pertama adalah ', stName);
    writeln('Peringkat kedua adalah ', ndName);
    writeln('Peringkat ketiga adalah ', rdName);
end.
```

+ Pada persoalan ini, dibentuk dua tipe baru - *name* dan *score* - yang dapat memperjelas tipe data dari tiap variabel. Saat meminta input kedua dan ketiga digunakan variabel *tempName* dan *tempScore* yang berfungsi untuk menampung instans sementara yang kemudian digunakan untuk dibandingkan dengan input lainnya.
+ Pada input user pertama, input dimasukkan pada *stName* dan *stScore* yang menyatakan peringkat pertama.
+ Pada input user selanjutnya, dilakukan validasi yang berfungsi untuk menentukan peringkat diantara ketiganya.
+ Validasi tidak dilakukan pada akhir program, sebab dapat membentuk sebuah validasi yang lebih kompleks.
\* Tidak terdapat variabel *rdScore*, sebab nilai hanya perlu dibandingkan, sudah disimpan pada variabel *tempScore*, dan tidak diinstruksikan untuk menyimpan data.


## 2. Loop - Problem 1
Karena bosan belajar, sekumpulan anak TPB memutuskan untuk bermain. Pada permainan ini, anak TPB tersebut secara bergantian menyebutkan bilangan natural secara berurutan. Namun, mereka tidak boleh menyebutkan angka kelipatan 3 atau 7. Misal jika mereka bermain sampai angka 25, bilangan yang akan mereka ucapkan adalah sebagai berikut: **1, 2, 4, 5, 8, 10, 11, 13, 16, 17, 19, 20, 21, 22, 23, 25**.

Dapat dilihat bahwa seluruh bilangan kelipatan 3 atau 7 tidak disebutkan, kecuali kelipatan 3 dan 7 (yaitu 21). Karena tidak ingin kalah terus menerus, seorang mahasiswa membuat program untuk membantunya bermain. Program tersebut menerima input berupa suatu bilangan bulat N dan mencetak seluruh angka yang harus disebutkan sampai bilangan N.

___
Masukan N : **25**
1
2
4
5
8
10
11
13
16
17
19
20
21
22
23
25
___

### Solution
```pascal
program ThreeSevenDivisor;
uses crt;

var
    i, N: integer;

begin
    write('Masukan N : ');
    readln(N);

    for i := 1 to N do
        if (((i mod 3 = 0) or (i mod 7 <> 0)) and ((i mod 3 <> 0) or (i mod 7 = 0))) then
            writeln(i);
end.
```

+ Solusi persoalan ini dapat menggunakan *for-loop*, angka diiterasi dari 1 hingga *N*.
+ Dalam iterasi, dilakukan validasi dengan persamaan `(i mod 3 = 0) <=> (i mod 7 = 0)` yang kemudian diubah menjadi `(((i mod 3 = 0) or (i mod 7 <> 0)) and ((i mod 3 <> 0) or (i mod 7 = 0)))`


## 3. Function and Procedure - Problem 12
Saat sedang kuliah kalkulus, seorang mahasiswa mendapatkan dua buah fungsi berikut.

`f(x) = 2x^2 - 7x − 19`

`g(x) = 3x + 20`

Ia baru saja belajar mengenai fungsi komposisi sehingga ia ingin mencoba untuk menerapkannya pada kedua fungsi tersebut. Bantulah ia untuk menghitung nilai f(g(f(x))) diberikan nilai x!

___
Masukan nilai x : **4**

f(g(f(x))) = 1406
___

### Solution
```pascal
program FxGx;
uses crt;

var
    x: integer;

function f(x: integer): integer;
begin
    f := 2*x*x - 7*x - 19;
end;

function g(x: integer): integer;
begin
    g := 3*x + 20;
end;

begin
    write('Masukan nilai x: ');
    readln(x);
    writeln('f(g(f(x))) = ', f(g(f(x))):2);
end.
```

+ Persoalan ini memanfaatkan dua buah fungsi, yaitu *f(x)* dan *g(x)* seperti yang dituliskan diatas.
+ Pada saat menunjukkan hasil pada user, fungsi dipanggil dengan *nested function*.


## 4. Array - Problem 11
Mei ditugaskan untuk mencatat absensi seluruh mahasiswa yang hadir. Setiap kali mahasiswa hadir, mahasiswa harus mengumpulkan kertas kehadiran berisi NIM kepada Karin. Buatlah program untuk membantu Karin mencatat berapa kali suatu mahasiswa hadir *NIM mahasiswa tidak lebih dari 3 digit*.

___
Masukkan jumlah kertas kehadiran : **10**
Masukkan NIM mahasiswa : 89
Masukkan NIM mahasiswa : 230
Masukkan NIM mahasiswa : 89
Masukkan NIM mahasiswa : 89
Masukkan NIM mahasiswa : 100
Masukkan NIM mahasiswa : 100
Masukkan NIM mahasiswa : 74
Masukkan NIM mahasiswa : 74
Masukkan NIM mahasiswa : 89

Rekap kehadiran mahasiswa :
74 - 2 kali
89 - 4 kali
100 - 2 kali
230 - 1 kali
___

### Solution
```pascal
program AttendanceList;
uses crt;

const
    MIN_NIM = 1;
    MAX_NIM = 999;

var
    i, N : integer;
    attendance : array of integer;
    counter : array [MIN_NIM .. MAX_NIM] of integer;

begin
    write('Masukkan jumlah kertas kehadiran : ');
    readln(N);

    setlength(attendance, N - 1;

    for i := 1 to (N - 1) do
    begin
        write('Masukkan NIM mahasiswa : ');
        readln(attendance[i]);
        inc(counter[attendance[i]]);
    end;

    writeln();
    writeln('Rekap kehadiran mahasiswa : ');
    for i := MIN_NIM to MAX_NIM do
    begin
        if (counter[i] <> 0) then
            writeln(i, ' - ', counter[i], ' kali');
    end;
end.
```

+ Membuat konstanta yang menyatakan NIM minimum dan NIM maksimum. Membuat array *attendance* dinamik yang merupakan data kehadiran mahasiswa. Membuat variabel berupa array *counter* untuk menampung jumlah kehadiran dari NIM minimum hingga NIM maksimum.
+ Ketika *user* memasukkan NIM, array *counter* pada indeks ke-NIM otomatis ditambahkan dengan 1.
+ Iterasi dari NIM minimum hingga NIM maksimum dan mencetak NIM beserta jumlah kehadirannya yang bukan 0.
\* Program ketika dieksekusi akan menimbulkan *warning*, hal tersebut disebabkan tidak diinisialisasi array *counter*. Hal tersebut tidak diperlukan, sebab nilai awal tiap elemen array integer adalah 0.
\** Algoritma ini memerlukan array tambahan sebanyak MAX_NIM, tetapi kompleksitasnya adalah O(N + MAX_NIM) atau O(n).


# 5. Matrix and External File - Problem 10
Tuan Krab ingin membuka cabang baru dari Krasti Krab. Oleh karena itu, dia perlu untuk membeli bidang tanah baru. Petak-petak tanah yang tersedia direpresentasikan dalam matriks berukuran NxN. Setiap petak tanah mempunyai harga masing-masing. Untuk membangun cabang dari Krasti Krab, dibutuhkan suatu bidang tanah yang berbentuk kotak. Namun, ternyata Tuan Krab hanya membawa uang dalam pecahan K. Karena tidak mau rugi, maka Tuan Krab mengambil keputusan hanya akan membeli bidang tanah dengan harga total berupa kelipatan K. Tugas Anda adalah mencari banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

Format Input dan Output Input berupa matriks yang merepresentasikan harga petak tanah disimpan dalam file eksternal land.txt. Pada file eksternal ini, baris pertama berisi bilangan bulat positif N yang merepresentasikan ukuran matriks. N baris berikutnya berisi N buah bilangan bulat positif yang merupakan harga petak tanah pada cell tersebut. Pada saat runtime, diinputkan bilangan bulat K yang merepresentasikan pecahan uang yang dibawa oleh Tuan Krab. Output berupa informasi banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

+ **_land.txt_**
```
3
17 11 18
10 15 20
19 16 3
```

___
matriks loaded!
Pecahan uang : **4**
Banyak bidang tanah yang dapat dibeli adalah 6
\**Keterangan*: Ada 6 buah bidang tanah yang dapat dibeli. Bidang tanah yang tersebut yaitu :
```
17 11
```
```
10 15
19 16
```

```
17 11
10 15
19 16
```
```
16
```
```
11 18
15 20
```
```
20
```
___


## Solution
```pascal
program LandProperty;

const
    fileName = 'land.txt';

type
    intMatrix = array of array of integer;

var
    f: TextFile;
    land: intMatrix;
    N, K: integer;
    i, j, x, y: integer;

function countElmt(land: intMatrix; i, j, x, y: integer): integer;
var
    p, q: integer;

begin
    countElmt := 0;

    for p := i to x do
        for q := j to y do
            countElmt := countElmt + land[p, q];
end;

function countAvailability(land: intMatrix; N, K: integer): integer;
begin
    countAvailability := 0;

    for i := 0 to (N - 1) do
        for j := 0 to (N - 1) do
            for x := i to (N - 1) do
                for y := j to (N - 1) do
                    if (countElmt(land, i, j, x, y) mod K = 0) then
                        countAvailability := countAvailability + 1;
end;

begin
    assign(f, fileName);
    reset(f);

    read(f, N);
    setLength(land, N, N);

    for i := 0 to (N - 1) do
        for j := 0 to (N - 1) do
            read(f, land[i, j]);
    close(f);

    writeln('matriks loaded!');
    write('Pecahan uang : ');
    readln(K);

    writeln('Banyak bidang tanah yang dapat dibeli adalah ', countAvailability(land, N, K));


end.
```

+ Membuat iterator titik (i, j) hingga (x, y), setiap iterasi dengan batasan i <= x dan j <= y dihitung jumlah harga petak.
+ Hitung total petak dari titik (i, j) hingga (x, y), kemudian divalidasi.
\* (i, j) dan (x, y) merepresentasikan posisi petak pada matriks.
