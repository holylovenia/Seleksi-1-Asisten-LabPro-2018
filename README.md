# Seleksi 1 Asisten LabPro 2018
-----------------------------------

## Muhammad Nurraihan Naufal
## 13516017

------

------

------

------

## Bab 1 - Percabangan
---------------------------------
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

---------------------------------
### Solusi

```
// Nama file: 1-Problem08.cpp

#include <iostream>
using namespace std;

int main() {
  // KAMUS
  string makanan1, makanan2; // untuk menyimpan input dari pengguna
  bool A, B, C, D, E = false; // merepresentasikan mineral, bernilai true jika terkandung di salah satu jenis makanan
  // ALGORITMA
  cout << "Masukan makanan 1: ";
  cin >> makanan1;
  cout << "Masukan makanan 2: ";
  cin >> makanan2;
  // Mengubah nilai mineral menjadi true jika terkandung pada jenis makanan yg diinput pengguna
  if ((makanan1 == "ikan")||(makanan2 == "ikan")) {
    A = true;
    C = true;
  } 
  if ((makanan1 == "daging")||(makanan2 == "daging")) {
    B = true;
    C = true;
    D = true;
  }
  if ((makanan1 == "sayur")||(makanan2 == "sayur")) {
    D = true;
    E = true;
  }
  if ((makanan1 == "buah")||(makanan2 == "buah")) {
    B = true;
  }
  // Output
  cout << "Mineral ";
  if (!A) {
    cout << "A ";
  }
  if (!B) {
    cout << "B ";
  }
  if (!C) {
    cout << "C ";
  }
  if (!D) {
    cout << "D ";
  }
  if (!E) {
    cout << "E ";
  }
  cout << "tidak didapatkan Tuan Vin" << endl;

  return 0;
}
```

---------------------------------
### Penjelasan

Setiap jenis mineral akan dinyatakan dengan variabel bertipe boolean. Karena ada 5 jenis mineral, maka akan ada 5 variabel bertipe boolean yang menyatakan tiap-tiap mineral. Nilai semua boolean tersebut akan diinisialisasi dengan false. Artinya, semua jenis mineral belum didapatkan Tuan Vin. Kemudian, setelah menerima input dari pengguna, nilai boolean mineral yang terkandung pada jenis makanan yang diinput pengguna tersebut akan diubah menjadi true. Maka, boolean mineral yang tidak didapatkan Tuan Vin akan tetap bernilai false. Jadi, lakukan if pada setiap variabel boolean tersebut untuk menuliskan output jika bernilai false.

---------------------------------
---------------------------------


## Bab 2 - Pengulangan
---------------------------------
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

---------------------------------
### Solusi

```
// Nama file: 2-Problem07.cpp

#include <iostream>
using namespace std;

int main() {
  // KAMUS
  int N;
  int i, j;
  // ALGORITMA
  // Menerima input pengguna
  cout << "Masukkan N :";
  cin >> N;
  // Garis vertikal bagian atas 
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      cout << " ";
    }
    cout << "|" << endl;
  }
  // Garis horizontal tengah bagian kiri
  for (i = 0; i < N; i++) {
    cout << "-";
  }
  // Tanda "+" di tengah garis horizontal
  cout << "+";
  // Garis horizontal tengah bagian kanan
  for (i = 0; i < N; i++) {
    cout << "-";
  }
  // Garis vertikal bagian bawah
  cout << endl;
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      cout << " ";
    }
    cout << "|" << endl;
  }
  return 0;
}
```

---------------------------------
### Penjelasan

Penyelesaian masalah ini terdiri dari 3 tahap utama.
- Tahap pertama, garis vertikal bagian atas. Lakukan looping sebanyak N. Pada setiap iterasi, tulis karakter spasi sebanyak N kemudian karakter '|'.
- Tahap kedua, garis horizontal tengah. Pada tahap ini terbagi lagi menjadi tahap kecil, yaitu:
  - Pertama, tulis karakter '-' sebanyak N
  - Kedua, tulis karakter '+'
  - Ketiga, tulis lagi karakter '-' sebanyak N
- Tahap ketiga, garis vertikal bagian bawah. Lakukan looping sebanyak N. Pada setiap iterasi, tulis karakter spasi sebanyak N kemudian karakter '|'.

---------------------------------
---------------------------------

## Bab 3 - Fungsi dan Prosedur
---------------------------------
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

---------------------------------
### Solusi

```
// Nama file: 3-Problem06.cpp

#include <iostream>
using namespace std;

// fungsi untuk menghitung jarak kuadrat antara titik (x1,y1) dan titik (x2,y2) 
int hitungJarakKuadrat(int x1, int y1, int x2, int y2) {
  int x = x2 - x1;
  int y = y2 - y1;
  return (x * x) + (y * y); 
}

int main() {
  // KAMUS
  int x1, y1; // Posisi mahasiswa
  int x2, y2; // Posisi penjual
  int N; // Banyak penjual
  int i; // indeks penjual
  int iMin; // indeks penjual dengan jarak minimum
  int jarak; // jarak penjual dengan mahasiswa
  int jarakMin = 999; // jarak minimum penjual dengan mahasiswa, diinisialisasi dengan nilai mendekati tak hingga
  // ALGORITMA
  // Menerima input posisi mahasiswa
  cout << "Masukan posisi mahasiswa" << endl;
  cout << "X : ";
  cin >> x1;
  cout << "Y : ";
  cin >> y1;
  // Menerima input banyak penjual
  cout << "Masukan banyak penjual: ";
  cin >> N;
  // Menerima input posisi penjual sebanyak N sekaligus mencari jarak minimum
  for (i = 1; i <= N; i++) {
    cout << "Masukan posisi penjual " << i << endl;
    cout << "X : ";
    cin >> x2;
    cout << "Y : ";
    cin >> y2;
    // Menghitung jarak mahasiswa dgn penjual
    jarak = hitungJarakKuadrat(x1, y1, x2, y2);
    if (jarak < jarakMin) {
      jarakMin = jarak;
      iMin = i;
    }
  }
  // iMin akan menyimpan indeks penjual dengan jarak minimum tersebut
  cout << "Penjual terdekat adalah penjual " << iMin << "." << endl;
  return 0;
}
```

---------------------------------
### Penjelasan

Untuk menentukan jarak paling dekat, kita harus menghitung jarak posisi mahasiswa dengan posisi masing-masing penjual. Jadi, fungsi yang dibutuhkan adalah fungsi untuk menghitung jarak posisi mahasiswa dengan posisi masing masing penjual. Seperti yang kita ketahui, rumus untuk menghitung jarak antar 2 posisi yang diketahui koordinatnya adalah akar kuadrat dari selisih posisi horizontal (x) kuadrat ditambah selisih posisi vertikal (y) kuadrat. Namun, karena perhitungan akar akan mengurangi efisiensi dan membutuhkan library tambahan, maka hasil perhitungan tanpa akar kuadrat dapat langsung digunakan. Selisih posisi masih perlu dikuadratkan karena jarak merupakan besaran skalar, sehingga nilai negatif perlu diantisipasi.

Cara kerja program utamanya adalah sebagai berikut. Setelah menerima nilai N sebagai jumlah penjual, maka lakukan looping sebanyak N untuk menerima posisi masing-masing penjual sekaligus untuk menentukan jarak minimum. Setiap setelah menerima input posisi penjual dari mahasiswa, hitung jarak posisi mahasiswa dengan posisi penjual menggunakan fungsi yang telah kita buat tadi. Inisialisasi variabel jarakMin dengan nilai mendekati tak hingga, misalnya 999, agar dapat langsung digantikan dengan jarak penjual pertama. Variabel jarakMin ini akan digunakan sebagai pembanding jarak dengan jarak selanjutnya. Kemudian, untuk looping-for ini digunakan variabel i yang dimulai dari 1 sampai N. Variabel i inilah yang dianggap sebagai indeks dari masing-masing penjual. Nilai iMin akan diisi dengan indeks yang menyimpan jarakMin. Maka, penjual dengan indeks iMin merupakan penjual dengan jarak terdekat dengan posisi mahasiswa.

---------------------------------
---------------------------------

## Bab 4 - *Array*
---------------------------------
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

---------------------------------
### Solusi

```
// Nama file: 4-Problem05.cpp

#include <iostream>
using namespace std;

int main() {
  // KAMUS
  int i, N;
  int A[100]; // Array A
  int B[100]; // Array B
  // ALGORITMA
  cout << "Masukkan N : ";
  cin >> N;
  // Menerima input untuk array A
  cout << "Masukkan array A : ";
  for (i = 0; i < N; i++){
    cin >> A[i];
  }
  // Menerima input untuk array B
  cout << "Masukkan array B : ";
  for (i = 0; i < N; i++){
    cin >> B[i];
  }
  // Proses membandingkan
  i = 0;
  while ((i < N) && (A[i] == B[i])) {
    i++;
  }
  // i == N atau A[i] != B[i]
  cout << i << endl;
  if (i == N) {
    cout << "Array A sama besar dengan array B" << endl;
  } else if (A[i] < B[i]) {
    cout << "Array A lebih kecil dari array B" << endl;
  } else /*A[i] > B[i]*/ {
    cout << "Array A lebih besar dari array B" << endl;
  }
  return 0;
}
```

---------------------------------
### Penjelasan

Pertama, terima input nilai N, kemudian nilai array dari pengguna sebanyak N untuk kedua array. Kemudian, lakukan perbandingan dengan looping versi while. Inisialisasi nilai i dengan 0, artinya lakukan perbandingan mulai dari indeks pertama. Looping akan terus dilakukan selama i masih lebih kecil dari N DAN nilai A[i] masih sama dengan nilai B[i]. Pada setiap iterasi, lakukan penambahan ke nilai i sebesar 1. Jadi, terdapat dua kondisi yang membuat looping ini berhenti, yaitu ketika i sudah sama dengan N ATAU A[i] sudah sama dengan B[i]. Setelah keluar dari looping, lakukan pengecekan untuk menentukan hasilnya. Jika i sudah sama dengan N, artinya array A sama dengan array B. Jika tidak, maka terdapat kondisi dimana A[i] tidak sama dengan B[i]. Terdapat dua kemungkinan, yaitu A[i] lebih kecil dari B[i], artinya array A lebih kecil dari array B, atau A[i] lebih besar dari B[i], artinya array A lebih besar dari array B.

---------------------------------
---------------------------------

## Bab 5 - Matriks dan File Eksternal
---------------------------------
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

---------------------------------
### Solusi

```
// Nama file: 5-Problem04.cpp

#include <iostream>
#include <fstream>
using namespace std;

int main() {
  // KAMUS
  ifstream fin;
  ofstream fout;
  int A[100][100]; // Matriks untuk proses perpangkatan
  int B[100][100]; // Matriks konstan menyimpan nilai awal matriks
  int Hasil[100][100]; // Matriks untuk proses perkalian
  int M; // Pangkat
  int N; // Banyak baris/kolom matriks
  int i, j, k, l;
  // ALGORITMA
  // Membaca file dan menyimpannya ke matriks A dan B
  fin.open("matriks.txt");
  fin >> N;
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      fin >> A[i][j];
      B[i][j] = A[i][j];
    }
  }
  fin.close();
  cout << "file loaded!" << endl;
  // Proses perpangkatan
  cout << "Masukkan pangkat: ";
  cin >> M;
  for (l = 1; l < M; l++) {
    // Proses perkalian
    for (i = 0; i < N; i++) {
      for (j = 0; j < N; j++) {
        Hasil[i][j] = 0;
        for (k = 0; k < N; k++) {
          Hasil[i][j] = Hasil[i][j] + (A[i][k] * B[k][j]);
        }
      }
    }
    // Matriks hasil disimpan ke matriks A
    for (i = 0; i < N; i++) {
      for (j = 0; j < N; j++) {
        A[i][j] = Hasil[i][j];
      }
    }
  }
  // Menulis matriks A ke file
  fout.open("result.txt");
  fout << N << endl;
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      fout << A[i][j] << " ";
    }
    fout << endl;
  }
  fout.close();
  cout << "result exported!" << endl;
  return 0;
}
```

---------------------------------
### Penjelasan

Pertama, baca file matriks.txt dan baca baris pertama sebagai N, yaitu dimensi matriks. Lakukan looping sebanyak N untuk baris dan pada setiap iterasi lakukan looping sebanyak N untuk kolom, kemudian pada setiap iterasi baca nilai pada file tersebut. Simpan nilai tersebut pada matriks A dan matriks B. Terdapat dua matriks karena salah satu matriks akan bernilai tetap sebagai pengali matriks, yaitu matriks B. Matriks A merupakan matriks yang nilainya akan berubah sebagai matriks yang dikali.

Selanjutnya, baca nilai M dari pengguna sebagai besar pangkat. Lakukan looping sebanyak M-1 untuk melakukan perpangkatan matriks ini. Pada setiap iterasi perpangkatan, lakukan perkalian matriks A dengan matriks B. Hasilnya disimpan pada matriks Hasil. Kemudian, nilai dari matriks Hasil disimpan ke matriks A karena matriks Hasil akan digunakan kembali sebagai hasil perkalian selanjutnya, yaitu perkalian matriks Hasil sebelumnya yang sudah disimpan ke matriks A dengan matriks B. Jadi, hasil akhir perpangkatan akan tersimpan pada matriks A.

Terakhir, tulis hasil perpangkatan matriks ini ke file result.txt. Pertama, tulis terlebih dahulu dimensi matriks. Selanjutnya, tulis hasilnya, yaitu matriks A, ke file tersebut.

---------------------------------
---------------------------------