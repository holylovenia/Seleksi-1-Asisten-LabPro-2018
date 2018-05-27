# Seleksi 1 Asisten LabPro 2018
-----------------------------------

## Author
[Muhammad Alif Arifin](https://github.com/AlifArifin) - 13516078

## Persoalan
### Bab 1 Problem 2
#### Deskripsi
Tuan Vin ingin meminta bantuan Anda. Tuan Vin diminta untuk mengurutkan nilai ujian antara 3 orang. Ini adalah hal yang mudah, tetapi Tuan Vin perlu memeriksa ratusan orang. Karena malas, Tuan Vin meminta bantuan Anda, yang jago membuat program. Nilai ketiga orang dijamin berbeda.

#### Format Input dan Output
input di-**bold**  
*Contoh*
<pre>
Masukan Nama 1: <b>Kevin</b>
Masukan Nilai 1: <b>70</b>
Masukan Nama 2: <b>Richard</b>
Masukan Nilai 2: <b>100</b>
Masukan Nama 3: <b>Albert</b>
Masukan Nilai 3: <b>80</b>

Peringkat pertama adalah Richard
Peringkat kedua adalah Albert
Peringkat ketiga adalah Kevin
</pre>

#### Source code
- `src/1-problem02.pas`
```pas
// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Percabangan -  Bab 1 Problem 2
// Deskripsi : Mengurutkan 3 mahasiswa berdasarkan nilai
// Batasan   : Nilai ketiga orang dijamin berbeda

program bab1;

{ KAMUS }
type
    mahasiswa = record
        nama : string;
        nilai : integer;
    end;

var
    m1, m2, m3 : mahasiswa; // untuk menyimpan 3 data mahasiswa

{ ALGORITMA }
begin
    write('Masukan Nama 1: ');
    readln(m1.nama);
    write('Masukan Nilai 1: ');
    readln(m1.nilai);
    write('Masukan Nama 2: ');
    readln(m2.nama);  
    write('Masukan Nilai 2: ');
    readln(m2.nilai);
    write('Masukan Nama 3: ');
    readln(m3.nama);  
    write('Masukan Nilai 3: ');
    readln(m3.nilai);
    
    // jika m1 merupakan peringkat pertama
    if ((m1.nilai > m2.nilai) and (m1.nilai > m3.nilai)) then
    begin
        writeln('Peringkat pertama adalah ', m1.nama);
        // jika m2 merupakan peringkat kedua
        if (m2.nilai > m3.nilai) then
        begin
            writeln('Peringkat kedua adalah ', m2.nama);
            writeln('Peringkat ketiga adalah ', m3.nama);          
        end
        // jika m3 merupakan peringkat kedua
        else
        begin 
            writeln('Peringkat kedua adalah ', m3.nama);              
            writeln('Peringkat ketiga adalah ', m2.nama);
        end;
    end
    // jika m2 merupakan peringkat pertama
    else if ((m2.nilai > m1.nilai) and (m2.nilai > m3.nilai)) then
    begin
        writeln('Peringkat pertama adalah ', m2.nama);
        // jika m1 merupakan peringkat kedua    
        if (m1.nilai > m3.nilai) then
        begin
            writeln('Peringkat kedua adalah ', m1.nama);
            writeln('Peringkat ketiga adalah ', m3.nama);                  
        end
        // jika m3 merupakan peringkat kedua    
        else 
        begin
            writeln('Peringkat kedua adalah ', m3.nama);    
            writeln('Peringkat ketiga adalah ', m1.nama);    
        end;
    end
    // jika m3 merupakan peringkat pertama
    else
    begin
        writeln('Peringkat pertama adalah ', m3.nama);
        // jika m2 merupakan peringkat kedua    
        if (m2.nilai > m1.nilai) then
        begin
            writeln('Peringkat kedua adalah ', m2.nama);
            writeln('Peringkat ketiga adalah ', m1.nama);          
        end
        // jika m1 merupakan peringkat kedua    
        else 
        begin
            writeln('Peringkat kedua adalah ', m1.nama);    
            writeln('Peringkat ketiga adalah ', m2.nama);    
        end;      
    end;
end.
```

#### Penjelasan Solusi
Langkah kerja solusi adalah sebagai berikut:
1. Program pada awalnya akan meminta input pengguna. Input berupa 3 data mahasiswa dan setiap mahasiswa akan memiliki nama dan nilai. 
2. Program akan membandingkan nilai mahasiswa dan akan dicari seluruh kemungkinan. Kemungkinan terbagi menjadi 6, yaitu:  
```
- 123
- 132
- 213
- 231
- 312
- 321
```
*keterangan*: 312 artinya mahasiswa 3 peringkat pertama, mahasiswa 1 peringkat kedua, dan seterusnya.  

3. Program akan memetakan seluruh kemungkinan yang ada sehingga terdapat percabangan bertingkat. Cabang pertama (`if` pertama) akan memeriksa siapa yang merupakan peringkat pertama. Lalu untuk cabang kedua (`if` kedua) akan memeriksa siapa yang merupakan peringkat kedua dan ketiga. Lalu mencetak peringkat ketika mengetahuinya.

---------------------------

### Bab 2 Problem 1
#### Deskripsi
Karena bosan belajar, sekumpulan anak TPB memutuskan untuk bermain. Pada permainan ini, anak TPB tersebut secara bergantian menyebutkan bilangan natural secara berurutan. Namun, mereka tidak boleh menyebutkan angka kelipatan **3** atau **7**. Misal jika mereka bermain sampai angka 25, bilangan yang akan mereka ucapkan adalah sebagai berikut:
**1, 2, 4, 5, 8, 10, 11, 13, 16, 17, 19, 20, 21, 22, 23, 24, 25**

Dapat dilihat bahwa seluruh bilangan kelipatan 3 atau 7 tidak disebutkan, kecuali kelipatan 3 dan 7 (yaitu 21). Karena tidak ingin kalah terus menerus, seorang mahasiswa membuat program untuk membantunya bermain. Program tersebut menerima input berupa suatu bilangan bulat N dan mencetak seluruh angka yang harus disebutkan sampai bilangan N.

#### Format Input dan Output
input di-**bold**  
*Contoh*
<pre>
Masukan N: <b>25</b>  
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
24  
25  
</pre>
<pre>
Masukan N: <b>10</b>
1  
2  
4  
5  
8  
10  
</pre>

#### Source Code
- `src/2-problem01.pas`
```pas
// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Pengulangan - Bab 2 Problem 1
// Deskripsi : Mencetak selain kelipatan 3 dan 7 kecuali kelipatan 3 * 7 (21)
// Batasan   : -

program bab2;

{ KAMUS }
var
    n, i : integer; // n = menyimpan batas atas
                    // i = untuk iterasi

{ ALGORITMA }
begin
    write('Masukan N: ');
    readln(n);

    for i := 1 to n do
    begin
        // i merupakan angka selain kelipatan 3 atau 7 namun boleh kelipatan 3 * 7 (21)
        if (not((i mod 3 = 0) xor (i mod 7 = 0))) then
            writeln(i);
    end; 
end.
```

#### Penjelasan Solusi
Langkah kerja solusi adalah sebagai berikut:
1. Program awalnya akan meminta input berupa `limit` (batas). 
2. Program akan mengiterasi dari `1` hingga `limit` dan iterator akan disimpan pada variabel `i`
3. `i` akan dicek dan terdapat dua kemungkinan, yaitu:
1. `i` merupakan angka selain kelipatan `3` atau `7` namun boleh kelipatan `3 * 7` (21), maka `i` akan dicetak
2. selain itu, `i` tidak akan dicetak

---------------------------------

### Bab 3 Problem 12
#### Deskripsi
Saat sedang kuliah kalkulus, seorang mahasiswa mendapatkan dua buah fungsi berikut.

`f(x) = 2x − 9`

`g(x) = x^3 + 7`

Ia baru saja belajar mengenai fungsi komposisi sehingga ia ingin mencoba untuk menerapkannya pada kedua fungsi tersebut. Bantulah ia untuk menghitung nilai f(g(f(x))) diberikan nilai x!

#### Format Input dan Output
input di-**bold**  
*Contoh*
<pre>
Masukan nilai x: <b>4</b>

f(g(f(x))) = 3
</pre>
<pre>
Masukan nilai x: <b>0</b>

f(g(f(x))) = -1453
</pre>

Anda diwajibkan membuat fungsi f(x) dan g(x).

#### Source Code
- `src/3-problem12.pas`
```pas
// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Fungsi dan Prosedur - Bab 3 Problem 12
// Deskripsi : Menghitung f(g(f(x))) dengan
//              f(x) = 2x − 9
//              g(x) = x^3 + 7
// Batasan   : - 

program bab3;

{ KAMUS }
var
    x : integer; // untuk menyimpan input pengguna

{ FUNGSI DAN PROSEDUR }
function fx(x : integer) : integer;
// fungsi fx akan meminta input berupa x (variable)
// dan akan mengembalikan hasil dari fungsi f(x)
// fungsi f(x) = 2x − 9

{ KAMUS LOKAL }

{ ALGORITMA }
begin
    fx := 2 * x - 9;
end;

function gx(x : integer) : integer;
// fungsi gx akan meminta input berupa x (variable)
// dan akan mengembalikan hasil dari fungsi g(x)
// fungsi g(x) = x^3 + 7

{ KAMUS LOKAL }

{ ALGORITMA }
begin
    gx := x * x * x + 7;
end;

{ ALGORITMA }
begin
    write('Masukan nilai: ');
    readln(x);
    writeln('f(g(f(x))) = ', fx(gx(fx(x))));
end.
```

------------------

### Bab 4 Problem 11
#### Deskripsi
Mei ditugaskan untuk mencatat absensi seluruh mahasiswa yang hadir. Setiap kali mahasiswa hadir, mahasiswa harus mengumpulkan kertas kehadiran berisi NIM kepada Karin. Buatlah program untuk membantu Karin mencatat berapa kali suatu mahasiswa hadir *NIM mahasiswa tidak lebih dari 3 digit*

#### Format Input dan Output 
input di-**bold**  
*Contoh*
<pre>
Masukkan jumlah kertas kehadiran : <b>9</b>
Masukkan NIM mahasiswa : <b>89</b>
Masukkan NIM mahasiswa : <b>230</b>
Masukkan NIM mahasiswa : <b>89</b>
Masukkan NIM mahasiswa : <b>89</b>
Masukkan NIM mahasiswa : <b>100</b>
Masukkan NIM mahasiswa : <b>100</b>
Masukkan NIM mahasiswa : <b>74</b>
Masukkan NIM mahasiswa : <b>74</b>
Masukkan NIM mahasiswa : <b>89</b>

Rekap kehadiran mahasiswa :
74 - 2 kali
89 - 4 kali
100 - 2 kali
230 - 1 kali
</pre>

#### Source Code
- `src/4-problem11.pas`
```pas
// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Array - Bab 4 Problem 11
// Deskripsi : Menghitung jumlah kemunculan di array
// Batasan   : - 
// Asumsi    : 1) NIM 004 dengan 04 sama 
//             2) jumlah input tidak lebih dari 100

program bab4;

{ KAMUS }
var
    nim : array[1..100] of smallint; // menyimpan nim
    n, i, j, count, temp : integer; // n = mencatat jumlah nim
                                    // i, j = untuk iterasi loop
                                    // count = untuk pencatatan
                                    // temp = untuk penampung sementara

begin
    write('Masukkan jumlah kertas kehadiran: ');
    readln(n);

    if (n > 100) then
        writeln('Maaf, jumlah maksimum adalah 100')
    // input valid (kalaupun non positif tidak akan masuk loop)
    else 
    begin
        // meminta input
        for i := 1 to n do
        begin
            // melakukan validasi
            repeat
                write('Masukkan NIM mahasiswa: ');
                readln(temp);
            until ((temp > 0) and (temp < 1000));
            nim[i] := temp;
        end;

        // melakukan pencatatan
        writeln('Rekap kehadiran mahasiswa:');
        for i := 1 to n do
        begin
            // jika nim tidak valid
            if (nim[i] <> -1) then
            begin                        
                count := 1;
                for j := (i + 1) to n do
                begin
                    if (nim[i] = nim[j]) then
                    begin
                        count := count + 1;
                        nim[j] := -1; // agar tidak diakses kembali
                    end;
                end;
                writeln(nim[i], ' - ', count, ' kali');
            end;
        end;
    end;
end.
```

----------------------------

### Bab 5 Problem 10
#### Deskripsi
Tuan Krab ingin membuka cabang baru dari Krasti Krab. Oleh karena itu, dia perlu untuk membeli bidang tanah baru. Petak-petak tanah yang tersedia direpresentasikan dalam matriks berukuran `N`x`N`. Setiap petak tanah mempunyai harga masing-masing. Untuk membangun cabang dari Krasti Krab, dibutuhkan suatu bidang tanah yang berbentuk kotak. Namun, ternyata Tuan Krab hanya membawa uang dalam pecahan `K`. Karena tidak mau rugi, maka Tuan Krab mengambil keputusan hanya akan membeli bidang tanah dengan harga total berupa kelipatan `K`. Tugas Anda adalah mencari banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

#### Format Input dan Output
*Input* berupa matriks yang merepresentasikan harga petak tanah disimpan dalam file eksternal `land.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat positif yang merupakan harga petak tanah pada *cell* tersebut. Pada saat *runtime*, diinputkan bilangan bulat `K` yang merepresentasikan pecahan uang yang dibawa oleh Tuan Krab.  
*Output* berupa informasi banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

*Contoh*
- `land.txt`

```
3
17 11 18
10 15 20
19 16 3
```

- *runtime program*

<pre>
matriks loaded!
Pecahan uang: <b>4</b>
Banyak bidang tanah yang dapat dibeli adalah 6
</pre>

*Keterangan:*  
Ada 6 buah bidang tanah yang dapat dibeli.
Bidang tanah yang tersebut yaitu

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
18 16
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

#### Source Code
- src/5-problem10.pas
```pas
// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Percabangan -  Bab 5 Problem 10
// Deskripsi : Mencari kotak pada matriks dengan kelipatan x. x merupakan input pengguna
// Batasan   : Matriks berbentuk persegi

program bab5;

{ KAMUS }
var
    matriks : array [1..20, 1..20] of integer; // untuk menyimpan matriks
    fileMatriks : text; // file yang menyimpan matriks
    i, j, k, l, m, n, sum, factor, count : integer; // i, j, k, l untuk iterasi
                                                    // n untuk mencatat jumlah baris/kolom matriks
                                                    // sum untuk perhitungan sementara
                                                    // factor menghitung kelipatan
                                                    // count untuk menghitung jumlah tanah
    nama : string; // nama file

{ ALGORTIMA }
begin
    // nama file
    nama := 'matriks.txt';

    assign(fileMatriks, nama);
    reset(fileMatriks);

    // membaca jumlah baris/kolom
    // asumsi file sudah bener formatnya
    read(fileMatriks, n);
    for i := 1 to n do
    begin
        for j := 1 to n do
        begin
            read(fileMatriks, matriks[i,j]);
            write(matriks[i,j], ' ');
        end;
        writeln();
    end;

    // meminta input
    writeln('matriks loaded');
    write('pecahan uang: ');
    readln(factor);

    // inisialisasi
    count := 0;

    // mencoba setiap kemungkinan kotak
    // ide-nya adalah, untuk mendapatkan kotak dibutuhkan 2 ujung
    // [i, j] untuk ujung pertama dan
    // [k, l] untuk ujung kedua
    // lalu menghitung nilai dari kotak yang dibatasi 2 ujung tersebut
    // apabila merupakan kelipatan dari factor maka count (penghitung) akan ditambah 1
    // sudah dipastikan setiap kemungkinan tidak terjadi duplikasi
    for i := 1 to n do
    begin
        for j := 1 to n do
        begin
            for l := j to n do
            begin
                sum := 0;
                for k := i to n do
                begin
                    // yang diiterasi adalah kolom agar lebih cepat waktu eksekusinya
                    for m := j to l do
                        sum := sum + matriks[k, m];
                    if (sum mod factor = 0) then
                        count := count + 1;
                end;
            end;
        end;  
    end;

    writeln('Banyak bidang tanah yang dapat dibeli adalah ', count);
end.
```

-----------------------------------