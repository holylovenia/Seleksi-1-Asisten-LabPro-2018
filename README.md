# Seleksi 1 Asisten LabPro 2018
-----------------------------------
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

# Daftar Isi

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 1](#problem-1-3)
  - [Problem 2](#problem-2-3)
  - [Problem 3](#problem-3-3)
  - [Problem 4](#problem-4-3)
  - [Problem 5](#problem-5-3)
  - [Problem 6](#problem-6-3)
  - [Problem 7](#problem-7-3)
  - [Problem 8](#problem-8-3)
  - [Problem 9](#problem-9-3)
  - [Problem 10](#problem-10-3)
  - [Problem 11](#problem-11-3)
  - [Problem 12](#problem-12-3)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 1](#problem-1-4)
  - [Problem 2](#problem-2-4)
  - [Problem 3](#problem-3-4)
  - [Problem 4](#problem-4-4)
  - [Problem 5](#problem-5-4)
  - [Problem 6](#problem-6-4)
  - [Problem 7](#problem-7-4)
  - [Problem 8](#problem-8-4)
  - [Problem 9](#problem-9-4)
  - [Problem 10](#problem-10-4)
  - [Problem 11](#problem-11-4)
  - [Problem 12](#problem-12-4)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## Bab 1 - Percabangan
### Problem 8

Diketahui ada 5 jenis mineral (A, B, C, D, E) dan bahan-bahan makanan berikut mengandung mineral berikut:


- ikan: A, C
- daging: B, C, D
- sayur: D, E
- buah: B


Tuan Vin akan memakan 2 dari 4 jenis makanan tersebut (bisa sama), tetapi Tuan Vin takut kekurangan mineral. Tuan Vin meminta bantuan Anda untuk mengetahui mineral apa yang dia tidak dapatkan.


**Format Input & Output (input di-*bold*)**
***
Masukan makanan 1: **ikan**

Masukan makanan 2: **sayur**

Mineral B tidak didapatkan Tuan Vin
***
Masukan makanan 1: **buah**

Masukan makanan 2: **ikan**

Mineral D E tidak didapatkan Tuan Vin
***
Masukan makanan 1: **sayur**

Masukan makanan 2: **sayur**

Mineral A B C tidak didapatkan Tuan Vin
***

### Solusi

Persoalan ini dapat diselesaikan dengan menggunakan percabangan. Untuk itu diperlukan sebuah variabel yang menyimpan keadaan vitamin A, B, C, D, E dari pengguna (dengan nilai awal `false`). Untuk setiap masukan makanan, akan di cek tipenya lalu nilai dari vitamin yang bersangkutan akan diperbaharui.

```cpp
#include <iostream>

bool eatFood(std::string input, bool &A, bool &B, bool &C, bool &D, bool &E);
void printResult(bool &A, bool &B, bool &C, bool &D, bool &E);

int main() {
    bool A = false, B = false, C = false, D = false, E = false;
    int i = 0;
    while (i < 2) {
        std::string foodInput;
        std::cout << "Masukan makanan " << i + 1 << ": ";
        std::cin >> foodInput;
        if (eatFood(foodInput, A, B, C, D, E)) {
            i++;
        }
    }
    printResult(A, B, C, D, E);
}

bool eatFood(std::string input, bool &A, bool &B, bool &C, bool &D, bool &E) {
    if (input == "ikan") {
        A = true;
        C = true;
        return true;
    }
    else if (input == "daging") {
        B = true;
        C = true;
        D = true;
        return true;
    }
    else if (input == "sayur") {
        D = true;
        E = true;
        return true;
    }
    else if (input == "buah") {
        B = true;
        return true;
    }
    else {
        std::cout << "Makanan tidak sesuai" << std::endl;
        return false;
    }
}

void printResult(bool &A, bool &B, bool &C, bool &D, bool &E) {
    std::cout << "Mineral ";
    if (!A) {
        std::cout << "A ";
    }
    if (!B) {
        std::cout << "B ";
    }
    if (!C) {
        std::cout << "C ";
    }
    if (!D) {
        std::cout << "D ";
    }
    if (!E) {
        std::cout << "E ";
    }
    std::cout << "tidak didapatkan Tuan Vin" << std::endl;
}
```


## Bab 2 - Pengulangan
### Problem 7


Karena cinta dengan pertambahan, maka seorang mahasiswa ingin membuat sebuah tanda tambah yang besar dengan ukuran **N**. Bantulah ia menggambar tanda tambah tersebut


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukkan N :4  
    |
    |
    |
    |
----+----
    |
    |
    |
    | 
```
### Solusi
Dari gambar dapat dilihat bahwa untuk ukuran sebesar `N = 4`, akan dibuat sebuah bentuk dengan `lebar = 9` dan `tinggi = 9`. Maka hubungan antar ukuran dan lebar/tinggi adalah `lebar/tinggi = N * 2 + 1`. Pada persoalan dapat dilihat juga bahwa bentuk `|`, `-` hanya digambarkan ketika kursor berada di tengah (baik vertikal maupun horizontal). Maka dari itu pada program kedua simbol tersebut hanya akan digambarkan ketika nilai `iterator horizontal/vertikal = N` dengan perhitungan dimulai dari `0`. Untuk bentuk `+`, bentuk ini hanya digambar ketika kursor berada di tengah, yang terjadi ketika nilai `iterator horizontal dan vertikal = N`.
```cpp
#include <iostream>

int main() {
    int N;
    std::cout << "Masukan N :";
    std::cin >> N;
    for (int i = 0; i <= N * 2; i++) {
        for (int j = 0; j <= N * 2; j++) {
            if (i == N) {
                if (j == N)
                    std::cout << "+";
                else 
                    std::cout << "-";
            }
            else {
                if (j == N)
                    std::cout << "|";
                else
                    std::cout << " ";
            }
        }
        std::cout << std::endl;
    }
}
```

## Bab 3 - Fungsi dan Prosedur
### Problem 6

Menjelang akhir bulan ini, semua mahasiswa melakukan penghematan untuk biaya makan. Seorang mahasiswa memiliki akal untuk tidak hanya menghemat uang tetapi juga menghemat energi yang dia keluarkan.Ia mengetahui posisi seluruh penjual makanan yang harganya relatif sama dan ia berpikir bahwa ia dapat menghemat energi dengan pergi ke penjual paling dekat. Namun, ia terlalu malas untuk menentukan penjual paling dekat darinya (karena berpikir juga pakai energi).Bantulah mahasiswa tersebut menentukan penjual yang akan dikunjungi.Jika terdapat beberapa penjual dengan jarak sama, pilih yang mana saja.


**Format Input & Output (input di-*bold*)**
***
Masukan posisi mahasiswa

X : **0**

Y : **0**

Masukan banyak penjual: **3**

Masukan posisi penjual 1

X : **2**

Y : **2**

Masukan posisi penjual 2

X : **-2**

Y : **2**

Masukan posisi penjual 3

X : **1**

Y : **1**

Penjual terdekat adalah penjual 3.
***

### Solusi
Persoalan ini dapat diselesaikan tanpa menggunakan array. Caranya adalah setiap kali posisi penjual didapatkan. Jarak antar posisi mahasiswa dan posisi penjual itu akan dibandingkan dengan nilai jarak minimum yang ada. Jika memang itu adalah jarak minimum, posisi tersebut akan ditandai sebagai posisi minimum. Untuk nilai awal jarak minimum, digunakan library `<limits>` yang menyimpan nilai maksimum dari `double`.
```cpp
#include <iostream>
#include <cmath>
#include <limits>

struct Position {
    int x;
    int y;
};

void assignPosisi(Position & posisi);
void assignBanyakPenjual(int & banyakPenjual);
double getJarak(Position & asal, Position & tujuan);

int main() {
    Position posisiMahasiswa;
    double jarakMinimum = std::numeric_limits<double>::max();
    int banyakPenjual, penjualTerdekat = -1;
    std::cout << "Masukan posisi mahasiswa" << std::endl;
    assignPosisi(posisiMahasiswa);
    assignBanyakPenjual(banyakPenjual);
    for (int i = 0; i < banyakPenjual; i++) {
        Position posisiPenjual;
        std::cout << "Masukan posisi penjual " << i + 1 << std::endl;
        assignPosisi(posisiPenjual);
        double jarak = getJarak(posisiMahasiswa, posisiPenjual);
        if (jarak < jarakMinimum) {
            jarakMinimum = jarak;
            penjualTerdekat = i + 1;
        }
    }
    std::cout << "Penjual terdekat adalah penjual " << penjualTerdekat << std::endl;
}

void assignPosisi(Position & posisi) {
    std::cout << "X : ";
    std::cin >> posisi.x;
    std::cout << "Y : ";
    std::cin >> posisi.y;
}

void assignBanyakPenjual(int & banyakPenjual) {
    std::cout << "Masukan banyak penjual: ";
    std::cin >> banyakPenjual;
}

double getJarak(Position & asal, Position & tujuan) {
    return sqrt(pow(asal.x - tujuan.x, 2) + pow(asal.y - tujuan.y, 2));
}
```

## Bab 4 - *Array*
### Problem 5

Diberikan dua buah array A dan B. Array tersebut akan berisi angka-angka sebanyak N. Array akan lebih besar jika gabungan semua angkanya lebih besar dari gabungan angka dari array yang lain. Tentukan mana array yang lebih besar

**Format Input & Output (input di-*bold*)**
***
Masukkan N : **5**

Masukkan array A : **5 6 7 8 1**

Masukkan array B : **5 8 7 6 1**

Array A lebih kecil dari array B
***
***
Masukkan N : **4**

Masukkan array A : **1 2 3 4**

Masukkan array B : **1 2 3 4**

Array A sama besar dengan array B
***
***
Masukkan N : **6**

Masukkan array A : **1 2 3 4 7 6**

Masukkan array B : **1 2 3 4 7 1**

Array A lebih besar dari array B
***

*Catatan : angka pasti positif*

### Solusi
Pada persoalan ini, program hanya perlu mengiterasi dari awal ke akhir, dan membandingkan dari kedua array tersebut array mana yang memiliki elemen lebih kecil. Hal ini benar karena nilai ratusan lebih berpengaruh daripada puluhan atau satuan, dan seterusnya.
```cpp
#include <iostream>

void assignArrayValue(int N, int * data);
int smallerThan(int N, int * arrayA, int * arrayB);

int main() {
    int N;
    std::cout << "Masukkan N : ";
    std::cin >> N;
    int * arrayA = new int[N];
    int * arrayB = new int[N];
    std::cout << "Masukkan array A : ";
    assignArrayValue(N, arrayA);
    std::cout << "Masukkan array B : ";
    assignArrayValue(N, arrayB);
    switch (smallerThan(N, arrayA, arrayB)) {
        case -1 : 
            std::cout << "Array A lebih besar dari array B" << std::endl;
            break;
        case 0 :
            std::cout << "Array A sama besar dengan array B" << std::endl;
            break;
        case 1 :
            std::cout << "Array A lebih kecil dari array B" << std::endl;
            break;        
    }
}

void assignArrayValue(int N, int * data) {
    for (int i = 0; i < N; i++) {
        std::cin >> data[i];
    }
}

int smallerThan(int N, int * arrayA, int * arrayB) {
    for (int i = 0; i < N; i++) {
        if (arrayA[i] < arrayB[i])
            return 1;
        if (arrayA[i] > arrayB[i])
            return -1;
    }
    return 0;
}
```

-----------------
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
-----------------------------------


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
-----------------------------------


### Problem 3

Tuan Krab sedang bernostalgia dengan masa kecilnya. Dia mengajak Anda untuk bermain Tic-Tac-Toe. 
Bagi Anda yang belum pernah bermain Tic-Tac-Toe, tidak perlu khawatir! Tuan Krab dengan senang hati akan menjelaskannya. Pada permainan ini, setiap pemain akan mengisi suatu *cell matrix* dengan karakter tertentu. Besarnya matriks yang digunakan tergantung pada kesepakatan para pemain, namun harus berupa *square matrix*. Pada permainan ini, Anda menggunakan karakter `x` dan Tuan Krab menggunakan karakter `o`. Permainan akan dimenangkan oleh pemain yang berhasil membuat suatu diagonal, baris, atau kolom yang semua *cell*-nya berisi karakter yang sama.  
Sebagai *programmer* kepercayaan Tuan Krab, Anda diminta untuk menentukan siapakah pemain yang memenangkan permainan ini.
**Format *Input* dan *Output***
*Input* berupa file eksternal `result.txt` yang berisi informasi mengenai keadaan akhir permainan. Baris pertama berisi bilangan bulat positif `N`, merupakan ukuran matriks yang digunakan dalam permainan tersebut. `N` baris berikutnya berisi `N` buah karakter (tanpa dipisahkan spasi) yang merepresentasikan kondisi akhir dari matriks. Karakter yang digunakan adalah:
- `x` : karakter milik Tuan Krab
- `o` : karakter milik Anda
- `-` : *cell* belum terisi (kosong)


*Output* berupa pesan yang menginformasikan siapa pemenang dari permainan tersebut. Jika tidak ada pemenang, maka tuliskan `Tidak ada pemenang`.
**Contoh**
- result.txt
```
3
xoo
-xo
-xo
```
- *runtime program*
```
result loaded!
Pemenangnya adalah Anda
```
-----------------------------------


### Problem 4

Pearl, anak dari Tuan Krab, sedang belajar matriks di sekolah. Dia mendapatkan PR untuk menghitung nilai eksponen dari suatu *square matrix*. Eksponen dari suatu matriks didefinisikan sebagai operasi `N`^`E`, yang ekuivalen dengan perkalian `N`x`N`x`N`x ... x `N` sebanyak `E` kali. Sebagai contoh, `N`^3 ekuivalen dengan `N`x`N`x`N`. Guru dari Pearl mempunyai motto hidup "*practices make perfect*", sehingga beliau memberikan banyak sekali soal PR. Pearl pun meminta bantuan Anda untuk dapat menyelesaikan PR nya.
**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Pada saat *runtime*, program akan meminta *input* berupa bilangan bulat `E` yang merupakan pangkat dari matriks yang akan dihitung.
*Output* berupa file eksternal `result.txt` dengan format yang sama seperti file *input*. 
**Contoh**
(Elemen baris setelah tanda ":" pada *runtime* merupakan *input* dari  pengguna)
- matriks.txt
```
3
2 1 0
0 2 1
2 0 1
```

- *runtime program*

```
file loaded!
Masukkan pangkat: 3
result exported!
```

- result.txt

```
3
10 12 5
10 10 7
14 10 3
```




### Problem 5

Tuan Krab mempunyai diberikan teka-teki oleh Plankton. Dia diberikan suatu matriks, kemudian dia diminta untuk menentukan apakah matriks tersebut merupakan *magic square* atau bukan. 
*Magic square* merupakan suatu matriks persegi berukuran `N`x`N` dengan elemen yang berbeda-beda. Masing-masing elemen berada pada rentang dari 1 hingga `N`^2. Matriks tersebut dikatakan merupakan *magic square* jika penjumlahan elemen-elemen pada setiap kolom, baris, dan diagonal memiliki nilai yang sama.
Karena cukup kesulitan, Tuan Krab meminta bantuan Anda untuk menyelesaikan permasalahan tersebut.
**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Jika matriks merupakan *magic square*, maka dituliskan **Yes** pada layar. Sebaliknya, jika bukan *magic square*, maka dituliskan **No**. 
- matriks.txt

```
3
2   7   6
9   5   1
4   3   8
```

- *runtime program*

```
matriks loaded!
Yes
```

-----------------------------------



### Problem 6

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

-----------------------------------



### Problem 7

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



### Problem 8

Tuan Krab sedang iseng bermain catur di waktu luangnya. Namun, Tuan Krab ingin mencoba sebuah permainan catur baru. Pada permainan ini, dia hanya menggunakan sejumlah benteng (*rook*). Selain itu, ukuran papan catur adalah `N`x`N` dengan `N` adalah bilangan bulat positif. Tantangannya adalah mencari banyaknya benteng yang tidak saling menyerang dengan benteng lain yang ada pada permainan. Bantulah Tuan Krab untuk menyelesaikan permainan ini!

**Format *Input* dan *Output***
*Input* kondisi papan permainan diambil dari file eksternal `chess.txt`. Kondisi permainan digambarkan dengan matriks berukuran `N`x`N`. Jika isi suatu *cell* matriks adalah 1, maka terdapat benteng pada *cell* tersebut. Sebaliknya jika berisi 0, maka *cell* tersebut kosong. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks pada baris tersebut.
*Output* berupa informasi mengenai banyak benteng yang tidak saling serang.

**Contoh**

- chess.txt

```
4
1 0 0 1
0 1 0 0
0 0 1 0
0 0 0 1
```

- *runtime program*

```
matriks loaded!
Banyaknya benteng yang tidak saling serang adalah 2
```

-----------------------------------



### Problem 9

Kota Bikini Batem pada masa depan sudah penuh sesak dengan penduduk. Saking sesaknya, rumah-rumah penduduk saling berdekatan satu sama lain dan dapat digambarkan sebagai *cell* matriks persegi (berukuran `N`x`N`). Suatu hari, sebuah virus mematikan menyerang kota tersebut. Pada awalnya, hanya ada beberapa rumah yang terjangkit. Namun, dalam satu hari virus ini dapat menjangkit tetangga dari rumah tersebut. Tetangga dalam hal ini didefinisikan sebagai *cell-cell* yang bersinggungan dengan *cell* tersebut (satu *cell* maksimal mempunyai 8 tetangga). Tugas Anda adalah menghitung berapa lama waktu yang dibutuhkan (dalam hari) untuk virus tersebut menjangkit seluruh kota.

**Format *Input* dan *Output***
*Input* berupa kondisi awal kota ketika virus pertama kali menjangkit, yang disimpan dalam file eksternal `city.txt`. Rumah yang sehat direpresentasikan dengan karakter `H`, dan rumah yang terjangkit direpresentasikan dengan karakter `U`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah karakter yang merupakan elemen matriks pada baris tersebut.
*Output* berupa informasi mengenai lama waktu yang dibutuhkan hingga seluruh rumah di kota Bikini Batem terjangkit virus.

**Contoh**

- city.txt

```
3
H H H
H U H
H H H
```

- *runtime program*

```
matriks loaded!
Lama waktu apocalypse adalah 1 hari
```

-----------------------------------



### Problem 10

Tuan Krab ingin membuka cabang baru dari Krasti Krab. Oleh karena itu, dia perlu untuk membeli bidang tanah baru. Petak-petak tanah yang tersedia direpresentasikan dalam matriks berukuran `N`x`N`. Setiap petak tanah mempunyai harga masing-masing. Untuk membangun cabang dari Krasti Krab, dibutuhkan suatu bidang tanah yang berbentuk kotak. Namun, ternyata Tuan Krab hanya membawa uang dalam pecahan `K`. Karena tidak mau rugi, maka Tuan Krab mengambil keputusan hanya akan membeli bidang tanah dengan harga total berupa kelipatan `K`. Tugas Anda adalah mencari banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

**Format *Input* dan *Output***
*Input* berupa matriks yang merepresentasikan harga petak tanah disimpan dalam file eksternal `land.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat positif yang merupakan harga petak tanah pada *cell* tersebut. Pada saat *runtime*, diinputkan bilangan bulat `K` yang merepresentasikan pecahan uang yang dibawa oleh Tuan Krab.
*Output* berupa informasi banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

**Contoh**
(Elemen baris setelah tanda ":" pada *runtime* merupakan *input* dari  pengguna)

- land.txt

```
3
17 11 18
10 15 20
19 16 3
```

- *runtime program*

```
matriks loaded!
Pecahan uang: 4
Banyak bidang tanah yang dapat dibeli adalah 6
```

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

-----------------------------------



### Problem 11

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

-----------------------------------



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
----------------------------
----------------------------
------

**Selamat Mengerjakan :)**

------

Arya Pradipta - Jordhy Fernando - Holy Lovenia - Kevin Jonathan - Pratama Agung - Vincent Hendryanto - William Aristea