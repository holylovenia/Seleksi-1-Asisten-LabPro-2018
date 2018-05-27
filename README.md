### Nama  : Putu Gery Wahyu Nugraha
### NIM   : 13516100

# Daftar Isi

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
- [Bab 4 - *Array*](#bab-4---array)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)

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
Masukkan N : **4**

Masukkan array A : **1 2 3 4**

Masukkan array B : **1 2 3 4**

Array A sama besar dengan array B
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

## Bab 5 - Matriks dan File Eksternal
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
### Solusi
Persoalan ini dapat kita bagi menjadi tiga persoalan kecil, pertama adalah mendapatkan matrix dari file, kedua adalah mengkalkulasi nilai pangkat dari matriks tersebut, ketiga adalah menuliskan matrix tersebut ke dalam file. Untuk pembacaan dan penulisan semuanya dapat dilakukan dengan fungsi I/O sederhana pada c++. Namun pada kalkulasi pangkat kita harus membuat sebuah fungsi yang mampu mengalikan matriks sebanyak pangkat yang dimaksud. Perkalian matriks sendiri diatur oleh fungsi `multMatrix` dan perpangkatannya diatur oleh fungsi `powMatrix`.
```cpp
#include <iostream>
#include <fstream>
#include <string>

void getMatrixLength(std::ifstream & file, int & N);
void getMatrix(std::ifstream & file, int** matrix, int & N);
void powMatrix(int** & matrix, int pow, int** & result, int & N);
void multMatrix(int** & matrixA, int** & matrixB, int** & result, int & N);
void outputMatrix(int** & matrix, int & N);
void allocateMatrix(int** & matrix, int & N);

int main() {
    std::string line;
    std::ifstream matrixFile ("matriks.txt");
    if (matrixFile.is_open()) {
        int N;
        getMatrixLength(matrixFile, N);
        // Alokasikan memori untuk matrix awal
        int** matrix;
        allocateMatrix(matrix, N);
        // Ambil nilai matrix dari file
        getMatrix(matrixFile, matrix, N);
        std::cout << "file loaded!" << std::endl;
        std::cout << "Masukan pangkat: ";
        int power;
        std::cin >> power;
        // Alokasikan memori untuk matrix hasil
        int** result;
        allocateMatrix(result, N);
        powMatrix(matrix, power, result, N);
        outputMatrix(result, N);
        std::cout << "result exported!" << std::endl;
    }
    else {
        std::cout << "File tidak dapat dibuka" << std::endl;
    }
}

void getMatrixLength(std::ifstream & file, int & N) {
    file >> N;
}

void getMatrix(std::ifstream & file, int** matrix, int & N) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            file >> matrix[i][j];
        }
    } 
}

void powMatrix(int** & matrix, int pow, int** & result, int & N) {
    int** mult = matrix;
    for (int i = 0; i < pow - 1; i++) {
        int** resultMult;
        allocateMatrix(resultMult, N);
        multMatrix(mult, matrix, resultMult, N);
        mult = resultMult;
    }
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            result[i][j] = mult[i][j];
        }
    }
}

void multMatrix(int** & matrixA, int** & matrixB, int** & result, int & N) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            result[i][j] = 0;
            for (int k = 0; k < N; k++) {
                result[i][j] += matrixA[i][k] * matrixB[k][j];
            }
        }
    }
}

void outputMatrix(int** & matrix, int & N) {
    std::ofstream outputFile ("result.txt");
    outputFile << N << std::endl;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            outputFile << matrix[i][j] << " ";
        }
        outputFile << std::endl;
    }
}

void allocateMatrix(int** & matrix, int & N) {
    matrix = new int* [N];
    for (int i = 0; i < N; i++) {
        matrix[i] = new int[N];
    }
}
```