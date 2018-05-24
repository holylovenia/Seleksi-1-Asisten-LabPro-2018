# Seleksi 1 Asisten Laboratorium Programming 2018
Oleh : Priagung Satyagama (13516089)

## Bab 1 Percabangan - Problem 11
### Deskripsi Soal
Tuan Vin menjadi wasit dalam permainan tic tac toe. Tuan Vin diminta menentukan pemenang dari setiap permainan. Karena malas, Tuan Vin meminta Anda yang jag membuat program untuk membuat program yang dapat menentukan pemenang permainan tic tac toe. Karena Tuan Vin menjadi wasit, dipastikan pada permainan ini paling banyak hanya ada 1 pemenang, dan papan dibiarkan terisi penuh karena Tuan Vin kesulitan menentukan pemenang.


**Format Input & Output (input di-*bold*)**
***
Masukkan isi papan:

**O X O**

**O O X**

**X X O**

Pemain O menang
***
Masukkan isi papan:

**X X X**

**O O X**

**X O O**

Pemain X menang
***
Masukkan isi papan:

**O X O**

**O X X**

**X O O**

Tidak ada yang menang
***
Hint: hanya ada 8 posisi yang menentukan pemenang dalam tic tac toe

### Source Code Solusi
```Pascal
program bab1_problem11;
var
    arr: array [0..2, 0..2] of char;
    temp: char;
    i, j: integer;
begin
    // membaca input
    for i := 0 to 2 do
    begin
        for j := 0 to 2 do
        begin
            read(arr[i,j], temp);
        end;
        readln;
    end;

    if (arr[0,0] = arr[0,1]) and (arr[0,1] = arr[0,2]) then
    begin
        writeln('Pemain ', arr[0,0], ' menang');
    end
    else if (arr[1,0] = arr[1,1]) and (arr[1,1] = arr[1,2]) then
    begin
        writeln('Pemain ', arr[1,0], ' menang');
    end
    else if (arr[2,0] = arr[2,1]) and (arr[2,1] = arr[2,2]) then
    begin
        writeln('Pemain ', arr[2,0], ' menang');
    end
    else if (arr[0,0] = arr[1,0]) and (arr[1,0] = arr[2,0]) then
    begin
        writeln('Pemain ', arr[0,0], ' menang');
    end
    else if (arr[0,1] = arr[1,1]) and (arr[1,1] = arr[2,1]) then
    begin
        writeln('Pemain ', arr[0,1], ' menang');
    end
    else if (arr[0,2] = arr[1,2]) and (arr[1,2] = arr[2,2]) then
    begin
        writeln('Pemain ', arr[0,2], ' menang');
    end
    else if (arr[0,0] = arr[1,1]) and (arr[1,1] = arr[2,2]) then
    begin
        writeln('Pemain ', arr[0,0], ' menang');
    end
    else if (arr[2,0] = arr[1,1]) and (arr[1,1] = arr[0,2]) then
    begin
        writeln('Pemain ', arr[2,0], ' menang');
    end
    else
    begin
        writeln('Tidak ada yang menang');
    end;
end.
```
### Pembahasan Solusi
Pertama-tama, input disimpan dulu dalam matriks karakter berukuran 3x3. Setelah itu, enumerasi semua kemungkinan menang (ada 8 kemungkinan posisi menang) dengan menggunakan percabangan (if-else atau menggunakan case). Kondisi else dari percabangan itu adalah ketika tidak ada pemain yang menang.

## Bab 2 Pengulangan - Problem 10
### Deskripsi Soal
Seorang mahasiswa ingin menentukan bilangan terendah kedua dan terbesar kedua dari **N** buah bilangan. Diasumsikan **N** selalu lebih besar dari **1**. Buatlah program untuk membantu mahasiswa tersebut.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan jumlah bilangan :5  
Bilangan ke-1 :4 
Bilangan ke-2 :78
Bilangan ke-3 :25 
Bilangan ke-4 :20 
Bilangan ke-5 :34
Bilangan terendah kedua adalah 20
Bilangan tertinggi kedua adalah 34
```
---------------------------------

### Source Code Solusi
```Pascal
program bab2_problem10;
var
    max, max2, min, min2, n, i, val: integer;
begin
    write('Masukan jumlah bilangan :');
    readln(n);
    if n > 0 then
        write('Bilangan ke-1 :');
        readln(val);
        max := val;
        min := val;
        write('Bilangan ke-2 :');
        readln(val);
        if val > max then
        begin
            max2 := max;
            max := val;
        end
        else begin
            max2 := val;
        end;
        if val < min then
        begin
            min2 := min;
            min := val;
        end
        else begin
            min2 := val;
        end;
    for i := 3 to n do
    begin
        write('Bilangan ke-', i, ' :');
        readln(val);
        if val > max then
        begin
            max2 := max;
            max := val;
        end 
        else if val > max2 then 
        begin
            max2 := val;
        end;
        if val < min then
        begin
            min2 := min;
            min := val;
        end
        else if val < min2 then
        begin
            min2 := val;
        end;
    end;
    writeln('Bilangan terendah kedua adalah ', min2);
    writeln('Bilangan tertinggi kedua adalah ', max2);
end.
```

### Pembahasan Solusi
Pertama-tama tentukan terlebih dahulu maksimum, maksimum ke 2, minimum, dan minimum ke 2 untuk 2 input pertama. setelah itu lakukan perulangan mulai dari input ke 3 sampai ke N sembari di cek apakah input nya melebihi maksimum atau sekedar melebihi maksimum ke 2, atau kurang dari minimum atau sekedar kurang dari minimum ke 2. dengan kondisi-kondisi tersebut, sesuaikan nilai minimum, maksimum, minimum ke 2, dan maksimum ke 2 seiring dengan berjalannya perulangan. Terakhir, print minimum ke 2 dan maksimum ke 2 ke layar.

## Bab 3 Fungsi dan Prosedur - Problem 9
### Deskripsi Soal
Diberikan 2 bilangan bulat A dan B (1 ≤ A, B ≤ 100000000), buatlah program yang menampilkan semua palindrom antara A dan B inklusif.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai range bilangan A dan B : **10 100**

Palindrome antara 10 dan 100 adalah:

11

22

33

44

55

66

77

88

99
***
Masukkan nilai range bilangan A dan B : **12 21**

Palindrome antara 10 dan 100 adalah:

TIDAK ADA
***


**Catatan:** 
Buatlah suatu fungsi yang memeriksa apakah suatu bilangan adalah bilangan palindrome atau bukan.

### Source Code Solusi
```Pascal
program bab3_problem9;
var
    a,b,i:longint;
    found: boolean;

function isPalindrom(num:longint): boolean;
var
    temp, reverse: longint;
begin
    temp := num;
    reverse := 0;
    while(temp <> 0) do
    begin
        reverse := reverse + (temp mod 10);
        temp := temp div 10;
        if (temp <> 0) then
            reverse := reverse*10;
    end;
    
    isPalindrom := num = reverse;
end;

begin
    write('Masukkan nilai range bilangan A dan B : ');
    readln(a, b);

    found := false;
    for i := a to b do
    begin
        if isPalindrom(i) then
        begin
            writeln(i);
            found := true;
        end;
    end;

    if not found then
        writeln('TIDAK ADA');
end.
```

### Pembahasan Solusi
Pertama-tama, buat terlebih dahulu fungsi untuk mencari apakah suatu angka palindrom atau tidak. algoritma fungsi nya adalah sebagai berikut.
- Tentukan angka yang merupakan reverse dari angka yang ingin kita cek. gunakan mod dan div
- Cek apakah angka yang sudah di reverse tersebut sama dengan angka yang kita cari atau tidak. Jika sama, maka palindrom, jika tidak, maka bukan palindrom.
Pada program utama, pertama-tama terima masukan longint A dan B, kemudian lakukan perulangan dari A dan B dan cek setiap angka nya apakah palindrom atau bukan, jika palindrom, print angka tersebut ke layar. Jika tidak ada angka palindrom, print 'TIDAK ADA'

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

### Pembahasan Solusi


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

### Pembahasan Solusi

