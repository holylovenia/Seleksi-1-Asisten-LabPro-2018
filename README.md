# Seleksi 1 Asisten LabPro 2018
-----------------------------------
### Nama : Rizki Alif Salman Alfarisy
### NIM : 13516005
Petunjuk:

- Silahkan fork GitHub berikut agar dapat dikerjakan pada GitHub kalian masing-masing *(private)*.
- Pembagian soal dapat dilihat pada [tautan](https://docs.google.com/spreadsheets/d/1l8SNlbK4EI8wFb5_3pDDi3IfioO7VglCcPmfFCK2jJU/edit?usp=sharing) berikut ini.
- Kerjakan persoalan berikut (sesuai dengan pembagian) menggunakan algoritma yang menurut Anda mempunyai kinerja terbaik.
- Tuliskan penjelasan algoritma tersebut beserta *source code* pada saat pengumpulan.
- Perhatikan, yang perlu dikumpulkan adalah:
  - **README.md**, tolong hapus bagian yang tidak perlu. Readme minimal berisi hal-hal berikut:
    - Keterangan pembuat (NIM dan Nama Lengkap)
    - Deskripsi semua soal yang dikerjakan
    - *Source code* solusi untuk semua soal yang dikerjakan
    - Penjelasan solusi untuk semua soal yang dikerjakan
  - Direktori **src**, berisi file-file solusi soal, dengan format nama file **X-ProblemYY.eks**
    - **X** adalah nomor bab
    - **YY** adalah nomor problem
    - **eks** adalah ekstensi file solusi (sesuai bahasa pemrograman)
    - Contoh: 4-Problem03.pas
- Pemakaian fungsi bawaan yang berlebihan tidak diperbolehkan.
- ***Deadline pull request:*** Minggu, 27 Mei 2018 pukul 23.59, dengan subjek **[NIM] - Seleksi 1 Asisten LabPro 2018** (contoh: 13515113 - Seleksi 1 Asisten LabPro 2018). Jangan lupa segera di-*public* setelah melakukan *deadline* berlalu.
- *Have a nice day!*
------

------

------

# Solusi Soal
## Bab 1 - Percabangan - Problem 3
---------------------------------
### Soal

Tuan Vin sedang belajar tentang trigonometri. Dia tahu bahwa nilai sin suatu sudut tergantung kuadrannya, dimana pada kuadran 1 sin(a) = sin(a), kuadran 2 sin(180-a) = sin(a), kuadran 3 sin(180+a) = -sin(a), kuadran 4 sin(360-a) = -sin(a). Tuan Vin menantang Anda untuk membuat kalkulator untuk mempermudah perhitungan sin dengan mengubah sudutnya menjadi antara 0 sampai 90. Dapatkah Anda menjawab tantangan Tuan Vin? (0 dan 90 dihitung kuadran 1, 180 dihitung kuadran 2, 270 dihitung kuadran 3 dan 360 dihitung kuadran 4. Nilai sudut selalu di antara 0 hingga 360).


**Format Input & Output (input di-*bold*)**
***
Masukan nilai sudut: **150**

sin(150) = sin(30)
***
Masukan nilai sudut: **75**

sin(75) = sin(75)
***
Masukan nilai sudut: **270**

sin(270) = -sin(90)
***

### Source Code Solusi
```
program Trigonometri;

var
   sudut : integer; 

begin
    write('Masukan nilai sudut:');
    readln(sudut);

    if ((sudut >= 0) and (sudut <= 90)) then
        writeln('sin(',sudut,') = sin(',sudut,')')
    else if ((sudut > 90) and (sudut <= 180)) then
        writeln('sin(',sudut,') = sin(',180-sudut,')')
    else if ((sudut > 180) and (sudut <= 270)) then
        writeln('sin(',sudut,') = -sin(',sudut-180,')')
    else //sudut > 270 and sudut < 360
        writeln('sin(',sudut,') = -sin(',360-sudut,')');
end.
```
### Penjelasan Solusi

Program diawali dengan meminta masukan besar sudur dari user yang disimpan pada variabel **sudut**. Setelah itu, dilakukan percabangan berdasarkan 4 kuadran yang didefinisikan di soal. Pada setiap percabangan akan dilakukan output ke layar berdasarkan rumus yang ditentukan di soal.

---------------------------------
## Bab 2 - Pengulangan - Problem 2
---------------------------------
### Soal

Seorang mahasiswa mengklasifikasikan sebuah bilangan menjadi 3 kategori, yaitu **bilangan A**, **bilangan B**, dan **bilangan C**. 
- **Bilangan A** adalah bilangan yang seluruh faktornya kurang dari nilai bilangan tersebut.
- **Bilangan B** adalah bilangan yang seluruh faktornya sama dari nilai bilangan tersebut.
- **Bilangan C** adalah bilangan yang seluruh faktornya lebih dari nilai bilangan tersebut. 


Yang disebut faktor pada sebuah bilangan **N** adalah bilangan yang dapat membagi bilangan **N** sampai habis dan tidak sama dengan bilangan **N** tersebut. 
Bantulah mahasiswa tersebut dengan membuat program yang membaca angka dari **X** sampai **Y**, lalu menerima inputan tipe bilangan apa yang diinginkan, lalu mencetak seluruh bilangan tersebut ke layar. Jika tidak ada, maka cetak **Tidak ada**.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan X :1  
Masukan Y :10  
Masukan tipe bilangan :B  
Tipe bilangan B pada rentang 1 sampai 10 adalah  
6  
```
*(penjelasan : bilangan 6 memiliki faktor (1,2,3) yang nilai totalnya adalah 6)*
```
Masukan X :5  
Masukan Y :10  
Masukan tipe bilangan :A  
Tipe bilangan A pada rentang 5 sampai 10 adalah  
5  
7  
8  
9  
10  
```
*(penjelasan : bilangan 5 memiliki faktor (1) )*
```
Masukan X :5  
Masukan Y :10  
Masukan tipe bilangan :C  
Tipe bilangan C pada rentang 1 sampai 10 adalah  
Tidak ada
```

### Source Code Solusi
```
begin
    write('Masukan X:');
    readln(x);
    
    write('Masukan Y:');
    readln(y);

    write('Masukan tipe bilangan:');
    readln(tipe);

    writeln('Tipe bilangan ', tipe,' pada rentang ', x, ' sampai ', y, ' adalah');
    
    exist := false;

    case tipe of
        'A' :
            begin
                //Iterasi mencari bilangan tipe A di rentang x - y
                for i:=x to y do
                begin
                    sum := 0;
                    for j:= 1 to i-1 do
                    begin
                        if (i mod j = 0) then
                            sum := sum + j;
                    end;
                    if (sum < i)then
                    begin
                        writeln(i);
                        exist := true;
                    end;
                end;
            end;     
        'B' :
            begin
                //Iterasi mencari bilangan tipe B di rentang x - y
                for i:=x to y do
                begin
                    sum := 0;
                    for j:= 1 to i-1 do
                    begin
                        if (i mod j = 0) then
                            sum := sum + j;
                    end;
                    if (sum = i)then
                    begin
                        writeln(i);
                        exist := true;
                    end;
                end;
            end;
        'C' :
            begin
                //Iterasi mencari bilangan tipe C di rentang x - y
                for i:=x to y do
                begin
                    sum := 0;
                    for j:= 1 to i-1 do
                    begin
                        if (i mod j = 0) then
                            sum := sum + j;
                    end;
                    if (sum > i)then
                    begin
                        writeln(i);
                        exist := true;
                    end;
                end;
            end;
        end;

    if (exist = false) then 
        writeln('Tidak ada');
end.
```
### Penjelasan Solusi

Di awal program, program akan meminta user untuk memasukkan nilai **x** (rentang awal), **y** (rentang akhir), dan **tipe** (tipe bilangan). Setelah itu program akan melakukan inisialisasi variabel boolean **exist** dengan false terlebih dahulu. Variabel ini merepresentasikan apakah ada bilangan dengan tipe tertentu pada rentang **x** dan **y**. Kemudian program akan masuk ke dalam loop for pertama, loop ini ada untuk mengiterasi setiap bilangan yang ada di rentang x dan y untuk ditentukan apakah dia tipe bilangan yang diminta oleh user. 

Pada loop for ini, pertama-tama variabel **sum** yang digunakan untuk menhitung jumlah faktor suatu bilangan diinisialisasi dengan 0. Berikutnya akan masuk ke dalam for loop yang kedua untuk menghitung jumlah faktor suatu bilangan, loop ini diawal di **1** dan berakhir di **n-1** karena n tidak termasuk sebagai faktor dari n (n adalah bilangan yang sedang dicari jumlah faktornya). Setelah itu dilakukan perbandingan antara **sum** dengan **n** untuk menentukan tipe bilangan n, jika sesuai dengan tipe yang diminta user, maka akan dicetak ke layar dan nilai variabel **exist** diubah menjadi true.

Untuk tipe bilangan A, syaratnya adalah **sum** < **n**.
Untuk tipe bilangan B, syaratnya adalah **sum** = **n**.
Untuk tipe bilangan C, syaratnya adalah **sum** > **n**.

Terakhir, di akhir program akan dilakukan pengecekan terhadap nilai variabel **exist**. Apabila nilainya false, maka pesan 'Tidak ada' akan dicetak ke layar, menunjukkan tidak ada bilangan dengan tipe yang dicari pada rentang **x** dan **y**

---------------------------------
## Bab 3 - Fungsi dan Prosedur - Problem 1
---------------------------------
### Soal

Saat sedang mengerjakan PR kalkulus, seorang mahasiswa mendapatkan soal berikut.


> Diberikan fungsi sebagai berikut.
`f(x) = 2x^5 + 3x^4 + 9x^3 − x^2 + 3x − 2`  untuk semua bilangan bulat positif x kurang dari 30.
Carilah nilai x berdasarkan nilai f(x) yang diberikan.


Karena *deadline* PR kalkulus tinggal 1 jam lagi, bantulah mahasiswa tersebut untuk mengerjakan soal tersebut!


**Format Input & Output (input di-*bold*)**
***
Masukan f(x) : **14**

Nilai x adalah 1   
***
Masukan f(x) : **1700818**

Nilai x adalah 15
***
Masukan f(x) : **2**

Tidak ada x yang sesuai
***


**Catatan:**

Anda diwajibkan membuat fungsi f(x) untuk nilainya dicocokan dengan masukan.

### Source Code Solusi
```
program F(X);

var
   result : Longint;
   x : integer; 

function f(x : integer) : Longint;
begin
    f := 2*x*x*x*x*x+3*x*x*x*x+9*x*x*x- x*x+ 3*x -2;
end;

begin
    write('Masukan f(x):');
    readln(result);
    
    x:=1;
    while ((x < 30) and (f(x)<>result)) do 
        x:=i+1;
    
    if (x < 30) then writeln('Nilai x adalah ',x)
    else writeln('Tidak ada x yang sesuai');
end.
```
### Penjelasan Solusi

Pada program, dibuat fungsi **f** yang mengembalikan suatu longint dengan masukan suatu inteegr x. Funsgi ini diimplementasikan sesuai dengan rumus f(x) = 2x^5 + 3x^4 + 9x^3 − x^2 + 3x − 2 di soal. 

Pada program utama, pertama-tama user akan memasukan nilai f(x) yang disimpan pada variabel **result**. Lalu program akan menginisialisasi nilai **x** dengan 1 lalu masuk ke loop. Program akan keluar dari loop hanya jika nilai x > 30 atau **f(x)** sama dengan **result**.

Terakhir, dilakukan pengecekan terhadap nilai **x**, apabila nilainya kurang dari 30, artinya loop selesai karena ada **f(x)** yang nilainya sama dengan **result**, sehinggai nilai **x** dicetak ke layar. Jika tidak ada, maka tidak ada nilai **f(x)** yang sama dengan **result** pada rentang **x** 1-29 sehingga pesan 'Tidak ada x yang sesuai' akan dicetak ke layar.

---------------------------------
## Bab 4 - *Array* - Problem 12
---------------------------------
### Soal

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

### Source Code Solusi
```
program DuplikatKunci;

var
   n,i,j : integer; 
   kunci : array of integer;
   unique : boolean;

begin
    write('Masukkan jumlah kunci yang ada:');
    readln(n);
    setlength(kunci,n);

    writeln('Masukkan nomor ruangan kunci yang ada:');
    for i:=0 to n-1 do
    begin
        readln(kunci[i]);
    end;

    writeln('Kunci yang harus diduplikat:');
    for i:=0 to n-1 do
    begin
        unique:= true;
        j:=0;

        while ((j < n) and (unique)) do
        begin
            if ((kunci[i] = kunci[j]) and (j<>i)) then 
                unique := false;

            j:=j+1;
        end;

        if (unique) then 
            writeln(kunci[i]);
    end;
end.
```
### Penjelasan Solusi

Program diawali dengan meminta masukan user berupa jumlah kunci yang disimpan di variabel **n**. Kemudian array **kunci** diset agar ukurannya sesuai dengan jumlah kunci. Setelah itu, program akan meminta user memasukkan nomor-nomor kunci yang ada dan di simpan di array **kunci**.

Pada bagian kedua dari program, akan ditentukan kunci mana saja yang harus diduplikat. Pertama-tama, program akan masuk ke for loop, for loop ini berguna untuk mengiterasi seluruh isi array **kunci** untuk dicek tiap elemennya, apakah kunci tersebut perlu diduplikat atau tidak. pada for loop tersebut, berikutnya akan dilakukan inisialisasi iterator **j** dan variabel **unique** dengan true. Setelah itu, pogram akan masuk ke while loop yang melakukan iterasi dari awal array hingga akhir array, pada loop tersebut, jika ditemukan nilai elemen yang sama dengan elemen yang sedang melakukan loop selain elemen itu sendiri, maka nilai variabel **unique** akan diubah menjadi false dan loop akan berhenti. Jika tidak ada, maka loop akan berhenti bila pengecekan sudah sampai ke elemen terakhir array.

Apabila setelah keluar dari while loop, nilai **unique** masih true, maka elemen dari array **kunci** tersebut akan dicetak ke layar karena hanya ada satu sehingga perlu diduplikat.

-----------------
## Bab 5 - Matriks dan File Eksternal - Problem 11
-----------------
### Soal

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

### Source Code Solusi
```
program AntrianKrastiKrab;

var
    file_antrian : text;
    antrian : array of array of integer;
    i,j,m,n: integer;
    found : boolean;

begin
    assign(file_antrian,'Queue.txt');
    reset(file_antrian);
    
    read(file_antrian,n);
    read(file_antrian,m);
    setlength(antrian,n,m);
    
    for i:=0 to n-1 do
    begin
        for j:=0 to m-1 do
        begin
            read(file_antrian,antrian[i][j]);
        end;
    end;

    close(file_antrian);
    writeln('file loaded!');
   

    j:=0;
    found := false;
    while ((j < m) and (not found)) do
    begin
        i:=0;
        while ((i < n) and (not found)) do
        begin
            if (antrian[i][j] = 1) then 
                found := true
            else 
                i:=i+1;
        end;  
        j:=j+1;
    end;    

    writeln('Antrian terpanjang adalah ', m-j+1);
end.
```
### Penjelasan Solusi

Pertama-tama program akan membuka file Queue.txt dan disimpan di variabel **file_antrian**. Kemudian program akan membaca 2 angka petama dalam file tersebut, dan nilainya disimpan di variabel **n** dan **m**. Setelah itu, program akan menset ukuran array **antrian** berdasarkan nilai **n** dan **m** lalu membaca sisa angka pada **file_antrian** dan menyimpan nilainya ke array.

Langkah selanjutnya adalah menentukan panjang antrian terpanjang. Penentuan panjang antrian panjang dilakukan dengan cara mengiterasi matriks per baris dari kolom paling belakang (paling kiri) ke paling depan (paling kanan), apabila ditemukan angka 1 atau seluruh elemen matriks telah dicek maka loop akan berhenti.

Setelah itu, panjang antrian terpanjang dihitung dengan rumus m-j+1. Dimana m adalah slot kasir yang tersedia, j adalah jumlah kolom yang sudah dicek sebelum loop berhenti. 
