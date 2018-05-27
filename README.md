# Seleksi 1 Asisten LabPro 2018
-----------------------------------

Dibuat oleh : Christian Kevin Saputra - 13516073

-----------------------------------
# Bab 1 Problem 05

-Deskripsi persoalan: 
  ### Problem 5

  Tuan Vin diminta oleh dosennya untuk mencatat nilai ujian dalam indeks A-E, sementara nilai yang disediakan dalam bentuk 0-100. Berikut adalah konversina:


  - 81 - 100: A
  - 61 - 80: B
  - 41 - 60: C
  - 21 - 40: D
  - 0 - 20: E


  Karena banyak nilai yang harus dicatat, Tuan Vin meminta bantuan Anda untuk memudahkan merubah nilai.


  **Format Input & Output (input di-*bold*)**
  ***
  Masukan Nama : **Kevin**

  Masukan Nilai : **88**

  Kevin mendapat nilai A
  ***
  Masukan Nama : **Albert**

  Masukan Nilai : **63**

  Albert mendapat nilai B
  ***

-Source Code:
  ```
  Program Percabangan;

  var
    nama : string;
    nilai : integer;
    grade: char;
      
  Begin
    write('Masukkan nama: ');
    readln(nama);

    write('Masukkan nilai: ');
    readln(nilai);

    if (nilai >= 81) then
      grade:='A'
    else if (nilai >= 61) and (nilai < 81) then
      grade:='B'
    else if (nilai >= 41) and (nilai < 61) then
      grade:='C'
    else if (nilai >= 21) and (nilai < 41) then
      grade:='D'
    else
      grade:='E';

    writeln(nama, ' mendapat nilai ', grade);
  end.
  ```
-Penjelasan Solusi:
  Solusi untuk persoalan ini adalah dengan menggunakan if dan else untuk semua kondisi pada penjelasan soal.

-----------------------------------
# Bab 2 Problem 04

-Deskrpsi Persoalan:
### Problem 4


Seorang asisten diminta untuk menghitung jumlah mahasiswa yang lulus dan yang tidak lulus. Seorang mahasiswa dianggap lulus jika nilainya **lebih besar** atau **sama dengan 60**. Karena malas, asisten tersebut meminta anda untuk membuat program untuk membantunya. 


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Banyak mahasiswa :4 
Nilai anak ke-1 :50 
Nilai anak ke-2 :90  
Nilai anak ke-3 :55 
Nilai anak ke-4 :90 
Total mahasiswa yang lulus adalah 2  
Total mahasiswa yang tidak lulus adalah 2  
```
```
Banyak mahasiswa :2
Nilai anak ke-1 :76
Nilai anak ke-2 :100 
Total mahasiswa yang lulus = 2  
Total mahasiswa yang tidak lulus = 0  
```

-Source Code:
  ```
  Program Pengulangan;

  var
    n, i, nilai, lulus, tidaklulus:integer;

  Begin
    write('Banyak mahasiswa: ');
    readln(n);
    lulus:=0;
    tidaklulus:=0;
    for i:= 1 to n do
    Begin
      write('Nilai anak ke -',i,' :');
      readln(nilai);
      if (nilai >= 60) then
      Begin
        lulus := lulus + 1;
      end else
      Begin
        tidaklulus := tidaklulus + 1;
      end;
    end;
    writeln('Total mahasiswa yang lulus adalah ',lulus);
    writeln('Total mahasiswa yang tidak lulus adalah ',tidaklulus);
  end.
  ```
-Penjelasan Solusi:
 Solusi dari persoalan ini adalah dengan melakukan loop(pengulangan) sebanyak jumlah mahasiswa. Di dalam loop tersebut, didapatkan nilai dan ditentukan jumlah siswa yang lulus dan tidak lulus.

-----------------------------------
# Bab 3 Problem 03

-Deskripsi Persoalan:
  ### Problem 3

Bilangan komposit adalah bilangan yang memiliki minimal satu bilangan lain yang dapat habis membagi bilangan tersebut selain 1 dan bilangan itu sendiri. Buatlah program yang menentukan semua bilangan komposit diantara dua buah bilangan A dan B (0  ≤ A, B ≤ 100000) inklusif.
Catatan : Buatlah fungsi yang memeriksa apakah sebuah bilangan adalah bilangan komposit atau bukan.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai A : **0**

Masukkan nilai B : **10**

Bilangan komposit diantara 0 sampai 10 adalah:

4

6

8

9
***
Masukkan nilai A : **25**

Masukkan nilai B : **10**

Bilangan komposit diantara 10 sampai 25 adalah:

12

14

15

16

18

20

21

22

24

25
***

-Source Code:
  ```
  Program FungsiDanProsedur;

  function isComposite(n : integer):boolean;
  var
    i:integer;
  Begin
    isComposite:=false;
    if(n<=3) then
      isComposite := false
    else
      if (n mod 2 = 0) or (n mod 3 = 0) then
        isComposite := true;

    i:=5;
    while (i*i <= n) and (not(isComposite)) do
    Begin
      if(n mod i = 0) or (n mod (i+2)= 0) then
        isComposite := true
      else
        i:=i+6;
    end;
    
  end;

  procedure swap(var a,b:integer);
  var //local var
    temp:integer;
  begin
    temp:=a;
    a:=b;
    b:=temp;
  end;

  {main program}
  var 
    a,b,i :integer;

  begin
    write('Masukkan nilai A:');
    readln(a);
    write('Masukkan nilai B:');
    readln(b);

    if (a>b) then
      swap(a,b);

    
    for i:=a to b do
    begin
      if (isComposite(i)) then
        writeln(i)
    end;
  end.
  ```
-Penjelasan Solusi:
  Solusi untuk menyelesaikan soal ini adalah dengan membuat sebuah fungsi untuk menentukan apakah suatu bilangan merupakan bilangan komposit atau bukan. Setelah terdapat fungsi tersebut, maka program akan mengeluarkan seluruh bilangan yang merupakan bilangan komposit.

-----------------------------------
# Bab 4 Problem 01

-Deskripsi Soal:
### Problem 1
Budi mengelola sebuah toko kelontong. Setiap hari ia harus mencatat seluruh barang yang ada di tokonya dan mencatat penjualan dari barang tersebut. Karena ia mudah lupa, ia membutuhkan program untuk mencatat daftar belanja tersebut. Buatlah program untuk mencatat inventaris dan penjualan toko milik budi

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah barang : **4**

Masukkan nama barang : **kecap**

Masukkan nama barang : **mie**

Masukkan nama barang : **gula**

Masukkan nama barang : **telur**

1. Jual
2. Lihat stok

Pilihan menu : **1**

Masukkan nama barang : **kecap**

Barang berhasil dijual

1. Jual
2. Lihat stok

Pilihan menu : **2**

Stok toko : mie, gula, telur

1. Jual
2. Lihat stok

Pilihan menu : **1**

Masukkan nama barang : **minyak**

Barang tidak ada

1. Jual
2. Lihat stok

Pilihan menu : **1**

Masukkan nama barang : **mie**

Barang berhasil dijual

1. Jual
2. Lihat stok

Pilihan menu : **1**

Masukkan nama barang : **gula**

Barang berhasil dijual

1. Jual
2. Lihat stok

Pilihan menu : **1**

Masukkan nama barang : **telur**

Barang berhasil dijual

Barang sudah habis, silahkan melakukan restok barang
***

-Source Code:
```
  Program Bab4_Array;

  var
    stok , temp: array of string;
    jumlah,i,j,k,pilihan :integer;
    found: boolean;
    namabarang :string;

  {Algoritma}
  Begin
    write('Masukkan jumlah barang: ');
    readln(jumlah);
    SetLength(stok, jumlah);
    for i:=0 to jumlah-1 do
    Begin
      write('Masukkan nama barang: ');
      readln(stok[i]);
    end;
    while length(stok) <> 0 do
    Begin
      writeln();
      writeln('1.Jual');
      writeln('2.Lihat stok');
      writeln();
      write('Pilihan menu: ');
      readln(pilihan);
      while (pilihan < 1) or (pilihan > 2) do
      Begin
        writeln('Pilihan menu salah. Silahkan ulangi');
        write('Pilihan menu: ');
        readln(pilihan);
      end;
      j:=0;
      if (pilihan = 1) then
      Begin
        found:=false;
        write('Masukkan nama barang:');
        readln(namabarang);
        while (j <= length(stok) - 1) and (not(found)) do
        Begin
          if (stok[j] = namabarang) then
          Begin
            stok[j] := 'null';
            found:=true;
            //mengurangi elemen di dalam array
            SetLength(temp, length(stok)-1);
            k:=0;
            for i:=0 to length(stok) - 1 do
            Begin
              if (i <> j) then
              Begin
                temp[k] := stok[i];
                k:= k + 1;
              end;
            end;    
            stok:=Copy(temp,0,length(temp));    
          end else
            j := j + 1;
        end;

        if (not(found)) then
          writeln('Barang tidak ada')
        else
          writeln('Barang berhasil dijual');
      end else
      Begin
        write ('Stok toko: ');
        while (j < length(stok)-1) do
        Begin
          if(stok[j] = 'null') then
            j:= j + 1
          else
            write(stok[j],', ');
            j:= j+1;
        end;
        if(stok[j] <> 'null') then
        Begin
          writeln(stok[j]);
          j:= j+1;
        end;
      end;
    end;
    writeln('Barang sudah habis, silahkan melakukan restok barang');
  end.
```
-Penjelasan solusi:
  Solusi untuk persoalan ini adalah dengan menyimpan seluruh barang ke dalam array. Saat akan menjual, program akan mengecek apakah nama barang yang akan dijual terdapat di dalam array atau tidak. Jika ada, maka barang tersebut akan dikeluarkan dari array dan mengurangi jumlah barang yang berada di dalam array. Apabila tidak terdapat barang dengan nama tersebut, program akan mengeluarkan pesan error dan kembali ke dalam menu pilihan. Program akan berhenti setelah seluruh barang terjual ( tidak terdapat barang lagi di dalam array ).

-----------------------------------
# Bab 5 Problem 12

### Problem 12

Tuan Krab ingin memperluas pasar untuk Krabi Pati. Kali ini dia berencana membangun Krasti Krab di pegunungan. Untuk Krasti Krab yang baru ini, dia ingin agar bangunannya berbentuk **persegi**. Namun, tanah yang tersedia di pegunungan tidaklah rata. Untuk menghemat anggaran, Tuan Krab hanya akan membangun pada bidang tanah yang rata saja (memiliki ketinggian sama). Kontur tanah di pegunungan direpresentasikan dalam *square matrix* berukuran `N`x`N` dimana nilai setiap elemennya menggambarkan ketinggian tanah di tempat tersebut. Tuan Krab meminta bantuan Anda untuk dapat menentukan luas maksimum dari Krasti Krab yang dapat dibangun.

**Format *Input* dan *Output***
*Input* berupa matriks kontur tanah disimpan dalam file eksternal `contour.txt`. Dalam file ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` bilangan bulat yang masing-masing mewakili ketinggian tanah pada posisi tersebut. 
*Output* berupa informasi luas maksimum Krasti Krab yang dapat dibangun pada lokasi tersebut.

**Contoh**

- contour.txt

```
4
1 1 1 8
1 1 1 6
1 1 1 3
2 2 2 2
```

- *runtime program*
```
file loaded!
Luas maksimum Krasti Krab yang dapat dibangun adalah 9
```

-Source Code:
  ```
  Program Matriks_FileEksternal;

  function Min ( a ,b, c: integer) : integer;
  Begin
    if (a <= b) then
    Begin
      if (a <= c) then
      Begin
        Min:=a;
      end else
      Begin
        Min:=c;
      end;
    end else
    Begin
      if (b <= c) then
      Begin
        Min:=b;
      end else
      Begin
        Min:=c;
      end;
    end;
  end;

  function Max (a,b : integer) : integer;
  Begin
    if (a >= b) then
    Begin
      Max:=a;
    end else
    Begin
      Max:=b;
    end;
  end;

  {Main program}
  var
    inputfile: TextFile;
    size,i,j, maxSize: integer;
    contour : array of array of integer;
    squareSize : array of array of integer;
  Begin
    //read file
    assign(inputfile, 'contour.txt');
    reset (inputfile);
    readln(inputfile, size);
    SetLength(contour, size, size);
    SetLength(squareSize, size, size);
    for i:=0 to size-1 do
    Begin
      for j:=0 to size-1 do
      Begin
        read(inputfile, contour[i][j]);
      end;
    end;
    close(inputfile);
    writeln('File loaded!');
    
    //proses
    maxSize := 1;
    for i:=0 to size-1 do
    Begin
      for j:=0 to size-1 do
      Begin
        if (i = 0) or (j = 0) then //baris paling atas dan kolom paling kiri tidak dapat membentuk persegi dikarenakan posisi (i,j) yang berada di titik paling kanan bawah persegi.
        Begin
          squareSize[i][j]:= 1;
        end else
        Begin
          if (contour[i][j] = contour[i][j-1]) and (contour[i][j] = contour[i-1][j]) and (contour[i][j] = contour[i-1][j-1]) then
          Begin
            squareSize[i][j]:= Min(squareSize[i][j-1] , squareSize[i-1][j], squareSize[i-1][j-1]) + 1;
          end else
          Begin
            squareSize[i][j]:=1;
          end;
          maxSize:=Max(maxSize, squareSize[i][j]); //mencari size terbesar
        end;
      end;
    end;
    writeln('Luas maksimum Krasti Krab yang dapat dibangun adalah ',maxSize*maxSize);
  end.
  ```

-Deskripsi Solusi:
  Program membaca matrix dari file 'contour.txt'. Matrix kemudian diproses untuk menentukan luas maksimum persegi terbesar yang dapat dibuat.
  Proses yang dilakukan untuk mencari maksimum persegi terbesar adalah dengan dynamic programming dimana terdapat sebuah matrix lain yang menyimpan nilai sisi persegi terbesar yang dapat dibuat (nilai N terbesar pada persegi N x N yang terbentuk) . Nilai N tersebut disimpan di dalam cell (i,j) dengan posisi (i,j) adalah titik paling kanan bawah pada persegi yang terbentuk. Setelah didapatkan nilai N terbesar, program akan mengeluarkan output luas yang didapatkan dari N x N.

