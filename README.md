# Seleksi 1 Asisten LabPro 2018

oleh Teresa - 13516133

-----------------------------------

## Bab 1 - Percabangan

### Problem 6

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

---------------------------------

### Solusi

```

//Nama file: 1-Problem06.cpp

#include <iostream>
using namespace std;

int main () {
    // KAMUS
    int sewapokok, waktusewa, dendasewa, lamasewa, hargatotal;
    // Memasukkan harga sewa pokok, batas waktu sewa, tambahan harga sewa, dan lama Tuan Vin meminjam
    // Asumsi inputan valid, yaitu tidak nol dan tidak negatif
    cout << "Masukan harga sewa pokok: ";
    cin >> sewapokok;
    cout << "Masukan batas waktu sewa: ";
    cin >> waktusewa;
    cout << "Masukan tambahan harga sewa: ";
    cin >> dendasewa;
    cout << "Masukan lama Tuan Vin meminjam: ";
    cin >> lamasewa;
    // Hitung harga yang harus dibayar
    if (lamasewa > waktusewa) {
        hargatotal = sewapokok*waktusewa + (lamasewa-waktusewa)*(sewapokok+dendasewa);
    } else {
        hargatotal = sewapokok*lamasewa;
    }
    // Tampilkan harga yang harus dibayar
    cout << "Harga sewa yang harus dibayar Tuan Vin adalah: " << hargatotal << endl;
    return 0;
}
```

### Penjelasan

Setelah menerima input berupa harga sewa pokok, batas waktu sewa, tambahan harga sewa, dan lama Tuan Vin meminjam, akan dilakukan percabangan tergantung dari lama Tuan Vin meminjam. Apabila Tuan Vin meminjam dengan waktu lebih lama dari batas sewa, maka harga yang harus dibayar Tuan Vin adalah harga sewa pokok selama waktu batas peminjaman dan harga sewa pokok yang telah ditambah denda selama kelebihan waktu tersebut. Bila Tuan Vin meminjam selama masih dalam batas waktu sewa, maka harga yang dibayar cukup harga sewa pokok selama waktu peminjamannya saja.

---------------------------------

## Bab 2 - Pengulangan

### Problem 5

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
---------------------------------

### Solusi

```

// Nama file: 2-Problem05.cpp
#include <iostream>
using namespace std;

int main () {
    // Kamus, asumsi jumlah anggota kelomopok < 999 dan tidak negatif
    int jlhkelompok, anggotakelompok, minanggota = 999, nokelompok;
    // Masukkan jumlah kelompok
    cout << "Masukan jumlah kelompok :";
    cin >> jlhkelompok;
    // Looping, menentukan jumlah anggota minimum seiring dengan dimasukkannya input pengguna
    for (int i = 1; i <= jlhkelompok; i++) {
        cout << "Masukan jumlah anggota kelompok " << i << " :";
        cin >> anggotakelompok;
        if (anggotakelompok < minanggota) {
            nokelompok = i;
            minanggota = anggotakelompok;
        }
    }
    // Tampilkan kelompok dengan jumlah anggota minimum
    cout << "Kelompok dengan anggota tersedikit adalah kelompok " << nokelompok << endl;
    return 0;
}

```

### Penjelasan

Setelah menerima input berupa jumlah kelompok, akan dilakukan looping sebanyak jumlah kelompok untuk menerima jumlah anggota setiap kelompok. Setiap menerima jumlah anggota kelompok akan dilakukan pengecekan apakah jumlah anggota kelompok tersebut lebih kecil dari jumlah anggota kelompok minimum sebelumnya, bila iya nilai tersebut menjadi jumlah anggota saat itu.


-----------------------

## Bab 3 - Fungsi dan Prosedur

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

### Solusi

```

//  Nama file: 3-Problem03.cpp
#include <iostream>
using namespace std;

bool is_composite(int n);

int main () {
    // Kamus
    int A, B, min, max;
    // Menerima inputan
    cout << "Masukkan nilai A : ";
    cin >> A;
    cout << "Masukkan nilai B : ";
    cin >> B;
    // Mencari maximum dan minimum
    if (A > B) {
        max = A;
        min = B;
    } else {
        min = A;
        max = B;
    }
    // Menampilkan bilangan komposit
    cout << "Bilangan komposit diantara " << min << " sampai " << max << " adalah :" << endl;
    for (int i = min+1; i < max; i++) {
        if (is_composite(i)) {
            cout << i << endl;
        }
    }
    return 0;
}

// Fungsi bilangan komposit
bool is_composite(int n) {
    if (n <= 1) {
        return false;
    }
    else if (n <= 3) {
        return false;
    } else if ((n % 2 == 0)||(n % 3 == 0)) {
        return true;
    }
    int i = 5;
    while (i*i <= n) {
        if ((n % i == 0)||(n % (i+2) == 0)) {
            return true;
        }
        i += 6;
    }
    return false;
}

```

### Penjelasan

Pada program ini terdapat fungsi is_composite, yaitu fungsi yang menentukan apakah bilangan tersebut komposit atau tidak. Definisi bilangan komposit adalah bilangan yang memiliki minimal satu bilangan lain yang dapat habis membagi bilangan tersebut selain 1 dan bilangan itu sendiri, sehingga 1 tidak termasuk komposit. 

Program menerima input berupa dua bilangan yaitu A dan B, setelah menerima input akan ditentukan mana bilangan yang paling kecil dan paling besar. Setelah itu program akan melakukan looping dengan batas bilangan A dan B inklusif dengan integer i, dimana pada setiap looping akan menampilkan bilangan i tersebut bila merupakan bilangan kompisit.

------------------

## Bab 4 - *Array*

### Problem 2

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

### Solusi

```

// Nama file: 4-Problem02.cpp
#include <iostream>
#include <string>
using namespace std;

int main () {
    // Kamus
    int jlhwarna, jlhbarang;
    string *arrwarna, *arrbarang;
    // Masukkan warna
    cout << "Masukkan jumlah warna : ";
    cin >> jlhwarna;
    arrwarna = new string[jlhwarna];
    cout << "Masukkan nama warna : ";
    for (int i = 0; i < jlhwarna; i++) {
        cin >> arrwarna[i];
    }
    // Masukkan barang
    cout << "Masukkan jumlah barang : ";
    cin >> jlhbarang;
    arrbarang = new string[jlhbarang];
    cout << "Masukkan nama barang : ";
    for (int i = 0; i < jlhbarang; i++) {
        cin >> arrbarang[i];
    }
    // Menampilkan barang dengan warnanya
    cout << "Ide barang selanjutnya :" << endl;
    for (int i = 0; i < jlhbarang; i++) {
        for (int j = 0; j < jlhwarna; j++) {
            cout << arrbarang[i] << " " << arrwarna[j] << endl;
        }
    }
    return 0;
}

```

### Penjelasan

Program menerima jumlah warna, lalu melakukan looping sesuai jumlah warna untuk menerima warna-warna yang diinginkan dan memasukkannya dalam array warna. Setelah itu Program menerima jumlah barang, lalu melakukan looping sesuai jumlah barang untuk menerima barang-barang yang diinginkan dan memasukkannya dalam array barang. Selanjutnya program akan menampilkan pasangan barang dan warna yang memungkinkan dalam looping sebanyak jumlah warna di dalam looping sesuai jumlah barang.

-----------------

## Bab 5 - Matriks dan File Eksternal

### Problem 1
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

### Solusi
```

```

### Penjelasan



-----------------------------------