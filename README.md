### Nama  : Hagai Raja Sinulingga
### NIM   : 13516136

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
### Problem 9

Tuan Vin ingin mengetahui suhu udara sekarang. Terdapat termometer pada dinding di dekatnya. Namun terkadang, satuan suhu yang tertulis tidak sesuai dengan yang ingin diketahuinya. Dari 3 jenis suhu R, C dan F, berikut adalah perbandingannya:


C : R : (F-32) = 5 : 4 : 9


Tuan Vin meminta bantuan Anda untuk dapat membaca suhu dengan lebih mudah


**Format Input & Output (input di-*bold*)**
***
Masukan satuan suhu termometer: **C**

Masukan besar suhu: **40**

Masukan satuan yang ingin diketahui: **R**

Besar suhu dalam R: 32
***

### Solusi

Persoalan ini dapat diselesaikan dengan percabangan. Suhu yang diterima adalah R, C dan F saja. Jika masukan adalah salah satu dari huruf tersebut maka akan dilihat apakah masukan konversi juga salah satu dari huruf itu. Jika kedua jenis suhu yang diterima adalah valid dari tiga huruf itu maka akan dilakukan perhitungan yang sesuai, jika tidak maka akan dikembalikan unkwon. Ketika menghitung, dilihat pula apakah huruf masukan dan keluaran sama, jika ya maka tidak perlu dilakukan perhitungan.

```cpp
#include <iostream>
using namespace std;

int main()
{
    char in, out;
    double awal, akhir;
    bool valid = true;

    /* Menerima jenis suhu masukan */
    cout << "Masukan satuan suhu termometer: ";
    cin >> in;

    /* Menerima besar suhu masukan */
    cout << "Masukan besar suhu: ";
    cin >> awal;
    
    /* Menerima jenis suhu keluaran */
    cout << "Masukan satuan yang ingin diketahui: ";
    cin >> out;
    
    /* Kalkulasi */
    if (in == out) {
        /* tidak ada perubahan */
    }
    else {
        if (in == 'C') {
            switch (out) {
                case 'R':
                    akhir = awal * 4 / 5;
                    break;
                case 'F':
                    akhir = (awal * 9 / 5) + 32;
                    break;
                default :
                    valid = false; 
            }
        }
        else if (in == 'R') {
            switch (out) {
                case 'C':
                    akhir = awal * 5 / 4;
                    break;
                case 'F':
                    akhir = (awal * 9 / 4) + 32;
                    break;
                default :
                    valid = false; 
            }
        }
        else if (in == 'F') {
            switch (out) {
                case 'R':
                    akhir = (awal - 32) * 4 / 9;
                    break;
                case 'C':
                    akhir = (awal - 32) * 5 / 9;
                    break;
                default :
                    valid = false; 
            }
        }
        else {
            // Format Input Salah
            valid = false;
        }
    }
    
    /* Menampilkan hasil */
    cout << "Besar suhu dalam " << out << ": ";
    if (valid) {
        cout << akhir << endl;
    }
    else {
        cout << "UNKNOWN" << endl;
    }
    return 0;
}
```


## Bab 2 - Pengulangan
### Problem 8
Agar dapat lulus dari kuliah, seorang mahasiswa dituntut untuk dapat menyebutkan bilangan prima diantara **A** dan **B**. Bantulah mahasiswa tersebut untuk menyebutkan bilangan prima tersebut.


**Catatan :** 
Buatlah suatu fungsi yang mengecek apakah suatu bilangan merupakan bilangan prima atau bukan


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukkan nilai A :1 
Masukkan nilai B :10
Bilangan prima diantara 1 sampai 10 adalah
2  
3  
5  
7  
```
```
Masukkan nilai A :10
Masukkan nilai B :20
Bilangan prima diantara 10 sampai 20 adalah 
11  
13  
17  
19
```
---------------------------------

### Solusi
Untuk mempermudah penyelesaian masalah ini maka dibuat satu buah fungsi pembantu yaitu cekPrima yang melihat sebuah angka merupakan bilangan prima atau bukan. Cara mengeceknya adalah dengan mengiterasi hingga akar bilangan itu, jika ada satu angka saja yang dapat membagi habis angka itu maka angka tersebut tidaklah prima. Selanjutnya untuk di program utama dilakukan iterasi pengecekan mulai dari angka A hingga B satu per satu.
```cpp
#include <iostream>
using namespace std;

bool cekPrima(int i);
// Merupakan fungsi untuk mengecek apakah nilai i 
// merupakan bilangan prima atau tidak. True berarti 
// bilangan prima dan False berarti tidak.

int main()
{
    int A,B;
    int i;

    // Menerima Input nilai A dan B
    cout << "Masukkan nilai A :";
    cin >> A;
    cout << "Masukkan nilai B :";
    cin >> B;

    // Menuliskan jawaban 
    cout << "Bilangan prima diantara " << A << " sampai ";
    cout << B << " adalah" << endl;

    for (i = A; i <= B; ++i)
    {
        if (cekPrima(i)) {
            cout << i << endl;
        }
    }
    return 0;
}

bool cekPrima(int i) {
    int j;

    if (i <= 1) {
        return false;
    }
    else {
        int count = 0;
        for (j = 2; j*j <= i; ++j)
        {
            if (i % j == 0) {
                count++;
            }
        }

        if (count == 0) {
            return true;
        }
        else {
            return false;
        }
    }
}
```

## Bab 3 - Fungsi dan Prosedur
### Problem 7

Segitiga Pascal adalah segitiga yang dibuat dimulai dari angka 1 dan tiap angka di baris kedua dan selanjutnya berasal dari jumlah dua angka di atasnya. Berikut contoh 5 baris pertama Segitiga Pascal:

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1



Segitiga Pascal juga dapat dibentuk dari kombinatorik, dengan bilangan pada baris ke-i dan kolom ke-j bernilai C(i-1,j-1). Berikut adalah contoh penerapan pada 5 baris Segitiga Pascal.

C(0,0)

C(1,0) C(1,1)

C(2,0) C(2,1) C(2,2)

C(3,0) C(3,1) C(3,2) C(3,3)

C(4,0) C(4,1) C(4,3) C(4,4) C(4,5)


Buatlah sebuah program yang membuat Segitiga Pascal! (Buat fungsi Kombinasi(n, r) untuk
memudahkan penghitungan)


**Format Input & Output (input di-*bold*)**
***
Masukan jumlah baris: **5**

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1
***



### Solusi
Persoalan ini dengan mudah diselesaikan dengan menggunakan dua buah fungsi pembantu tambahan yaitu C yang menghitung hasil Kombinasi dan fungsi Faktorial yang menghitung hasil pemfaktorialan. Program utama akan mengiterasi nilai kombinasi sesuai dengan bentuk Segitiga Pascal, menghitungnya dan menuliskannya di layar. Untuk fungsi C akan memanggil fungsi Faktorial untuk menghitung nilai faktorial yang dibutuhkan. Fungsi C(i,j) akan menghitung nilai i!/j!(i-j)!. Terakhir fungsi Faktorial akan menghitung nilai faktorial suatu angka dengan mengiterasi dari 1 hingga angka itu.
```cpp
#include <iostream>
using namespace std;

int C(int i, int j);
// Fungsi ini akan mengembalikan nilai iCj
// yaitu kombinasi j buah benda yang mungkin dari
// i buah benda

int Faktorial (int i);
// Fungsi ini akan mengembalikan nilai i!
// yaitu nilai ix(i-1)x(i-2)...2x1 

int main()
{
    int N;
    int i, j;

    cout << "Masukan jumlah baris: ";
    cin >> N;

    for (i = 0; i < N; ++i)
    {
        for (j = 0; j <= i; ++j)
        {
            cout << C(i,j) << " ";
        }
        
        cout << endl;
    }

    return 0;
}

int C(int i, int j) {
    return Faktorial(i)/(Faktorial(j)*(Faktorial(i-j)));
}

int Faktorial (int i) {
    int count = 1;
    int j;

    for (j = 1; j <= i; ++j)
    {
        count *= j;
    }

    return count;
}
```

## Bab 4 - *Array*
### Problem 6

Adolf suka membandingkan kekayaan negaranya dan negara lain. Ia ingin mengetahui apa yang tidak dimiliki oleh negaranya di negara tetangga. Buatlah program untuk menentukan mana saja kekayaan negara tetangga yang tidak dimiliki oleh negara Adolf.

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kekayaan negara Adolf : **5**

Masukkan kekayaan negara Adolf :

**Emas**

**Perak**

**Berlian**

**Tank**

**Nuklir**

Masukkan jumlah kekayaan negara tetangga : **7**

Masukkan kekayaan negara tetangga :

**Emas**

**Perak**

**Tank**

**Nuklir**

**Berlian**

**Gedung**

**Ternak**

Negara adolf tidak memiliki :

Gedung

Ternak
***
***
Masukkan jumlah kekayaan negara Adolf : **5**

Masukkan kekayaan negara Adolf :

**Emas**

**Perak**

**Berlian**

**Tank**

**Nuklir**

Masukkan jumlah kekayaan negara tetangga : **3**

Masukkan kekayaan negara tetangga :

**Emas**

**Perak**

**Tank**

Negara adolf memiliki segalanya
***


### Solusi
Pada persoalan ini, program akan menyimpan setiap pembendaharaan Adolf ke dalam array kekayaanAdolf. Selanjutnya ketika daftar benda negara tetangga dimasukkan langsung dilakukan pengecekan apakah benda tersebut sudah dimiliki oleh Adolf atau belum. Jika belum dimiliki, maka nama barang akan dimasukkan dalam array kekayaanTetangga yang kemudian pasti akan dituliskan ke layar. Di dalam runtime, jika memang terdapat benda yang dimiliki negara tetangga namun tidak dimiliki Adolf, maka akan dituliskan ke layar dan jika tidak maka akan diberitahukan pula bahwa tidak ada. Hal ini disimpan dalam angka NeffTetangga yang akan bernilai 0 jika tidak ada benda yang dimiliki negara tetangga dan tidak dimiliki Adolf.
```cpp
#include <iostream>
using namespace std;

int main()
{
    int NAdolf, NTetangga, NeffTetangga = 0;
    int i, j;

    cout << "Masukkan jumlah kekayaan negara Adolf : ";
    cin >> NAdolf;
    string kekayaanAdolf[NAdolf];
    cout << "Masukkan kekayaan negara Adolf :" << endl;
    for (i = 0; i < NAdolf; ++i)
    {
        cin >> kekayaanAdolf[i];
    }

    cout << "Masukkan jumlah kekayaan negara tetangga : ";
    cin >> NTetangga;
    string kekayaanTetangga[NTetangga];
    string temp;
    cout << "Masukkan kekayaan negara tetangga :" << endl;
    for (i = 0; i < NTetangga; ++i)
    {
        cin >> temp;

        j = 0;
        while (j < NAdolf && (kekayaanAdolf[j] != temp)) {
            j++;
        }

        if (j == NAdolf) {
            kekayaanTetangga[NeffTetangga] = temp;
            NeffTetangga++;
        }
    }

    if (NeffTetangga == 0) {
        cout << "Negara adolf memiliki segalanya" << endl;
    }
    else {
        cout << "Negara adolf tidak memiliki :" << endl;
        for (i = 0; i < NeffTetangga; ++i)
        {
            cout << kekayaanTetangga[i] << endl;
        }
    }

    return 0;
}
```

## Bab 5 - Matriks dan File Eksternal
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


### Solusi
Untuk menyelesaikan permasalahan ini program akan membaca matriks angka tesebut dan menyimpannya dalam array NxN terlebih dahulu. Ketika sudah dimasukkan maka akan dihitung jumlah angka dalam jejeran diagonal-kiri atas ke kanan-bawah sebagai patokan jumlah. Selanjutnya patokan tersebut dibandingkan dengan yang ada pada tempat lain secara berturut-turut yaitu dengan diagonal satunya lagi, dengan setiap baris dan terakhir dengan setiap kolom. Terakhir apabila seluruhnya memang sesuai dengan patokan jumlah yang pertama tadi, maka akan dicek apakah isi matriks unik. Jika semua pengecekan lulus, maka akan dituliskan "Yes" dan jika tidak akan dituliskan "No" di layar. 
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main()
{
    int N, i, j;
    ifstream file("matriks.txt");

    file >> N;
    int matriks[N][N];
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            file >> matriks[i][j];
        }
    }
    file.close();

    cout << "matriks loaded!" << endl;

    bool flag = true;

    int sum = 0;
    // Cek jumlah diagonal kiri atas ke kanan bawah sebagai patokan
    for (i = 0; i < N; i++) {
        sum += matriks[i][i];
    }

    // cek jumlah diagonal satu lagi apakah sama
    int sum1 = 0;
    for (i = 0; i < N; i++) {
        sum1 += matriks[i][N-1-i];
    }

    flag = sum1 == sum;

    // cek horizontal
    i = 0;
    while (flag && i < N) {
        int sum1 = 0;
        for (j = 0; j < N; j++) {
            sum1 += matriks[i][j];
        }

        flag = sum1 == sum;
        i++;
    }

    // cek vertikal
    i = 0;
    while (flag && i < N) {
        int sum1 = 0;
        for (j = 0; j < N; j++) {
            sum1 += matriks[j][i];
        }

        flag = sum1 == sum;
        i++;
    }

    // cek apakah bilangan unik
    bool cekUnik[N*N];
    for (i = 0; i < N*N; i++) {
        cekUnik[i] = false;
    }

    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            cekUnik[(matriks[i][j]) - 1] = true;
        }
    }

    // Jika ada yang tidak terisi (elemen ada yang tidak unik) 
    // maka nilai flag akan false
    i = 0;
    while (flag && (i < N*N)) {
        flag = cekUnik[i];
        i++;
    }

    if (flag) {
        cout << "Yes" << endl;
    }
    else {
        cout << "No" << endl;
    }

    return 0;
}
```