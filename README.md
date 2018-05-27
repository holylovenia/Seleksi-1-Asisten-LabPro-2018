## Keterangan Pembuat

Thareq Muhammad Yusuf Hasnul Aziz
13516004


## Bab 1 - Percabangan
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
### Solusi
### Source Code
#include <iostream>


using namespace std;

int main()
{
    int X,Y;
    cout << "Masukkan nilai X : ";
    cin >> X;
    cout << "Masukkan nilai Y : ";
    cin >> Y;

    cout << "Titik (" << X << "," << Y << ") berada di ";

    if ((X == 0) && (Y == 0)) {
        cout << "titik origin" << endl;
    } else if (X == 0) {
        cout << "sumbu Y" << endl;
    } else if (Y == 0) {
        cout << "sumbu X" << endl;
    } else {
        cout << "kuadran ";
        if ((X > 0) && (Y > 0)) {
            cout << "1" << endl;
        } else if ((X < 0) && (Y > 0)) {
            cout << "2" << endl;
        } else if ((X < 0) && (Y < 0)) {
            cout << "3" << endl;
        } else if ((X > 0) && (Y < 0)) {
            cout << "4" << endl;
        }
    }

    return 0;
}
### Pemjelasan
1. Input nilai X dan Y
2. Bagi menjadi 3 percabangan yaitu
  a. Bila Dititik Orgini
  b. Bila di sumbu X maupun Y
  c. Bila Selain 2 diatas
  Bila termasuk opsi c maka akan dilakukan percabangan kembali yaitu
   c.1. Bila di kuadran 1 (X dan Y Positif)
   c.2. Bila di kuadran 2 (X Negatif dan Y Positif)
   c.3. Bila di kuadran 3 (X dan Y Negatif)
   c.4. Bila di kuadran 4 (X Positif dan Y Negatif

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
---------------------------------
### Source Code
#include <iostream>


using namespace std;

int main()
{
    int prevNum = 0;
    int currNum = 1;
    int N;

    cout << "Masukkan banyaknya bilangan :";
    cin >> N;
    for (int i = 0; i < N; i++) {
        if (currNum % 3 == 0) {
            currNum++;
        }
        cout << currNum << endl;
        currNum += prevNum;
        prevNum = currNum - prevNum;
    }

    return 0;

}

### Penjelasan
1. Buat 2 variabel dengan angka sebelum dan angka saat ini
2. Setelah dapat input N, maka proses sebanyak N kali
3. Tampilkan CurrNum lalu buat currNum menjadi CurrNum + prevNum dan prevNum mnejadi curr
4. Sebelum ditampilkan maka lakukan pengecekan bila kelipatan 3 lalu ditambahkan bila iya

## Bab 3 - Fungsi dan Prosedur
### Problem 2

Dalam dunia komputer, sering digunakan istilah *hexadecimal*, yaitu bilangan berbasis 16 (desimal adalah bilangan berbasis 10).Berikut adalah tabel yang membandingkan desimal dengan heksadesimal


| Desimal | Heksadesimal | Desimal | Heksadesimal |
| ------- | ------------ | ------- | ------------ |
| 0       | 00           | 9       | 09           |
| 1       | 01           | 10      | 0A           |
| 2       | 02           | 11      | 0B           |
| 3       | 03           | 12      | 0C           |
| 4       | 04           | 13      | 0D           |
| 5       | 05           | 14      | 0E           |
| 6       | 06           | 15      | 0F           |
| 7       | 07           | 16      | 10           |
| 8       | 08           | 17      | 11           |


Buatlah program yang menjumlahkan dua bilangan heksadesimal dua digit menjadi bilangan
heksadesimal! (Buatlah fungsi HexToDec() dan DecToHex())


**Format Input & Output (input di-*bold*)**
***
Masukan A : **11**

Masukan B: **05**

11 + 05 = 16
***
Masukan A : **1D**

Masukan B: **2B**

1D + 2B = 48
***
### Source Code
#include <iostream>
#include <string>

using namespace std;

int HexToDec(string hex) {
    int sum = 0;

    if (hex[0] > 53) {
        sum += (int(hex[0]) - 55) * 16;
    } else {
        sum += (int(hex[0]) - 48) * 16;
    }
    if (hex[1] > 53) {
        sum += int(hex[1]) - 55;
    } else {
        sum += int(hex[1]) - 48;
    }

    return sum;
}

string DecToHex(int dec) {
    string firstChar;
    string secondChar;
    string hex;

    if ((dec / 16) > 9) {
        firstChar = char((dec / 16) + 55);
    } else {
        firstChar = char((dec / 16) + 48);
    }

    if ((dec % 16) > 9) {
        secondChar = char((dec % 16) + 55);
    } else {
        secondChar = char((dec % 16) + 48);
    }

    hex = firstChar + secondChar;
    return hex;
}

int main()
{

    string A,B;
    cout << "Masukan A : ";
    cin >> A;
    cout << "Masukan B: ";
    cin >> B;
    cout << A << " + " << B << " = " << DecToHex((HexToDec(A)) + (HexToDec(B))) << endl;

    return 0;
}


### Penjelasan
1. HexToDec()
  a. Digit pertama diconvert menjadi angka tsb * 16 dan ditambahkan kedalam suatu variabel
  c. Digit kedua langsung ditambahkan 
  c. Bila ada huruf maka diconvert terlebih dahulu sesuai dengan simbol hurufnya
  
2. DecToHex()
  a. Desimal dibagi 16 lalu hasil pembagiannya diconvert menjadi Hex
  c. Sisa pembagian diconvert menjadi HEx dan menjadi digit kedua
  
3. Main
  a. Kedua input Hex diconvert terlebih dahulu lalu ditambahkan
  b. Hasil pertambahan diconvert kembali menjadi Hex


## Bab 4 - *Array*

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
### Source Code

#include <iostream>
#include <string>
#include <list>
#include <vector>

using namespace std;

int main()
{

    int NBarang;
    list<string> listBarang;

    cout << "Masukkan jumlah barang : ";
    cin >> NBarang;

    for (int i = 0; i < NBarang; i++) {
        string tempBarang;
        cout << "Masukkan nama barang : ";
        cin >> tempBarang;
        listBarang.push_back(tempBarang);
    }
    while (!listBarang.empty()) {
        int opsi;
        cout << "   1.Jual" << endl;
        cout << "   2.Lihat stok" << endl;
        cout << "Pilihan menu : ";
        cin >> opsi;
        if (opsi == 1) {
            string tempBarang;

            cout << "Masukkan nama barang : ";
            cin >> tempBarang;
            list<string>::iterator it = listBarang.begin();
            bool isAda = false;

            while (it != listBarang.end()) {
                if ((*it) == tempBarang) {
                    isAda = true;
                    it = listBarang.erase(it);
                    break;
                } else {
                    it++;
                }
            }

            if (isAda) {
                cout << "Barang berhasil dijual" << endl;
            } else {
                cout << "Barang tidak ada" << endl;
            }
        } else {
            list<string>::iterator it = listBarang.begin();
            cout << "Stok toko : " << (*it);
            advance(it,1);

            while (it != listBarang.end()) {
                    cout <<", " << (*it);
                    it++;
            }
            cout << endl;
        }
    }
    cout << "Barang sudah habis, silahkan melakukan restok barang" << endl;
    return 0;

}
### Penjelasan
1. Lakukan pengisian list sesuai dengan input jumlah barang
2. Program akan berada terus dalam looping bila list barang tidak kosong, aksi yg dilakukan sebagai berikut:
  a. Lihat Stok
    Bila lihat stok maka akan looping di list barang dan menampilkan semua list barang yang ada
  b. Jual
    Bila jual maka akan menerima input barang dan akan dicek apakah ada di dalam list atau tidak
      1. Bila ada maka akan dihapuskan
      2. Bila tidak maka didiamkan
 
  

-----------------
## Bab 5 - Matriks dan File Eksternal
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

### Source Code

#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main()
{

  ifstream infile;
  int str;
  int l = 0;
  int lahan[100][100];
  bool lahancek[100][100];

  
  infile.open("contour.txt");
  if (!infile) {
      cout << "Unable to open file";
  }
  int j = -1;
  while (infile >> str){
    if (j == -1) {
      l = str;
      //cout << l << endl;
    } else {
      lahan[j][0] = str;
      lahancek[j][0] = false;
      for (int i = 1; i < l; i++) {
        infile >> str;
        lahan[j][i] = str;
        lahancek[j][i] = false;
      }
    }
    j++;
  }
  cout << "file loaded!" << endl;

  infile.close();

  int biggest = 0;

  for (int i = 0; i < l; i++) {
    for (j = 0; j < l; j++) {
      if (!lahancek[i][j]) {
        int tempNum = lahan[i][j];
        //cout << tempNum <<  " i: " << i  << " j: " << j << endl;
        int tempSize;

        int iteraTemp = 1;
        bool isSquare = true;
        while (isSquare) {
          tempSize = iteraTemp - 1;
          for (int iTemp = i; iTemp < i + iteraTemp; iTemp++) {
            if (!(tempNum == lahan[iTemp][j + iteraTemp - 1])) {
              isSquare = false;
              break;
            }
          }
          for (int iTemp = j; iTemp < j + iteraTemp; iTemp++) {
            if (!(tempNum == lahan[i + iteraTemp - 1][iTemp])) {
              isSquare = false;
              break;
            }
          }
          if (isSquare) {
            for (int iTemp = i; iTemp < i + iteraTemp; iTemp++) {
              lahancek[iTemp][j + iteraTemp - 1] = true;
            }
            for (int iTemp = i; iTemp < j + iteraTemp; iTemp++) {
              lahancek[i + iteraTemp - 1][iTemp] = true;
            }

            iteraTemp++;

          }
        }

        if (tempSize > biggest) {
          biggest = tempSize;
        }

      }
    }
  }

  cout << "Luas maksimum Krasti Krab yang dapat dibangun adalah " << biggest*biggest << endl;

  return 0;
}

### Penjelasan
1. Pertama program akan melakukan pembacaan file dari "contour.txt" lalu akan disimpan baris pertama sebagi luas dan baris kedua sebagai matrix
2. Ada 2 matix yaitu lahan sendiri dan matrix apakah laha tersebut sudah dicek
3. Lalu matrix akan diproses satu persatu dengan isi looping sebagai berikut
  a. Bila lahan sudah pernah diproses maka beralih ke lahan selanjutnya
  b. Bila belum pernah maka:
    1. Lahan dicek secara persegi secara iteratif
    2. Setelah dicek dan mentok, maka lahan akan ditandai sudah pernah dicek
    3. Bila saat sedang dicek namun salah, maka tidka akan ditandai
    4. Kemudian luas akan dismpan bila lebih besar dari luas sebelumnya
4. Bila selesai, maka akan menampilkan luas terbesar
