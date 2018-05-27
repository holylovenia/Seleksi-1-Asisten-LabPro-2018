## Bab 1 - Percabangan
### Problem 7

[[source code]](src/1-Problem07.pas)

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

---------------------------------
**Penjelasan Solusi**

Setelah menerima input dari user, dilakukan percabangan jika user memilih mengeluarkan batu maka akan mengeluarkan output kertas, jika user memilih mengeluarkan gunting, maka akan mengeluarkan output batu, dan jika user memilih mengeluarkan kertas, maka akan mengeluarkan output kertas lagi karena untuk mengalahkan kertas harus menggunakan gunting, sedangkan hanya bisa menggunakan batu atau kertas.

---------------------------------
## Bab 2 - Pengulangan

### Problem 6
[[source code]](src/2-Problem06.pas)

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

---------------------------------
**Penjelasan Solusi**

Setelah menerima input dari user, akan dilakukan pengulangan sebanyak lama menabung, setiap pengulangan akan dilakukan penambahan ke saldo bank yang merupakan variabel dengan nama "bank". Setelah itu dari saldo yang ada akan ditambahkan dengan bunga yang didapat pada bulan tersebut, lalu hasil tersebut yang dicetak ke layar.

---------------------------------
## Bab 3 - Fungsi dan Prosedur

### Problem 5
[[source code]](src/3-Problem05.pas)

Seorang mahasiswa sedang mengantri untuk mendapatkan nomor peserta dari lomba nyanyi yang ia ikuti. Ia pun sangat deg-degan karena kakeknya pernah bermimpi bila Tuan Vin mendapatkan nomor peserta Lucky 7, tuan Vin sudah pasti memenangkan lomba ini. Apa itu Lucky 7? Lucky 7 adalah bilangan yang mengandung digit 7 dan juga habis dibagi 7. Sebagai contoh 77 merupakan Lucky 7 sementara 76 bukan karena tidak habis dibagi 7. Diberikan nomor peserta yang didapatkan oleh mahasiswa tersebut, tentukan apakah mahasiswa tersebut akan memenangkan lomba menyanyi ini.


**Format Input & Output (input di-*bold*)**
***
Masukan nomor peserta: 117

Mahasiswa tersebut akan kalah!
***
Masukan nomor peserta: 77

Mahasiswa tersebut akan menang!
***

---------------------------------
**Penjelasan Solusi**

Terdapat dua fungsi pembantu pada solusi ini. 
1. Pertama adalah fungsi pembantu untuk mengetahui apakah terdapat angka 7 di dalam nomor urut yang dimasukan. Fungsi ini akan melihat dari satuan dengan cara melakukan operasi modulo pada nomor yang dimasukkan, jika hasil yang didapat bukan 7, maka input fungsi akan dilakukan pembagian bulat 10, lalu dilihat lagi satuannya dan seterusnya. 
2. Kedua adalah fungsi pembantu untuk menentukan apakah nomor urut tersebut akan memenangkan pertandingan atau tidak. Yaitu dengan melihat apakah angkanya habis dibagi dengan 7 dan juga mengandung angka 7.
Setelah itu dengan menggunakan kedua fungsi di atas dan menggunakan percabangan didapat hasil yang sesuai.

---------------------------------
## Bab 4 - *Array*

### Problem 4
[[source code]](src/4-Problem04.pas)

Charlie adalah salah satu tamu undangan dalam suatu acara pernikahan. Pesta pernikahan ini merupakan pesta pernikahan yang unik, karena semua mobil diparkirkan dalam rentang nilai tertentu. Namun ketika Charlie kembali, mobil Charlie hilang. Sialnya, ia lupa dengan nomor platnya. Buatlah program yang dapat menentukan nomor plat mobil yang dimiliki Charlie

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah mobil : **5**

Masukkan 4 nomor mobil yang ada:

**1203**

**1204**

**1208**

**1205**

**1206**

Mobil Charlie adalah mobil dengan nomor 1207
***
***
Masukkan jumlah mobil : **5**

Masukkan 4 nomor mobil yang ada:

**1203**

**1204**

**1207**

**1205**

**1206**


Tidak ada mobil yang merupakan mobil Charlie
***
---------------------------------
**Penjelasan Solusi**

Terdapat dua fungsi pembantu pada solusi ini. 
1. Fungsi min, fungsi untuk mencari nilai minimal dalam suatu array 
2. Fungsi iFind, fungsi untuk mencari nilai indeks dari bilangan yang diinput
Pertama program akan menerima input dari user berupa banyaknya bilangan dan bilangan-bilangan yang dimasukkan. Lalu dari bilangan-bilangan yang ada itu akan diambil nilai minimal yang ada. Setelah itu akan dicek dari bilangan minimal dalam array sampai ke (minimal + banyak bilangan -1). Jika ada bilangan yang dilewat ketika dilakukan penambahan satu per satu, maka keluar dari pengulangan dan mengeluarkan output bilangan tersebut, jika sampai akhir tidak ada bilangan yang dilewat, maka mobil Charlie tidak ditemukan.

---------------------------------
## Bab 5 - Matriks dan File Eksternal
### Problem 3
[[source code]](src/5-Problem03.pas)

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
---------------------------------
**Penjelasan Solusi**

Terdapat tiga fungsi pembantu pada solusi ini. 
1. Fungsi cekBaris, fungsi untuk mengecek apakah baris memiliki elemen yang sama
2. Fungsi cekKolom, fungsi untuk mengecek apakah kolom memiliki elemen yang sama
3. Fungsi cekDiagonal, fungsi untuk mengecek apakah diagonal memiliki elemen yang sama
Pertama akan dilakukan pembacaan dari file eksternal, dan setelah itu dimasukkan ke dalam sebuah matriks dengan elemen bertipe char. Setelah itu akan dilakukan pengecekan secara diagonal terlebih dahulu. Jika ada diagonal yang memiliki elemen sama, maka program menemukan pemenang dan dicetak, jika tidak akan dilakukan pengulangan untuk pengecekan baris dan kolom, dimulai dengan mengecek baris 1, kolom 1, baris 2, kolom 2, dan seterusnya. Jika setelah semua baris diperiksa tidak ditemukan pemenang, maka akan dikeluarkan output tidak ada pemenang

-----------------------------------

Dicky Adrian - 13516050