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

	Pembuat
	Nama	: Tony
	Nim		: 13516010

------

------

# Daftar Isi

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
  - [Problem 5](#problem-5)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 4](#problem-4-1)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 3](#problem-3-2)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 2](#problem-2-3)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 1](#problem-1-4)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
------

------

## Bab 1 - Percabangan
---------------------------------
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

------------------------------
### Solusi

```cpp
#include <iostream>

using namespace std;

int main(){
	/* Kamus */
	string nama;
	int nilai;
	
	/* Algoritma */
	cout<<"Masukan Nama : ";
	cin>>nama;
	cout<<"Masukan Nilai : ";
	cin>>nilai;
	
	cout<<nama<<" mendapat nilai ";
	if(nilai >= 81){       /* nilai >= 81 dan nilai <= 100 */
		cout<<"A";
	}
	else if(nilai >= 61){  /* nilai >= 61 dan nilai <= 80 */
		cout<<"B";
	}
	else if(nilai >= 41){  /* nilai >= 41 dan nilai <= 60 */
		cout<<"C";
	}
	else if(nilai >= 21){  /* nilai >= 21 dan nilai <= 40 */
		cout<<"D";
	}
	else{                  /* nilai >= 0 dan nilai <= 20 */
		cout<<"E";
	}
	cout<<endl;
	return 0;
}
```

#### Penjelasan
Pada percabangan, bagian percabangan yang akan dimasukki adalah yang pertama sesuai kondisi.

Input nilai berada pada rentang 0 hingga 100, sehingga pada kondisi pertama jika nilai lebih dari sama dengan 81 maka akan masuk percabangan pertama, 
jika tidak akan di cek pada kondisi kedua dan seterusnya. jika sampai kondisi ke-4 tidak terpenuhi, maka akan masuk percabangan else.

---------------------------------
---------------------------------

## Bab 2 - Pengulangan
---------------------------------
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

-----------------------
### Solusi

```cpp
#include <iostream>

using namespace std;

int main(){
	/* Kamus */
	int banyak_mahasiswa, nilai_mahasiswa;
	int banyak_lulus, banyak_tidak_lulus;
	
	/* Algoritma */
	banyak_lulus = 0;
	banyak_tidak_lulus = 0;
	cout<<"Banyak mahasiswa :";
	cin>>banyak_mahasiswa;
	
	for(int i=1;i<=banyak_mahasiswa;++i){
		cout<<"Nilai anak ke-"<<i<<" :";
		cin>>nilai_mahasiswa;
		if(nilai_mahasiswa>=60){
			banyak_lulus++;
		}
		else{
			banyak_tidak_lulus++;
		}
	}
	
	cout<<"Total mahasiswa yang lulus = "<<banyak_lulus<<endl;
	cout<<"Total mahasiswa yang tidak lulus = "<<banyak_tidak_lulus<<endl;
	return 0;
}
```

#### Penjelasan

Untuk dapat melakukan input berulang sebanyak N perlu penggunaaan perulangan for.

Dalam persoalan ini dapat digunakan variabel sebagai counter/penghitung untuk menghitung
berapa banyak yang nilainya dibawah 60 ataupun sebaliknya dengan percabangan.

-----------------------
------

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

------------------
### Solusi

```cpp
#include <iostream>

using namespace std;

bool komposit(int nilai){
	/* Algoritma */
	for(int pem=2;pem<nilai;++pem){
		if(nilai%pem==0){
			return true;
		}
	}
	return false;
}

int main(){
	/* Kamus */
	int A, B, tmp;
	
	/* Algoritma */
	cout<<"Masukkan nilai A : ";
	cin>>A;
	cout<<"Masukkan nilai B : ";
	cin>>B;
	if(A>B){   /* Jika nilai A lebih besar dari B, ditukar nilainya */
		tmp = A;
		A = B;
		B = tmp;
	}
	
	cout<<"Bilangan komposit diantara "<<A<<" sampai "<<B<<" adalah:"<<endl;
	for(int nilai=A+1;nilai<B;++nilai){
		if(komposit(nilai)){
			cout<<nilai<<endl;
		}
	}
	return 0;
}
```

#### Penjelasan

Untuk mengetahui apakah suatu nilai `N` komposit atau tidak dapat di cek  jika suatu nilai memiliki pembagi 
bilangan bulat positif selain 1 dan angka itu sendiri. hal ini dapat dilakukan dengan menggunakan perulangan untuk angka dari `2` hingga `N-1`.
Sutatu nilai `K` habis membagi bilangan `N`, jika `N` di modulo (%) `K` bernilai `0`.
Untuk memperpendek kode di `main()` dapat digunakan fungsi bertipe `bool` (boolean) yang mengembalikkan `true` jika bilangan tersebut merupakan komposit dan `false` jika bilangan tersebut prima.

Dalam fungsi `komposit`, dalam perrulangan `for`, jika ditemukan ada pembagi positif maka dapat langsung segera di `return true`, karena bilangan tersebut sudah pasti bilangan komposit.

-----------------
------

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

-----------------
### Solusi

```cpp
#include <iostream>

using namespace std;

int main(){
	/* Kamus */
	int banyak_warna, banyak_barang;
	string warna[10002], barang[10002];
	
	/* Algoritma */
	cout<<"Masukkan jumlah warna : ";
	cin>>banyak_warna;
	cout<<"Masukkan nama warna :"<<endl;
	for(int i=0;i<banyak_warna;++i){
		cin>>warna[i];
	}
	cout<<"Masukkan jumlah barang : ";
	cin>>banyak_barang;
	cout<<"Masukkan nama barang :"<<endl;
	for(int i=0;i<banyak_barang;++i){
		cin>>barang[i];
	}
	
	cout<<"Ide barang selanjutnya :"<<endl;
	for(int i=0;i<banyak_barang;++i){
		for(int j=0;j<banyak_warna;++j){
			cout<<barang[i]<<" "<<warna[j]<<endl;
		}
	}
	cout<<"Terdapat "<<banyak_barang*banyak_warna<<" ide yang mungkin"<<endl;
	return 0;
}
```

#### Penjelasan
Array merupakan salah satu struktur data dasar pada c++. Pada c++ indeks `array` dimulai pada indeks ke-0, sehingga indeks `array` yang dapat digunakan untuk `array` berukuran `N` adalah `0` sampai `N-1`.

Pertama, yang dilakukan adalah membaca input dan menyimpannya dalam `array`. Untuk mengkombinasikan jawaban dapat digunakan perulangan `for` dalam perulangan `for`.
Hal tersebut digunakan karena kita ingin memasangkan tiap barang dengan warna dari indeks `ke-0` hingga indeks warna `ke-(M-1)`, 
sehingga akan ada M kali perulangan untuk tiap barang. jika terdapat `N` barang, maka dilakukan perulangan sebanyak `N` kali yang tiap barang dilakukan perulangan `M` kali.

Perulangan `for` luar digunakan untuk indeks barang dan perulangan `for` dalam digunakan untuk indeks warna. akan terdapat `N*M` kombinasi.


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
### Solusi

```cpp
#include <iostream>
#include <fstream>

using namespace std;

int main(){
	/* Kamus */
	int N;
	int matriks[501][501];
	ifstream file;
	bool bysimmetric;
	
	/* Algoritma */
	file.open("matriks.txt");
	if(file.is_open()){
		cout<<"matriks loaded!"<<endl;
		file >> N;
		for(int i=0;i<N;++i){
			for(int j=0;j<N;++j){
				file >> matriks[i][j];
			}
		}
		bysimmetric = true;
		for(int i=0;i<N-1;++i){
			for(int j=0;j<N-i-1;++j){
				if(matriks[i][j] != matriks[N-1-j][N-1-i]){
					bysimmetric = false;
				}
			}
		}
		for(int i=0;i<N-1;++i){
			for(int j=0;j<N-i-1;++j){
				if(matriks[N-1-i][j] != matriks[j][N-1-i]){
					bysimmetric = false;
				}
			}
		}
		if(bysimmetric){
			cout<<"Yes"<<endl;
		}
		else{
			cout<<"No"<<endl;
		}
	}
	else{
		cout<<"matriks not loaded!"<<endl;
	}
	file.close();
	return 0;
}
```

#### Penjelasan

Untuk membaca file dapat digunakan ifstream. jika ingin melakukan pembacaan maupun penulisan file harus terlebih dahulu membukan file dengan fungsi bawaan `open()` dan memastikan
file tersebut sudah dibuka dengan menggunakan fungsi bawaan `is_open()`.

Untuk membaca masukkan matriks berukuran `N` dapat digunakan perulangan `for` dalam perulangan `for` yang perulangan luar untuk indeks baris dan 
perulangan dalam untuk indeks kolom.

Suatu matriks dikatakan bysimmetric jika elemenya simetri terhadap kedua diagonal, sehingga jika ditarik gari diagonal dari kiri bawah ke kanan atas, maka elemen matriks pada indeks [i][j] sama dengan elemen matriks pada indeks [N-j-1][N-i-1],
dan jika ditarik garis diagonal dari kiri bawah ke kanan atas, maka elemen matriks pada indeks [N-i-1][j] sama dengan elemen matriks pada indeks [N-j-1][i].

------------------------------
------------------------------