Nama  : Muhammad Ashabul Kahfi
Nim   : 18216042

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
  - [Problem 12](#problem-12)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 11](#problem-11-1)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 10](#problem-10-2)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 9](#problem-9-3)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 8](#problem-8-4)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
------

------

## Bab 1 - Percabangan
---------------------------------

### Problem 12

Tuan Vin menemukan sebuah kertas berisi persamaan matematika, tetapi operatornya ada yang hilang. Persamaan tersebut berbentuk:


A op1 B = C op2 D


Tuan Vin tahu bahwa operator yang mungkin hanya tambah, kurang, kali dan div dan pasti ada jawabnnya. Karena iseng, Tuan Vin menantang Anda untuk menyelesaikannya. Jika ada lebih dari 1 jawaban, tampilkan yang mana saja


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai A: **2**

Masukkan nilai B: **3**

Masukkan nilai C: **7**

Masukkan nilai D: **1**

Persamaan yang mungkin adalah: 2 * 3 = 7 - 1
***
Masukkan nilai A: **10**

Masukkan nilai B: **3**

Masukkan nilai C: **2**

Masukkan nilai D: **1**

Persamaan yang mungkin adalah: 10 / 3 = 2 + 1
***

---------------------------------
---------------------------------

solusi :
a=input("Masukkan nilai A: ");
b=input("Masukkan nilai B: ");
c=input("Masukkan nilai C: ");
d=input("Masukkan nilai D: ");

A=int(a)
B=int(b)
C=int(c)
D=int(d)

if (D!=0):
	if((A+B)==int(C/D)):
		print ("Persamaan yang mungkin adalah: "+a+" + "+b+" = "+c+" / "+d)
	if((A-B)==int(C/D)):
		print ("Persamaan yang mungkin adalah: "+a+" - "+b+" = "+c+" / "+d)
	if((A*B)==int(C/D)):
		print ("Persamaan yang mungkin adalah: "+a+" * "+b+" = "+c+" / "+d)
if (B!=0):
	if(int(A/B)==(C+D)):
		print ("Persamaan yang mungkin adalah: "+a+" / "+b+" = "+c+" + "+d)
	if(int(A/B)==(C-D)):
		print ("Persamaan yang mungkin adalah: "+a+" / "+b+" = "+c+" - "+d)
	if(int(A/B)==(C*D)):
		print ("Persamaan yang mungkin adalah: "+a+" / "+b+" = "+c+" * "+d)
if ((B!=0) and (D!=0)):
	if(int(A/B)==int(C/D)):
		print ("Persamaan yang mungkin adalah: "+a+" / "+b+" = "+c+" / "+d)

if((A+B) == (C-D)):
	print ("Persamaan yang mungkin adalah: "+a+" + "+b+" = "+c+" - "+d)
if((A+B)==(C*D)):
	print ("Persamaan yang mungkin adalah: "+a+" + "+b+" = "+c+" * "+d)
if((A+B)==(C+D)):
	print ("Persamaan yang mungkin adalah: "+a+" + "+b+" = "+c+" + "+d)
if((A-B)==(C+D)):
	print ("Persamaan yang mungkin adalah: "+a+" - "+b+" = "+c+" + "+d)
if((A-B)==(C-D)):
	print ("Persamaan yang mungkin adalah: "+a+" - "+b+" = "+c+" - "+d)
if((A-B)==(C*D)):
	print ("Persamaan yang mungkin adalah: "+a+" - "+b+" = "+c+" * "+d)

if((A*B)==(C+D)):
	print ("Persamaan yang mungkin adalah: "+a+" * "+b+" = "+c+" + "+d)
if((A*B)==(C-D)):
	print ("Persamaan yang mungkin adalah: "+a+" * "+b+" = "+c+" - "+d)
if((A*B)==(C*D)):
	print ("Persamaan yang mungkin adalah: "+a+" * "+b+" = "+c+" * "+d)
  
Penjelasan : 
  Pada persoalan ini, saya mencoba untuk semua persamaan. untuk operasi pembagian, saya harus mengecek apakah penyebutnya bernilai 0 atau tidak, jika bernilai 0 maka tidak akan menjalankan operasi pembagian.

## Bab 2 - Pengulangan
---------------------------------
### Problem 11


Suatu program didesain untuk mengenkripsi sebuah teks. Caranya adalah dengan mengubah karakter setiap hurufnya (kecuali tanda baca) dengan aturan menggeser sebanyak N. Misal jika N adalah 2, maka teks **i love you!** akan berubah menjadi **k nqxg aqw!**. 
Anda ditugaskan untuk memecahkan isi teks terenkripsi yang diberikan dan juga diberikan besarnya nilai **N**


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan teks terenkripsi :k nqxg aqw!
Masukan nilai N :2
Teks aslinya adalah "i love you!"
```
---------------------------------

solusi :
message = input("Masukan teks terenkripsi: ")
n=input("Masukan nilai N :")
N=int(n);

dmessage = ""
for ch in message:
	char = ord(ch)
	if ((char>=ord('a')) and (char<=ord('z'))):
		if (char-N < ord('a')):
			char=char+ord('z')-N-ord('a')+1
		else :
			char=char-N
	dmessage = dmessage + str(char) +" "
decodedMessage = ""

for item in dmessage.split():
   decodedMessage += chr(int(item))   

print ('Teks aslinya adalah "'+decodedMessage+'"')

penjelasan :
  Secara umum, pertama program akan menerima input string dan akan disimpan ke sebuah variabel. setiap character di string, akan diubah menjadi nilai ASCII untuk character tersebut. setelah diubah ke nilai ascii, nilai tersebut dikurangi sebesar input angka yang diberikan. setelah semua dikurangi dengan angka yang diinput, semua angka dalam ascii tersebut diubah kembali menjadi character.

## Bab 3 - Fungsi dan Prosedur
### Problem 10

Faktorial dari sebuah bilangan bulat N (N!) dapat dinyatakan dalam bentuk sebagai berikut.
`N! = N x (N-1) x (N-2) x ... x 1`


Buatlah sebuah program yang menghitung nilai faktorial dari sebuah bilangan bulat yang diberikan. misal N! (Catatan: Buat fungsi Faktorial(N) untuk menghitung nilai faktorial tersebut)


**Format Input & Output (input di-*bold*)**
***
Masukan N: **6**

Solusi :
N! = 720
***
solusi :
def faktorial(N):
	if(N==1):
		return 1;
	else:
		return (N*faktorial(N-1));

n=input("Masukan N: ")
N=int(n)
faktor=faktorial(N);
print ("N! =",faktor)

Penjelasan :
fungsi yang dibuat akan berbentuk rekursif. hal ini dapat dilihat pada kode bagian def faktorial. di dalam fungsi faktorial ini, akan selalu memanggil fungsi faktorial lagi sampai suatu waktu, yaitu sampai parameter pada fungsi bernilai 1.

## Bab 4 - *Array*
### Problem 9

Julia baru saja membolos kelas kalkulus. Padahal saat itu baru saja diajarkan tentang turunan persamaan matematika biasa. Sebagai teman yang baik, buatlah sebuah program yang dapat menurunkan persamaan matematika

**Format Input & Output (input di-*bold*)**
***
Masukkan pangkat paling besar : **2**

Masukkan koefisien x^2 : **5**

Masukkan koefisien x^1 : **2**

Masukkan koefisien x^0 : **2**

Maka hasil turunannya adalah 10x^1 + 2x^0
***
***
Masukkan pangkat paling besar : **3**

Masukkan koefisien x^3 : **1**

Masukkan koefisien x^2 : **5**

Masukkan koefisien x^1 : **2**

Masukkan koefisien x^0 : **2**

Maka hasil turunannya adalah 3x^2 + 10x^0 + 2x^0
***

solusi :
def inputKoefisien(N):
	kata="Masukkan koefisien x^"+str(N)+" : "
	arr=input(kata)
	return (int(arr))



n=input("Masukkan pangkat paling besar : ")
N=int(n)
pangkatPertama=N
array=[]
while (pangkatPertama>=0):
	arr=inputKoefisien(pangkatPertama)
	array.append(int(arr))
	pangkatPertama=pangkatPertama-1

pangkat=N
hasil=''
while (pangkat>0):
	isi=array[0]*pangkat
	array.pop(0)
	pangkat=pangkat-1
	if (pangkat == N-1):
		hasil=hasil+"Maka hasilnya adalah "+str(isi)+"x^"+str(pangkat)+" "
	else:
		hasil=hasil+"+ "+str(isi)+"x^"+str(pangkat)+" "
print (hasil)
		
penjelasan :
pada program yang saya buat, penggunaan array terjadi untuk penyimpanan koefisien untuk setiap variabel persamaan. untuk mendapatkan hasil turunan dari persamaan, array yang berisi semua koefisien akan diambil/dihapus dari array dengan mengalikan dengan nilai pangkat variabel. di akhir program, array akan berisi kosong, karena setiap mencari nilai turunan, nilai dari array akan dihapus.

## Bab 5 - Matriks dan File Eksternal

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

solusi :
file = open("chess.txt","r")
N= int(file.readline())

mat=[]
mat=[line.split() for line in file]
print ("matriks loaded!")
result=[-1,-1,-1,-1]
for i in range(0,len(mat)):
	result_baris=0
	result_kolom=0
	for j in range(0,len(mat[i])):
		result_baris=result_baris+int(mat[i][j])
		if (int(mat[i][j])==1):
			result_kolom=j
	if (result_baris == 1):
		result[i]=result_kolom
	else:
		result[i]=-1

k=0
tabrak=0
while (k<N):
	if (result[k]==-1):
		k=k+1
	else:
		kolom=result[k]
		result_kolom_new=0
		for i in range(0,N):
			result_kolom_new=result_kolom_new+int(mat[i][kolom])
		if(result_kolom_new==1):
			tabrak=tabrak+1
		k=k+1
print ("Banyaknya benteng yang tidak saling serang adalah "+ str(tabrak))	

penjelasan :
berdasarkan program yang saya buat, pertamanya, setiap baris dihitung jumlahnya, jika di satu barisnya berjumlah 1, maka akan dicatat posisi banteng di dalam sebuah array, jika dalam satu baris jumlahnya lebih dari 1 tidak akan disimpan dalam sebuah array dengan memberikan nilai -1 di sebuah array.

setelah tiap barisnya sudah dicek maka untuk tiap kolomnya dicek. jika banteng di baris tersebut hanya ada 1, maka akan dicek apakah di kolom banteng tersebut ada banteng yang lain atau tidak. jika di kolom tersebut tidak ada banteng lagi maka akan ditambah ke sebuah variabel yang menunjukkan berapa banyak banteng yang tidak berhadapan dengan banteng lain.



**Selamat Mengerjakan :)**

------

Arya Pradipta - Jordhy Fernando - Holy Lovenia - Kevin Jonathan - Pratama Agung - Vincent Hendryanto - William Aristea
