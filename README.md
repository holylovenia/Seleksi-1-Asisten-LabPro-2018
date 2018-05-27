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
  - [Problem 4](#problem-4)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 3](#problem-3)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 1](#problem-1)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 12](#problem-12)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 11](#problem-11)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
------

------

## Bab 1 - Percabangan
---------------------------------
### Problem 4

Tuan Vin diajarkan tentang kuadran. Bidang kartesian dibagi menjadi kuadran 1, 2, 3, 4, serta sumbu x, sumbu y, dan titik origin. Karena Tuan Vin orang yang pelupa, dia lupa ciri-ciri masing-masing daerah. Tuan Vin meminta Anda untuk membantunya dengan membuat program yang dapat menentukan daeerah suatu titik.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai X : **0**

Masukkan nilai Y : **10**

Titik (0,10) berada di sumbu Y
***
Masukkan nilai X : **-3**

Masukkan nilai Y : **4**

Titik (-3,4) berada di kuadran 2
***
Masukkan nilai X : **0**

Masukkan nilai Y : **0**

Titik (0,0) berada di titik origin
***
### **SOLUSI**
---
### Source Code
```
#include <iostream>
using namespace std;

int main() {
    int X, Y;

    cout << "Masukkan nilai X: ";
    cin >> X;
    cout << "Masukkan nilai Y: ";
    cin >> Y;
    
    cout << "Titik (" << X << "," << Y << ") berada di ";

    //cek setiap kondisi
    if (X > 0 && Y > 0) {
        cout << "kuadran 1";
    } else if (X < 0 && Y > 0) {
        cout << "kuadran 2";
    } else if (X < 0 && Y < 0) {
        cout << "kuadran 3";
    } else if (X > 0 && Y < 0) {
        cout << "kuadran 4";
    } else if (X == 0 && Y == 0) {
        cout << "titik origin";
    } else if (Y == 0) {
        cout << "sumbu X";
    } else {
        cout << "sumbu Y";
    }

    return 0;
}
```
---
### Penjelasan
Pertama, tentukan semua kondisi yang memungkinkan untuk semua posisi koordinat titik berdasarkan kriterianya. Berikut merupakan peta kuadran bidang 2D:

Kuadran 2 | Kuadran 1
--- | ---
**Kuadran 3** | **Kuadran 4**

> Garis vertikal: Sumbu y

> Garis horizontal: Sumbu x

Kemudian buat percabangan if untuk semua kondisi di atas sesuai dengan kriteria titik, beserta aksi (berupa output) yang dilakukan. Berikut merupakan tabel kondisi beserta outputnya:

Kondisi | Output
--- | ---
(x > 0) and (y > 0) | Kuadran 1
(x < 0) and (y > 0) | Kuadran 2
(x < 0) and (y < 0) | Kuadran 3
(x > 0) and (y < 0) | Kuadran 4
x = 0 and y = 0 | Titik origin
x ≠ 0 and y = 0 | Sumbu x 
x = 0 and y ≠ 0 | Sumbu y

---
---------------------------------


## Bab 2 - Pengulangan
---------------------------------
### Problem 3


Karena bosan belajar kalkulus, seorang mahasiswa membuat sebuah deret. Deret tersebut sama dengan deret fibonacci, namun setiap bertemu bilangan yang habis dibagi **3**, maka nilai bilangan tersebut ditambahkan **1**. 
Sebagai contoh, 10 nilai deret pertama adalah sebagai berikut :
**1, 1, 2, 4, 7, 11, 19, 31, 50, 82, ...**


**Penjelasan :** 
Untuk bilangan keempat, seharusnya nilainya adalah 3, namun karena 3 habis dibagi 3, maka nilainya ditambah 1 menjadi 4 


Mahasiswa tersebut ingin membuat program, karena ia merasa deret ini sangatlah hebat. Bantulah mahasiswa tersebut!


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukkan banyaknya bilangan :10 
10 bilangan pertama dari deret adalah  
1  
1  
2  
4  
7  
11  
19  
31  
50  
82  
```
```
Masukkan banyaknya bilangan :3 
10 bilangan pertama dari deret adalah  
1  
1  
2  
```
***
### **SOLUSI**
---
### Source Code
```
#include <iostream>
using namespace std;

int main() {
    int x, n;
    int a, b;

    cout << "Masukkan banyaknya bilangan :";
    cin >> n;

    if (n > 0) {
        cout << n << " bilangan pertama dari deret adalah\n";
        a = 1; //elemen pertama
        b = 1; //elemen kedua
        
        x = a;
        cout << x << endl;
        x = b;
        for (int i = 2; i <= n; i++) {
            cout << x << endl;
            x = a + b;
            //Jika x kelipatan 3, tambahkan dengan 1
            if (x % 3 == 0) {
                x += 1;
            }
            b = a;
            a = x;
        }
    }

    return 0;
}
```
---
### Penjelasan
Pada permasalahan ini, algoritma yang digunakan serupa dengan permasalahan Fibonacci, dengan modifikasi ketika suku bernilai kelipatan 3. 

Suku pertama dan suku kedua bernilai 1. Untuk suku ketiga dan seterusnya, suku dicari dengan menjumlahkan dua suku-suku sebelumnya (ditandai dengan variabel a dan b). Pada awal program, variabel a dan variabel b merupakan suku pertama dan kedua.

Karena banyaknya suku diketahui dari masukan pengguna, digunakan **for-loop**. Pengulangan digunakan untuk memproses suku ke-3 dan seterusnya. Di dalam pengulangan, terdapat kondisional if apabila suku merupakan kelipatan 3, maka suku ditambahkan dengan 1.

---
-----------------------


## Bab 3 - Fungsi dan Prosedur
---------------------------------
### Problem 1
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
***
### **SOLUSI**
---
### Source Code
```
#include <iostream>
using namespace std;

/**
 * Mengembalikan x pangkat n
 */
int power(int x, int n) {
    int result = 1;
    for (int i = 1; i <= n; i++) {
        result *= x;
    }
    return result;
}

/**
 * Fungsi f(x) = 2x^5 + 3x^4 + 9x^3 − x^2 + 3x − 2
 * Mengembalikan nilai f(x)
 */
int func (int x) {
    return 2*power(x, 5) + 3*power(x, 4) + 9*power(x, 3) - power(x, 2) + 3*x - 2;
}

/**
 * Mencari nilai x berdasarkan nilai fx yang diketahui.
 * Mengembalikan -1 jika tidak ada nilai x yang memenuhi 
 * nilai fx. x lebih dari 30.
 */
int getXFunction (int fx) {
    int i = 1;
    int x = -1;
    int result = -1;
    while (i < 30 && result < fx) {
        result = func(i);
        if (result == fx) {
            x = i;
        }
        i++;
    }
    return x;
}

int main() {
    int fx, x;

    cout << "Masukkan f(x): ";
    cin >> fx;

    x = getXFunction(fx);
    if (x != -1) {
        cout << "Nilai x adalah " << x << endl;
    } else {
        cout << "Tidak ada solusi yang sesuai" << endl;
    }
    return 0;
}
```
---
### Penjelasan
Range nilai x: `0 < x < 30`

Untuk menentukan nilai x yang sesuai dengan f(x) yang diketahui, maka dilakukan pemetaan nilai f(x) untuk semua bilangan bulat x di antara 0 dan 30 (`x->f(x)`). Kemudian nilai f(x) yang diketahui dicocokkan dengan hasil pemetaan `x->f(x)` untuk memperoleh nilai x yang memenuhi.

Fungsi f(x) diimplementasikan dengan fungsi `func(x)`. Pemangkatan nilai x (x^n) diimplementasikan dengan fungsi `power(x, n)`.

Pemetaan diimplementasikan pada fungsi `getXFunction()` dengan masukan nilai `fx`. Digunakan pengulangan **while-do**. Pada setiap iterasi `i`, dihitung nilai `f(i)`. Loop berhenti apabila nilai `f(i)` lebih besar sama dengan nilai `fx` atau nilai `i` lebih dari 30.

---
-----------------

## Bab 4 - *Array*
---------------------------------
### Problem 12

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
### **SOLUSI**
---
### Source Code
```
#include <iostream>
using namespace std;

#define MAX 100

/**
 * Tipe data elementCounter: Menyimpan jumlah kemunculan tiap elemen pada sebuah array (Distinct elements)
 */
typedef struct {
    int arr[MAX];
    int count[MAX];
    int neff;
} elementCounter;

/**
 * Mengembalikan indeks kemunculan elemen array pada distinct array,
 * -1 apabila tidak ditemukan
 */
int getElmtIdx(elementCounter distinctArr, int el) {
    int i = 0;
    bool found = false;

    while (!found && i < distinctArr.neff) {
        if (distinctArr.arr[i] == el) {
            found = true;
        } else {
            i++;
        }
    }
    if (found) {
        return i;
    } else {
        return -1;
    }
}

/**
 * Mencatat semua angka pada array dan menghitung jumlah kemunculannya
 * Mengembalikan distinct array dengan data tiap elemen array arr 
 * beserta jumlah kemunculannya.
 */
elementCounter countOccurence(int arr[], int n) {
    int i;
    int idx;

    elementCounter distArr;
    distArr.neff = 0;

    for (i = 0; i < n; i++) {
        idx = getElmtIdx(distArr, arr[i]);
        if (idx == -1) {
            distArr.arr[distArr.neff] = arr[i];
            distArr.count[distArr.neff] = 1;
            distArr.neff++;
        } else {
            distArr.count[idx]++;
        }
    }
    
    return distArr;
}

/**
 * Mencetak elemen array yang unik.
 * Cetak elemen elementCounter apabila jumlah kemunculannya adalah 1.
 */
void printUniqueKey(elementCounter distArr) {
    cout << "Kunci yang harus diduplikat:" << endl;
    for (int i = 0; i < distArr.neff; i++) {
        if (distArr.count[i] == 1) {
            cout << distArr.arr[i] << endl;
        }
    }
}

int main() {
    int arrKey[MAX];
    int n;

    cout << "Masukkan jumlah kunci yang ada : ";
    cin >> n;
    cout << "Masukkan nomor ruangan kunci yang ada : " << endl;
    for (int i=0; i<n; i++) {
        cin >> arrKey[i];
    }

    //Menyimpan array tiap elemen beserta jumlah kemunculannya
    elementCounter distArr;
    distArr = countOccurence(arrKey, n);
    printUniqueKey(distArr);
    
    return 0;
}
```
---
### Penjelasan
Ide pada persoalan ini adalah mencari semua elemen yang kemunculannya sebanyak satu kali. Untuk menemukan jumlah kemunculan setiap elemen pada sebuah array, digunakan bantuan tipe bentukan bernama **elementCounter**, dengan field sebagai berikut:

1. `arr: array of integer`, menyimpan tiap elemen pada sebuah array (*distinct elements*).
2. `count: array of integer`, menyimpan jumlah kemunculan tiap elemen `arr` pada sebuah array.
3. `neff: integer`, jumlah elemen `arr` dan `count`.

Setiap elemen array yang berisi nomor-nomor kunci diiterasi untuk dilakukan pencatatan pada tipe bentukan `elementCounter`. Pada setiap iterasi, tiap kemunculan nomor kunci disimpan pada array `arr` dan hasil perhitungan disimpan pada array `count`.

Kemudian, cetak semua elemen array `arr` pada `elementCounter` yang nilai `count`-nya bernilai 1.

---
-----------------

## Bab 5 - Matriks dan File Eksternal
---------------------------------
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
---
### **SOLUSI**
---
### Source Code
```
#include <iostream>
#include <fstream>
using namespace std;

#define MAX 100

typedef   struct {
    int elmt[MAX][MAX]; //container array of array
    int row;            //baris
    int col;            //kolom
} Matrix;

/**
 * Membaca file berisi antrian dan merepresentasikannya
 * ke dalam array of antrian(array).
 */
Matrix fileToMatrix() {
    Matrix Mat;
    ifstream inFile;
    int x;

    inFile.open("data/queue.txt");
    if (inFile) {
        inFile >> x;
        Mat.row = x;
        inFile >> x;
        Mat.col = x;
        for (int i = 0; i < Mat.row; i++) {
            for (int j = 0; j < Mat.col; j++) {
                inFile >> x;
                Mat.elmt[i][j] = x;
            }
        }
        cout << "file loaded!\n";
    }
    inFile.close();
    return Mat;
}

/**
 * Menghitung panjang sebuah antrian Q dengan
 * jumlah slot line
 */
int countPanjangAntrian(int Q[], int line) {
    int i = 0;
    bool stop = false;

    while (i < line && !stop) {
        if (Q[i] == 1) {
            stop = true;
        } else {
            i++;
        }
    }
    return line - i;
}

/**
 * Main program
 */
int main() {
    Matrix Queue; //row untuk jumlah kasir, col untuk panjang antrian
    int count;
    int countMax = 0; //counter antrian max

    Queue = fileToMatrix();

    //Mencari antrian terpanjang
    for (int i = 0; i < Queue.row; i++) {
        count = countPanjangAntrian(Queue.elmt[i], Queue.col);
        if (count > countMax) {
            countMax = count;
        }
    }
    cout << "Antrian terpanjang adalah " << countMax << endl;
    
    return 0;
}
```
---
### Penjelasan
Ide dari permasalahan ini adalah menyimpan slot-slot antrian setiap kasir dengan representasi matriks berelemen slot. Banyaknya kasir direpresentasikan sebagai baris (row) dan banyak slot antrian direpresentasikan sebagai kolom (col).

Untuk setiap row, dihitung panjang antrian (elemen yang bernilai 1) dengan fungsi `countPanjangAntrian()`, kemudian cari nilai panjang antrian maksimum dari antrian-antrian tersebut.

---
---
## Author

------

Erma Safira Nurmasyita

13516072