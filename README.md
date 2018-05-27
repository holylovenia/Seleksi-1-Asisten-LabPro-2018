# Seleksi 1 Asisten LabPro 2018
-----------------------------------
Nama : Yasya Rusyda Aslina
NIM    : 13516091
- Deskripsi semua soal yang dikerjakan
- *Source code* solusi untuk semua soal yang dikerjakan- Penjelasan solusi untuk semua soal yang dikerjakan
- Direktori **src**, berisi file-file solusi soal, dengan format nama file **X-ProblemYY.eks**
    - **X** adalah nomor bab
    - **YY** adalah nomor problem
    - **eks** adalah ekstensi file solusi (sesuai bahasa pemrograman)
    - Contoh: 4-Problem03.pas
- Pemakaian fungsi bawaan yang berlebihan tidak diperbolehkan.
- ***Deadline pull request:*** Minggu, 27 Mei 2018 pukul 23.59, dengan subjek **[NIM] - Seleksi 1 Asisten LabPro 2018** (contoh: 13515113 - Seleksi 1 Asisten LabPro 2018). Jangan lupa segera di-*public* setelah melakukan *deadline* berlalu.
- *Have a nice day!*

------

## Bab 1 - Percabangan
---------------------------------
### Problem 1
Tuan Vin diminta oleh temannya untuk mencatat jurusan-jurusan teman seangkatannya. Karena jumlahnya banyak, Tuan Vin tidak ingat siapa masuk jurusan mana. Dia hanya tahu bahwa 3 angka pertama NIM temannya menunjukkan jurusan mereka.


| Kode    | Jurusan                        |
| ------- | ------------------------------ |
| 135     | Teknik Informatika             |
| 180     | Teknik Tenaga Listrik          |
| 181     | Teknik Telekomunikasi          |
| 182     | Sistem Teknologi dan Informasi |
| Lainnya | ???                            |


Karena Tuan Vin harus menyerahkan hasilnya secepatnya, Tuan Vin meminta bantuan Anda untuk mempermudah pekerjaannya.


**Format Input & Output (input di-*bold*)**
***
Masukan Nama : **Kevin**

Masukan NIM : **13520001**

Kevin adalah mahasiswa Teknik Informatika
***
Masukan Nama : **Richard**

Masukan NIM : **18120999**

Richard adalah mahasiswa Teknik Telekomunikasi
***
Masukan Nama : **Albert**

Masukan NIM : **17720900**

Albert adalah mahasiswa ???
***

NIM dipastikan selalu 8 angka
----------------
Penjelasan: penanganan kasus pada problem ini menggunakan if karena untuk menangani kasus string pada c++ tidak dapat menggunakan switch case. Secara default, program akan menentukan bahwa jurusan setiap orang merupakan "???" atau tidak terdefinisi, kemudian melalu if, program dapat menentukan jurusan yang tepat pada kasus yang tepat. Hal ini dilakukan untuk mengurangi penanganan kasus else yang jurusannya tidak terdefinisi.



### Problem 12


Setelah selesai sidang tugas akhir di ITB, seorang mahasiswa ingin membuka sebuah restoran. Mahasiswa itu pun mengadakan survey, dan ternyata mahasiswa ITB senang makan pizza. Oleh karenanya, mahasiswa tersebut memutuskan untuk menjual pizza. Karena malas, mahasiswa tersebut ingin mengetahui berapa kali ia harus melakukan pemotongan pizza untuk memotong pizza tersebut menjadi **N** bagian. Contohnya adalah sebagai berikut.




Dapat dilihat pada gambar, untuk memotong pizza menjadi **4** bagian, mahasiswa tersebut perlu memotong pizza sebanyak **2** kali. Untuk menghitung jumlah pemotongan yang dibutuhkan, maka mahasiswa tersebut memutuskan untuk membuat sebuah program. Program tersebut menerima angka jumlah pemotongan, dan akan mengeluarkan jumlah potongan maksimal yang didapat. Berikut ini adalah contoh masukan dan keluaran dari program dari program


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan jumlah pemotongan :2  
Potongan maksimal yang didapat adalah 4  


Masukan jumlah pemotongan :7  
Potongan maksimal yang didapat adalah 29  
```
**Hint :** 
Rumus untuk mengitung jumlah pemotongan ke n adalah
*f(n) = n + f(n - 1)*, dimana f(0) = 1
-----------
penjelasan:
dengan menggunakan rumus terlihat jelas bahwa pengulangan dilakukan sebanyak n kali pemotongan dengan 0 pemotongan menghasilkan 1 hasi potongan. Dilakukan iterasi hasil pemotongan sebelumnya dengan jumlah pemotongan yang sedang dilakukan sekarang ( n + f(n-1))
-----------------------
-----------------------
------

## Bab 3 - Fungsi dan Prosedur

### Problem 11

Bilangan menanjak adalah bialngan yang memiliki angka pada digit satuan lebih kecil dari digit puluhan, pada digit puluhan lebih kecil dari digit ratusan, dan seterusnya. Buatlah sebuah program yang memeriksa apakah sebuah bilangan N (0 ≤ N < 2000000000) adalah bilangan menanjak atau bukan!


**Format Input & Output (input di-*bold*)**
***
Masukkan N: **987654321**

Bilangan 987654321 adalah bilangan menanjak.
***
Masukkan N: **1**

Bilangan 1 adalah bilangan menanjak.
***
Masukkan N: **123456789**

Bilangan 123456789 bukan bilangan menanjak.
***
----------
penjelasan:
untuk mengecek apakah sebuah bilangan menanjak atau bukan, maka perlu dibuat fungsi yang menhasilkan boolean true or false. fungsi ini merupakan fungsi rekursif yang membandingkan 2 angka bersebelahan. jika sesuai dengan syarat menanjak maka akan dilanjutkan dan terakhir berhenti ketika hasil div bilangan dengan m yang telah terakumulasi kurang dari 1 atau akan berhenti melakukan rekursif karena bilangan semua digit telah dibandingkan kecuali digit satuan. Setelah berhenti maka dilihat digit satuannya jika dibandingkan dengan digit puluhan memenuhi maka akan menghasilkan true. pembandingan angka dilakukan dengan div dan mod untuk menghasilkan satu digit yang dapat dibandingkan satu sama lain.

------------------
-----------------
------

## Bab 4 - *Array*


### Problem 10

Julia baru saja membolos kelas kalkulus. Padahal saat itu baru saja diajarkan tentang integral persamaan matematika biasa. Sebagai teman yang baik, buatlah sebuah program yang dapat melakukan integral pada persamaan matematika

**Format Input & Output (input di-*bold*)**
***
Masukkan pangkat paling besar : **1**

Masukkan koefisien x^1 : **5**

Masukkan koefisien x^0 : **2**

Maka hasil integralnya adalah 2.5x^2 + 2x^1 + c
***
***
Masukkan pangkat paling besar : **2**

Masukkan koefisien x^2 : **6**

Masukkan koefisien x^1 : **3**

Masukkan koefisien x^0 : **2**

Maka hasil integralnya adalah 2x^3 + 1.5x^2 + 2x^1 + c
***
penjelasan:

dari masukan pangkat paling besar dapat ditentukan ukuran array yg harus dibuat. maka selanjutnya pengguna akan memasukan elemen array tersebut sesuai dengan koefisiennya. indeks disini merupakan koefisiennya. setelah itu menggunakan rumus integral, program akan menyimpan hasil integralnya ke dalam sebuah array juga.
-----------------
-----------------
## Bab 5 - Matriks dan File Eksternal

### Problem 9

Kota Bikini Batem pada masa depan sudah penuh sesak dengan penduduk. Saking sesaknya, rumah-rumah penduduk saling berdekatan satu sama lain dan dapat digambarkan sebagai *cell* matriks persegi (berukuran `N`x`N`). Suatu hari, sebuah virus mematikan menyerang kota tersebut. Pada awalnya, hanya ada beberapa rumah yang terjangkit. Namun, dalam satu hari virus ini dapat menjangkit tetangga dari rumah tersebut. Tetangga dalam hal ini didefinisikan sebagai *cell-cell* yang bersinggungan dengan *cell* tersebut (satu *cell* maksimal mempunyai 8 tetangga). Tugas Anda adalah menghitung berapa lama waktu yang dibutuhkan (dalam hari) untuk virus tersebut menjangkit seluruh kota.

**Format *Input* dan *Output***
*Input* berupa kondisi awal kota ketika virus pertama kali menjangkit, yang disimpan dalam file eksternal `city.txt`. Rumah yang sehat direpresentasikan dengan karakter `H`, dan rumah yang terjangkit direpresentasikan dengan karakter `U`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah karakter yang merupakan elemen matriks pada baris tersebut.
*Output* berupa informasi mengenai lama waktu yang dibutuhkan hingga seluruh rumah di kota Bikini Batem terjangkit virus.
/Users/yasyars/Desktop/Screen Shot 2018-05-28 at 00.04.19.png
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

dengan menggunakan fungsi pengecekan kondisi bikini batem, program melihat jika seluruh rumah berstatus U maka berarti sudah selesai jika belum akan melanjutkan ke algoritma ini dimaana program akan melihat tetangga dari rumah yg berstatus U untuk diubah statusnya sambil menghitung jumlah hari yang dibutuhkan. Satu kali pengulangan seluruh rumah jika terdapat perubahan maka, hari bertambah 1. begitu terus hingga seluruh rumah berstatus U
