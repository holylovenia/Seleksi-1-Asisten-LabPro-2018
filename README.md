# Seleksi 1 Asisten LabPro 2018
NIM   : 18216011
NAMA  : Akbar Ghifari

## Bab 1 - Percabangan
---------------------------------
### Problem 7
Anda sedang bermain suit dengan Tuan Vin. Suit adalah permainan yang mengeluarkan batu, gunting atau kertas, dan pemenang ditentukan dari apa yang mereka keluarkan. Batu menang melawan gunting, gunting menang melawan kertas, kertas menang melawan batu. Karena Anda terus kalah, Anda menantang Tuan Vin untuk mengalahkan program Anda dalam suit. Tuan Vin pun setuju, tapi Anda hanya diperbolehkan menggunakan **batu atau kertas saja**. Dapatkah Anda membuat program yang tidak pernah kalah dari Tuan Vin?
**Format Input & Output (input di-*bold*)**
***
Tuan Vin mengeluarkan: **gunting**

Anda mengeluarkan: **batu**
***
Tuan Vin mengeluarkan: **kertas**

Anda mengeluarkan: **kertas**
***
Penjelasan contoh 2:
Karena Anda hanya boleh mengeluarkan batu atau kertas saja, maka agar tidak kalah Anda harus menang atau memaksa seri dengan mengeluarkan kertas lagi.
-----------------------------------
/* NIM/NAMA	 : 18216011/Akbar Ghifari
 * TANGGAL	  : 21/05/18
 * SOAL		    : BAB 1 PROBLEM 7 (Batu dan kertas)
 */

/* ASUMSI:
 * Hanya dilakukan satu kali per run
 * Hanya menerima lowercase dari "baru", "gunting", dan "kertas"
 * Anda dapat menang atau seri (tidak dapat kalah)
 */

#include <iostream>
#include <string>
using namespace std;

int main(){
	string out_vin;
	string out_me;
	bool valid = false;

    cout << "Tuan vin mengeluarkan: ";
    cin >> out_vin;
    cout << "Anda mengeluarkan: ";

    while (!valid){
        cin >> out_me;
        if ((out_vin == "gunting") && (out_me == "batu")){
            valid = true;
        } else if ((out_vin == "kertas") && (out_me == "kertas")){
            valid = true;
        } else if ((out_vin == "batu") && ((out_me == "kertas")||(out_me == "batu"))){
            valid = true;
        } else {
            cout << "Masukan tidak diterima, silakan keluarkan batu atau kertas: ";
        }
    }
    return 0;
}
-----------------------------------
------------PENJELASAN-------------
Program menggunakan looping while untuk membersihkan input karena program mengharuskan user untuk selalu menang atau memaksakan seri dalam konstrain yang diberikan (hanya dapat menggunakan batu atau kertas). Program dimulai dengan deklarasi string input dan output dengan boolean valid atau tidaknya input yang diberikan. Setelah itu program akan memulai loop dengan statement kondisional yang akan memberikan output permintaan untuk melakukan input lagi jika input sebelumnya tidak valid. Jika input valid, program akan selesai karena user menang/seri sesuai dengan peraturan permainan.


## Bab 2 - Pengulangan
---------------------------------
### Problem 6
Seorang mahasiswa menabung di sebuah bank.Banknya tempat mahasiswa tersebut menabung menggunakan sistem bunga majemuk.Karena kesulitan menghitung, mahasiswa tersebut ingin mengetahui berapa jumlah uang per bulannya. Selain itu, ia juga berencana menabung secara konsisten setiap bulannya. Bantulah ia untuk menghitung tabungannya.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan uang tabungan :1000 
Masukan persen bunga :10
Masukan lama menabung :4 
Tabungan pada bulan ke-1 = 1100  
Tabungan pada bulan ke-2 = 2310  
Tabungan pada bulan ke-3 = 3641  
Tabungan pada bulan ke-4 = 5105  
```


Penjelasan : Uang Tuan Vin pada bulan pertama adalah 1000 + 100 = 1100. Pada bulan kedua, uang Tuan
Vin menjadi (1100 + 1000) + (1100 + 1000) * 10% = 2310. Pada bulan ketiga, (2310 + 1000) + (2310 + 1000) * 10% =  3641.

Dan pada bulan keempat, uang Tuan Vin menjadi (3641 + 1000) + (3641 + 1000) * 10% =  5105. Anda dapat mengabaikan seluruh digit dibelakang koma.
-----------------------------------
/* NIM/NAMA	 : 18216011/Akbar Ghifari
 * TANGGAL	  : 21/05/18
 * SOAL		    : BAB 2 PROBLEM 6 (Tabungan Rutin Bunga Majemuk)
 */

#include <iostream>
using namespace std;

/* ASUMSI:
 * 0 <= uang tabungan <= (2^32)-1
 * 0 <= bunga <= 100
 * 0 <= lama menabung <= 100
 */

int main(){
    float uang;
    int bunga;
    int durasi;

    cout << "Masukan uang tabungan: ";
    cin >> uang;
    cout << "Masukan persen bunga: ";
    cin >> bunga;
    cout << "Masukan lama menabung: ";
    cin >> durasi;

    //JIKA BELUM SAMPAI 1 BULAN
    if (durasi == 0){
        cout << "Tabungan pada bulan ke-0 = " << uang << endl;
    } else {
        for (int i = 1; i <= durasi ; i++){
            //PENAMBAHAN BUNGA
            uang = uang * ((float)(100+bunga)/100);
            cout << "Tabungan pada bulan ke-" << i << " = " << (int)uang << endl;

            //TABUNGAN RUTIN
            uang = uang + 1000;
        }
    }
    return 0;
}
-----------------------------------
------------PENJELASAN-------------
Program dimulai dengan deklarasi variabel dan input dari masing-masing variable. if-condition pertama akan menyaring keberadaan kasus khusus jika durasi = 0 (tabungan user tidak berbunga/ belum menabung). Selanjutnya jika bukan kasus khusus, input akan diproses dalam looping for untuk menambahkan bunga sesuai dengan saldo terakhir. Casting dari (100+bunga) menuju float diperlukan untuk menemukan hasil bagi yang tepat. Selanjutnya saldo akan ditambahkan nominal tabungan rutin dan loop akan berjalan terus hingga jumlah perkalian mencapai durasi tabungan yang diinginkan.


## Bab 3 - Fungsi dan Prosedur
---------------------------------
### Problem 4
Bilangan prima adalah bilangan yang hanya habis dibagi oleh 1 dan bilangan itu sendiri. Buatlah program yang menentukan semau bilangan prima diantara dua buah bilangan A dan B (0  ≤ A, B ≤ 100000) inklusif.
Catatan : Buatlah fungsi yang memeriksa apakah sebuah bilangan adalah bilangan prima atau bukan.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai A : **0**

Masukkan nilai B : **10**

Bilangan prima diantara 0 sampai 10 adalah:

2

3

5

7
***
Masukkan nilai A : **25**

Masukkan nilai B : **10**

Bilangan prima diantara 10 sampai 25 adalah:

11

13

17

19

23
***
-----------------------------------
/* NIM/NAMA	 : 18216011/Akbar Ghifari
 * TANGGAL	  : 21/05/18
 * SOAL		    : BAB 3 PROBLEM 4 (Bilangan Prima)
 */

#include <iostream>
using namespace std;

bool prime (int X){
    if ((X==1)||(X==0)){
        return false;
    } else {
        int divisor = X-1;
        int counter = 0;
        while (divisor != 1){
            if (X % divisor == 0){
                counter++;
            }
            divisor--;
        }
        //EKSKULSIF 1 DAN X
        if (counter == 0){
            return true;
        } else {
            return false;
        }
    }
}

int main(){
    int A;
    int B;

    cout << "Masukkan nilai A : ";
    cin >> A;
    cout << "Masukkan nilai B : ";
    cin >> B;

    if (B < A){
        int temp;
        temp = A;
        A = B;
        B = temp;
    }

    cout << "Bilangan prima diantara " << A << " sampai " << B << " adalah:" << endl;
    while (A != B+1){
        if (prime(A)){
            cout << A << endl;
        }
        A++;
    }
    return 0;
}
-----------------------------------
------------PENJELASAN-------------
Dengan menggunakan fungsi isPrime yang menentukan bilangan prima dengan membagi bilangan tersebut dari rentangnya hingga mencapai 1 (sebuah angka dinilai prima jika ia tidak habis dibagi dengan angka yang berada pada rentang 1-N (angka itu sendiri)), kita dapat menemukan bilangan-bilangan prima lainnya dari rentang A-B maupun B-A. Iterasi akan berjalan dari A sampai B (A lebih kecil dibandingkan B) yang akan melakukan print terhadap seluruh bilangan yang dinilai oleh fungsi isPrime merupakan bilangan prima.



## Bab 4 - *Array*
---------------------------------
### Problem 3
Pada suatu acara pernikahan diadakan undian berhadiah mobil. Setiap tamu yang masuk ke dalam ruangan memiliki nomor unik. Tamu-tamu yang memiliki nomor tertentu akan mendapatkan hadiah. Setiap tamu yang memiliki nomo yang merupakan bilangan fibonnaci akan mendapatkan hadiah. Buatlah program untuk mencari siapa tamu yang mendapatkan hadiah

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah tamu : **10**

Masukan nama tamu 1 : **Asep**

Masukan nama tamu 2 : **Budi**

Masukan nama tamu 3 : **Charlie**

Masukan nama tamu 4 : **Doddy**

Masukan nama tamu 5 : **Erma**

Masukan nama tamu 6 : **Frans**

Masukan nama tamu 7 : **Gelbert**

Masukan nama tamu 8 : **Hans**

Masukan nama tamu 9 : **Iwan**

Masukan nama tamu 10 : **Julia**

Tamu yang akan mendapat hadiah adalah :

Asep

Budi

Charlie

Erma

Hans
***
-----------------------------------
/* NIM/NAMA	 : 18216011/Akbar Ghifari
 * TANGGAL	  : 21/05/18
 * SOAL		    : BAB 4 PROBLEM 3 (Tamu Pernikahan)
 */

#include <iostream>
using namespace std;

int main(){
    int N;
    int i;

    do{
        cout << "Masukkan jumlah tamu: ";
        cin >> N;
        }
    while ((N<1)||(N>10000));

    string tamu[N+1];
    for (i = 1; i <=N; i++){
        cout << "Masukkan nama tamu " << i << " : ";
        cin >> tamu[i];
    }

    i = 1;
    int temp_1 = 1;
    int temp_2 = 1;

    cout << "Tamu yang akan mendapat hadiah adalah :" << endl;
    while(i <= N){
        cout << tamu[i] << endl;
        //COUNTER FIBONACCI
        i = temp_1 + temp_2;
        temp_1 = temp_2;
        temp_2 = i;
    }

    return 0;
}
-----------------------------------
------------PENJELASAN-------------
Setelah input N dan i, iterasi untuk menetukan bilangan fibonacci dimulai dari 1 (temp_1, dan temp_2) karena Tamu urutan 1 akan muncul 2 kali jika kita mulai dari 0. Selanjutnya setiap i akan di print dengan melakukan penyimpanan 2 nilai sebelumnya dalam temp_1 dan temp_2 untuk memunculkan bilangan fibonacci setelahnya.



## Bab 5 - Matriks dan File Eksternal
---------------------------------
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
/* NIM/NAMA	 : 18216011/Akbar Ghifari
 * TANGGAL	  : 21/05/18
 * SOAL		    : BAB 5 PROBLEM 2 (File Eksternal)
 */

#include <iostream>
#include <fstream>
using namespace std;

int main(){
    ifstream in;
    ofstream out;
    int N;
    int i, j;
    int rot;

    //PEMBUKAAN FILE EKSTERNAL
    in.open("image.txt");
    if (in.is_open()){
        //INPUT DIMENSI MATRIKS N*N
        in >> N;
    }

    //PEMBACAAN MATRIKS
    int M[N][N];
    i = 0;
    j = 0;
    while (!in.eof()){
        for (j=0; j<N; j++){
            if (in != " "){
                in >> M[i][j];
            }
        }
        i++;
    }

    //INPUT JUMLAH ROTASI
    cout << "file loaded!" << endl;
    cout << "Masukkan banyak rotasi : ";
    cin >> rot;

    rot = rot %4;
    int arr[N][N];

    //PEMINDAHAN HASIL ROTASI KE 'OUT'
    for (int cc = 0; cc < rot; cc++){
        for (i = 0; i<N; i++){
            for (j = 0; j<N; j++){
                arr[j][N-i-1] = M[i][j];
            }
        }

        //ARRAY COPY
        for (i = 0; i<N; i++){
            for (j = 0; j<N; j++){
                M[i][j] = arr[i][j];
            }
        }
    }

    //PRINT FILE EKSTERNAL
    out.open("result.txt");
    out << N << endl;
    for (i=0; i<N; i++){
        for (j=0; j<N; j++){
            out << M[i][j] << " ";
        }
        out << endl;
    }

    cout << "result exported!";

    return 0;
}
-----------------------------------
------------PENJELASAN-------------
Load dan save akan dilakukan ke file external image.txt dan result.txt. Pada dasarnya program hanya akan melakukan rotasi sesuai dengan jumlah yang diberikan (N), sehingga looping akan bekerja N mod 4 kali sesuai dengan input. Program akan memindahkan angka pada matriks pertama sesuai dengan posisi barunya pada matriks kedua, setelah itu matriks kedua akan dicopy ke matrix pertama agar iterasi dapat dilanjutkan.
