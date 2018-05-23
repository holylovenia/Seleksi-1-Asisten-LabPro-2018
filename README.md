
<h1  align="center">
	<br>
	Tugas 1 Seleksi Asisten Labpro 2018
	<br>
	<br>
</h1>
  
  

## Description
 
Ini adalah repo berisi editorial soal seleksi asisten Labpro 2018.

## Daftar Isi

- [Bab 1 Problem 10](#problem-10)
- [Bab 2 Problem 9](#problem-9)
- [Bab 3 Problem 8](#problem-8)
- [Bab 4 Problem 7](#problem-7)
- [Bab 5 Problem 6](#problem-6)


## Source Code dan Penjelasan
### Bab 1 - Percabangan
---
#### Problem 10
Tuan Vin sedang mengetik chat dan baru belajar emoticon. Emoticon dapat digunakan untuk mengekspreikan perasaan dalam chat. Karena baru belajar, jumlah emoticon yang diketahuinya hanya sedikit. Berikut adalah emoticon yang diketahui Tuan Vin:


- Senyum: :)
- Sedih: :(
- Tertwa: :D
- Menangis: :'(
- ROTFL: :))


Tuan Vin menantang Anda untuk menebak perasaan Tuan Vin berdasarkan emoticon yang dikirimnya.


**Format Input & Output (input di-*bold*)**
***
Masukan emoticon: **:D**

Tuan Vin sedang tertawa
***
#### Source Code
```pascal
// Kamus
var
    emoticon: String;   // Emoticon masukan

// Algoritma
begin
    // Masukan program
    write('Masukan emoticon: ');
    readln(emoticon);

    // Menyocokkan emoticon dengan ekspresi yang benar
    write('Tuan Vin sedang ');
    case (emoticon) of
        ':)' : writeln('senyum');
        ':(' : writeln('sedih');
        ':D' : writeln('tertawa');
        ':''(' : writeln('menangis');
        ':))' : writeln('ROTFL');
    end;
end.
```
***
#### Penjelasan
Solusi dari soal ini menggunakan algoritma percabangan sederhana yang mencocokkan emoticon tertentu dengan ekspresi yang seharusnya.

[Back to menu](#daftar-isi)
***

### Bab 2 - Pengulangan
---
#### Problem 9
Seorang mahasiswa harus mencetak dokumen tugasnya. Karena hari sudah subuh dan harus dikumpulkan pada pagi hari, maka ia harus menentukan percetakan terdekat dari data yang tersedia. Buatlah program untuk membantu mahasiswa tersebut.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan lokasi mahasiswa tersebut  
X :1
Y :0
Masukan banyaknya percetakan :3 
Masukan posisi percetakan 1  
X :1
Y :6
Masukan posisi pedagang 2  
X :0  
Y :0  
Masukan posisi pedagang 3  
X :5 
Y :7 
Pedagang terdekat adalah pedagang 2.
```
Hint : buatlah fungsi yang menghitung jarak 2 titik.
***
#### Source Code
```pascal
// Fungsi untuk menghitung euclidean distance
function euclidDist(x1, y1, x2, y2: real): real;
// Kamus Lokal
var
    diff1, diff2 : real;

// Algoritma
begin
    diff1 := x1 - y1;
    diff2 := x2 - y2;
    euclidDist := sqrt(diff1*diff1 + diff2*diff2);
end;

// Program Utama
// Kamus
var
    mahasiswaX, mahasiswaY : real;      // Koordinat mahasiswa
    percetakanX, percetakanY : real;    // Koordinat percetakan
    nPercetakan : integer;              // Jumlah percetakan
    closestPercetakan : integer;        // Percetakan terdekat
    currentDist : real;                 // Jarak percetakan terdekat
    tmpDist : real;                     // Jarak percetakan sementara
    i : integer;                        // Variabel iterasi

// Algoritma
begin
    // Masukan program
    writeln('Masukan lokasi mahasiswa tersebut  ');
    write('X :');
    readln(mahasiswaX);
    write('Y :');
    readln(mahasiswaY);

    write('Masukan banyaknya percetakan :');
    readln(nPercetakan);

    currentDist := 9999999;
    for i := 1 to nPercetakan do
        begin
            writeln('Masukan posisi percetakan ', i);
            write('X :');
            readln(percetakanX);
            write('Y :');
            readln(percetakanY);

            // Mencari jarak percetakan terdekat
            // Jika ada percetakan yang lebih dekat,
            // ganti jawaban dengan percetakan tersebut
            tmpDist := euclidDist(percetakanX, percetakanY, mahasiswaX, mahasiswaY);
            if(tmpDist < currentDist) then
            begin
                closestPercetakan := i;
                currentDist := tmpDist;
            end;
        end;

    writeln('Pedagang terdekat adalah pedagang ', closestPercetakan);
end.
```
***
#### Penjelasan
Solusi dari soal ini adalah dengan mengiterasi semua percetakan yang ada, lalu menghitung jarak antara percetakan tersebut dengan posisi mahasiswa. Ada variabel yang menyimpan index percetakan terdekat saat itu. Setiap ada percetakan yang memiliki jarak lebih kecil ke mahasiswa, variabel meng-<i>update</i> index percetakan terdekat dengan yang baru. Untuk algoritma perhitungan jarak terdekatnya sendiri menggunakan <i>euclidean distance</i>.

[Back to menu](#daftar-isi)
***

### Bab 3 - Fungsi dan Prosedur
---
#### Problem 8
Diberikan 2 bilangan positif a dan b. Tentukan nilai a^b!

**Format Input & Output (input di-*bold*)**

***
Masukan A : **2**

Masukan B : **10**

2^10 = 1024
***
#### Source Code
```pascal
// Fungsi untuk menghitung a pangkat b
function power(a, b: longint): longint;
// Kamus lokal
var
    res : longint;  // Jawaban
    pow : longint;  // Pangkat
    x : longint;    // Angka yang akan dipangkatkan
// Algoritma
begin
    // Inisialisasi
    res := 1;
    pow := b;
    x := a;

    // Selama pangkat belum nol
    while(pow > 0) do begin
        // Jika pangkat ganjil
        if(pow mod 2 = 1) then
            res := res * x;
        pow := pow div 2;
        x := x*x;
    end;

    power := res;
end;

// Program utama
// Kamus
var
    a : longint;    // Angka yang akan dipangkatkan
    b : longint;    // Pangkat

// Algoritma
begin
    write('Masukan A : ');
    readln(a);
    write('Masukan B : ');
    readln(b);

    write(a, '^', b, ' = ', power(a,b));
end.
```
***
#### Penjelasan
Algoritma perpangkatan yang digunakan pada solusi soal ini adalah algoritma <i>Fast Exponentiation</i> dengan kompleksitas algoritma <i>O(log N)</i>.

[Back to menu](#daftar-isi)
***

### Bab 4 - <i>Array</i>
---
#### Problem 7
Tiga kerajaan Wei, Wu ,dan Shu sedang membuat perjanjian untuk membagikan kekayaan yang mereka miliki untuk kerajaan kecil lain. Namun, agar tidak rugi, mereka hanya membagikan kekayaan yang mereka semua miliki. Untuk itu mereka membutuhkan program yang dapat menentukan mana saja kekayaan yang tiga negara tersebut miliki

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kekayaan negara Wei : **3**

Masukkan kekayaan negara Wei :

**Emas**

**Perak**

**Berlian**

Masukkan jumlah kekayaan negara Wu : **2**

Masukkan kekayaan negara Wu :

**Emas**

**Tank**

**Perak**

Masukkan jumlah kekayaan negara Shu : **4**

Masukkan kekayaan negara Shu :

**Emas**

**Perak**

**Tank**

**Nuklir**

Ketiga negara tersebut harus membagikan :

Emas

Perak
***
***
Masukkan jumlah kekayaan negara Wei : **3**

Masukkan kekayaan negara Wei :

**Emas**

**Nuklir**

**Ternak**

Masukkan jumlah kekayaan negara Wu : **4**

Masukkan kekayaan negara Wu :

**Perak**

**Tank**

**Berlian**

**Permata**

Masukkan jumlah kekayaan negara Shu : **4**

Masukkan kekayaan negara Shu :

**Perunggu**

**Raksa**

**Berlian**

**Ternak**

Ketiga negara tersebut tidak memiliki kekayaan yang sama
***
#### Source Code
```pascal
// Tipe data bentukan Kingdom
type Kingdom = record
    name : string;                      // Nama kerajaan
    resourcesAmount : integer;          // Jumlah kekayaan
    resourcesList : array of string;    // List kekayaan
end;

var
    kingdomList : array of Kingdom;                 // List of kingdom
    kingdomListSize : integer;                      // Ukuran kingdomList
    similarResources : array[1..1000] of string;    // List kekayaan yang sama
    resourceIdx : integer;                          // Temp index, untuk index similarResources
    i, j, k : integer;                              // Variabel iterasi

begin

    // Inisialisasi nama tiap kerajaan
    kingdomListSize := 3;
    setLength(kingdomList, kingdomListSize);
    kingdomList[0].name := 'Wei';
    kingdomList[1].name := 'Wu';
    kingdomList[2].name := 'Shu';

    // Input data kekayaan masing-masing kerajaan
    for i := 0 to kingdomListSize-1 do begin
        write('Masukkan jumlah kekayaan negara ', kingdomList[i].name, ' : ');
        readln(kingdomList[i].resourcesAmount);
        setLength(kingdomList[i].resourcesList, kingdomList[i].resourcesAmount);

        writeln('Masukkan kekayaan negara ', kingdomList[i].name, ' :');
        for j := 0 to kingdomList[i].resourcesAmount-1 do begin
            readln(kingdomList[i].resourcesList[j]);
        end;
    end;

    // Mencari kekayaan yang sama pada ketiga kerajaan
    resourceIdx := 0;
    for i := 0 to kingdomList[0].resourcesAmount-1 do begin
        for j := 0 to kingdomList[1].resourcesAmount-1 do begin
            for k := 0 to kingdomList[2].resourcesAmount-1 do begin
                if (
                    (kingdomList[0].resourcesList[i] = kingdomList[1].resourcesList[j]) and
                    (kingdomList[1].resourcesList[j] = kingdomList[2].resourcesList[k])
                ) then begin
                    resourceIdx := resourceIdx + 1;
                    similarResources[resourceIdx] := kingdomList[0].resourcesList[i];
                end;
            end;
        end;
    end;

    if (resourceIdx = 0) then writeln('Ketiga negara tersebut tidak memiliki kekayaan yang sama')
    else begin
        writeln('Ketiga negara tersebut harus membagikan :');
        for i := 1 to resourceIdx do
            writeln(similarResources[i]);
    end;

end.
```
***
#### Penjelasan
Solusi dari soal ini menggunakan paradigma <i>Brute Force</i> yang mengiterasi seluruh kekayaan tiap kerajaan, dan mencocokan setiap kekayaan dengan kekayaan lainnya. Kompleksitas algoritma ini adalah <i>O(N^3)</i>.

[Back to menu](#daftar-isi)
***

### Bab 5 - Matriks dan File Eksternal
---
#### Problem 6
Pearl sedang belajar matriks di sekolahnya. Hari ini, Ibu Puff menerangkan mengenai *orthogonal matrix*. *Orthogonal matrix* merupakan suatu jenis matriks persegi `A` yang memenuhi sifat `A`x`(A^t)` = `I`, dimana `(A^t)` merupakan matriks transpose dari `A`, dan `I` adalah matriks identitas. Ibu Puff memberikan PR kepada murid-muridnya untuk menentukan apakah suatu matriks adalah *orthogonal matrix* atau bukan. Pearl meminta Anda sebagai *programmer* kepercayaan keluarga Krab untuk membantunya menyelesaikan permasalahan tersebut.

**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Jika matriks merupakan *orthogonal matrix*, maka dituliskan **Yes** pada layar. Sebaliknya, jika bukan *orthogonal matrix*, maka dituliskan **No**. 

**Contoh**

- matriks.txt

```
3
1 0 0
0 1 0
0 0 1
```

- *runtime program*

```
matriks loaded!
Yes
```
***

#### Source Code
```pascal
uses sysutils;

// Deklarasi tipe data matrix
type
    matrix = array of array of integer;

// Prosedur untuk membaca data file
// dan mengembalikan matriks
procedure parseFile(var data : TextFile; var n : integer; var output : matrix);
var
    s : string;     // String temporary, untuk membaca tiap line pada file
    i, j : integer; // Variabel iterasi
begin
    readln(data, s);
    n := StrToInt(s);

    setLength(output, n, n);
    i := 0;
    while not eof(data) do begin
        readln(data, s);
        j := 1;
        while(j < (2*n)) do begin
            output[i, j div 2] := StrToInt(s[j]);
            j := j+2;
        end;
        i := i+1;
    end;

    writeln('matriks loaded!');
end;

// Fungsi yang mengembalikan matriks identitas
// berukuran n x n
function identity(n : integer) : matrix;
var
    res : matrix;   // Matriks hasil
    i, j : integer; // Variabel iterasi
begin
    setLength(res, n, n);
    for i := 0 to n-1 do
        for j := 0 to n-1 do
            if (i = j) then res[i,j] := 1
            else res[i,j] := 0;
    identity := res;
end;

// Fungsi untuk mengembalikan matrix transpose
// dari sebuah matrix masukan
function transpose(data : matrix; n : integer) : matrix;
var
    output : matrix;    // Matriks hasil
    i, j : integer;     // Variabel iterasi
begin
    setLength(output, n, n);
    for i := 0 to n-1 do begin
        for j := 0 to n-1 do begin
            output[i,j] := data[j,i];
        end;
    end;

    transpose := output;
end;

// Fungsi yang mengembalikan dot product
// dari dua buah matriks
function dotProduct(matA, matB : matrix; n : integer) : matrix;
var
    res : matrix;       // Matriks hasil
    sum : integer;      // Jumlah per elemen
    i, j, k : integer;  // Variabel iterasi
begin
    setLength(res, n, n);
    sum := 0;
    for i := 0 to n-1 do begin
        for j := 0 to n-1 do begin
            for k := 0 to n-1 do
                sum := sum + matA[i,k] * matB[k,j];
            res[i,j] := sum;
            sum := 0;
        end;
    end;

    dotProduct := res;
end;

// Fungsi untuk mengecek apakah suatu matrix orthogonal
// Fungsi mengembalikan boolean
function isOrthogonal(data : matrix; n : integer) : boolean;
var
    transposeMatrix : matrix;   // Matriks transpose
    productMatrix : matrix;     // Matriks hasil dot product
    identityMatrix : matrix;    // Matriks identitas
    res : boolean;              // Hasil (orthogonal / tidak)
    i, j : integer;             // Variabel iterasi
begin
    setLength(transposeMatrix, n, n);
    transposeMatrix := transpose(data, n);
    productMatrix := dotProduct(transposeMatrix, data, n);
    identityMatrix := identity(n);
    
    // Jika matriks dot product antara matriks asal
    // dengan matriks transpose-nya sama dengan
    // matriks identitas, maka matriks asal adalah
    // matriks orthogonal
    res := true;
    for i := 0 to n-1 do
        for j := 0 to n-1 do
            if (productMatrix[i,j] <> identityMatrix[i,j])
                then res := false;

    isOrthogonal := res;

end;

// Program utama
// Kamus
var
    data : TextFile;
    n : integer;
    matrixInput : matrix;
    res : boolean;

// Algoritma
begin
    assign(data, 'matriks.txt');
    reset(data);
    parseFile(data, n, matrixInput);
    close(data);

    res := isOrthogonal(matrixInput, n);
    if res then writeln('Yes')
    else writeln('No');
end.
```
***
#### Penjelasan
Untuk mengecek apakah sebuah matrix <i>N x N orthogonal</i> atau bukan, digunakan algoritma berikut:
- Buatlah matrix *transpose* dari matrix masukan.
- Buatlah matrix baru yang merupakah hasil *dot product* antara matrix *transpose* dengan matrix masukan, sebutlah itu matrix *P*.
- Buatlah matrix identitas berukuran N, sebutlah matrix *I*.
- Cek apakah matrix *P* dengan matrix *I* sama.
- Jika sama, matrix masukan adalah matrix *orthogonal*.

[Back to menu](#daftar-isi)
***

## Author

Ahmad Fahmi Pratama <br>
Informatics Engineering at Institut Teknologi Bandung <br>
Visit my page [here](http://ahmadfahmi.me) <br>
