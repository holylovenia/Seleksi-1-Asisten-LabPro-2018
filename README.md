# Seleksi 1 Asisten LabPro 2018
-----------------------------------
Pembuat : Kurniandha Sukma Yunastrian (13516106)
-----------------------------------
## Bab 1 - Percabangan
### Problem 10
#### Deskripsi Soal
Tuan Vin sedang mengetik chat dan baru belajar emoticon. Emoticon dapat digunakan untuk mengekspreikan perasaan dalam chat. Karena baru belajar, jumlah emoticon yang diketahuinya hanya sedikit. Berikut adalah emoticon yang diketahui Tuan Vin:


- Senyum: :)
- Sedih: :(
- Tertwa: :D
- Menangis: :'(
- ROTFL: :))


Tuan Vin menantang Anda untuk menebak perasaan Tuan Vin berdasarkan emoticon yang dikirimnya.


**Format Input & Output (input di-*bold*)**
***
Masukan emoticon: **:D**

Tuan Vin sedang tertawa
***

#### Source Code
```
#Bab 1 Problem 10
#Pembuat : Kurniandha Sukma Yunastrian (13516106)

#Fungsi switch yang mengembalikan keterangan dari emotikon masukan
def emotikon(x) :
    return {
        ':)' : 'senyum',
        ':(' : 'sedih',
        ':D' : 'tertawa',
        ":'(" : 'menangis',
        ':))' : 'ROTFL'
    }.get(x,'tidak diketahui') #Untuk masukan selain yang telah dispesifikasikan

#Program Utama
x = input('Masukan emotikon: ')
print('Tuan Vin sedang '+emotikon(x))
```
---------------------------------

## Bab 2 - Pengulangan
### Problem 9
#### Deskripsi Soal
Seorang mahasiswa harus mencetak dokumen tugasnya. Karena hari sudah subuh dan harus dikumpulkan pada pagi hari, maka ia harus menentukan percetakan terdekat dari data yang tersedia. Buatlah program untuk membantu mahasiswa tersebut.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan lokasi mahasiswa tersebut  
X :1
Y :0
Masukan banyaknya percetakan :3 
Masukan posisi percetakan 1  
X :1
Y :6
Masukan posisi pedagang 2  
X :0  
Y :0  
Masukan posisi pedagang 3  
X :5 
Y :7 
Pedagang terdekat adalah pedagang 2.
```
Hint : buatlah fungsi yang menghitung jarak 2 titik.

#### Source Code
```
#Bab 2 Problem 9
#Pembuat : Kurniandha Sukma Yunastrian (13516106)

from math import sqrt

#Fungsi untuk menghitung jarak antara dua titik (x1,y1) dan (x2,y2)
def jarak(x1,y1,x2,y2) :
    return sqrt((x1-x2)**2 + (y1-y2)**2)

#Program Utama
print('Masukan lokasi mahasiswa tersebut')
X1 = int(input('X :'))
Y1 = int(input('Y :'))

max_idx = int(input('Masukan banyaknya percetakan :'))

#jarak_skrg untuk menampung jarak mahasiswa ke percetakan yang sedang diproses
jarak_skrg = -1
#nomor_prctkn untuk menampung nomor percetakan terdekat
nomor_prctkn = 0

#Looping menerima masukan sekaligus memilih percetakan dengan jarak terdekat
for i in range(int(max_idx)) :
    print('Masukan posisi percetakan '+str(i+1))
    X2 = int(input('X :'))
    Y2 = int(input('Y :'))
    if (jarak_skrg < 0) or (jarak_skrg > jarak(X1,Y1,X2,Y2)):
        jarak_skrg = jarak(X1,Y1,X2,Y2)
        nomor_prctkn = i+1
    
print ('Pedagang terdekat adalah pedagang '+str(nomor_prctkn)+'.')
```
-----------------------

## Bab 3 - Fungsi dan Prosedur
### Problem 8
#### Deskripsi Soal
Diberikan 2 bilangan positif a dan b. Tentukan nilai a^b!

**Format Input & Output (input di-*bold*)**

***
Masukan A : **2**

Masukan B : **10**

2^10 = 1024
***

#### Source Code
```
#Bab 3 Problem 8
#Pembuat : Kurniandha Sukma Yunastrian (13516106)

#Fungsi untuk menghitung a^b
def pangkat(a,b) :
    hasil = a
    
    #jika a^b dengan b bilangan genap,
    #maka dapat disederhanakan menjadi (a*a)^(b/2)
    while (b % 2 == 0) :
        hasil *= hasil
        b /= 2
    a = hasil

    while (b>1) :
        hasil *= a
        b -= 1
            
    return str(hasil)

#Program Utama
A = int(input('Masukan A:'))
B = int(input('Masukan B:'))
print(str(A)+'^'+str(B)+' = '+pangkat(A,B))
```
------------------
-----------------
------

## Bab 4 - *Array*
### Problem 7
#### Deskripsi Soal
Tiga kerajaan Wei, Wu ,dan Shu sedang membuat perjanjian untuk membagikan kekayaan yang mereka miliki untuk kerajaan kecil lain. Namun, agar tidak rugi, mereka hanya membagikan kekayaan yang mereka semua miliki. Untuk itu mereka membutuhkan program yang dapat menentukan mana saja kekayaan yang tiga negara tersebut miliki

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kekayaan negara Wei : **3**

Masukkan kekayaan negara Wei :

**Emas**

**Perak**

**Berlian**

Masukkan jumlah kekayaan negara Wu : **2**

Masukkan kekayaan negara Wu :

**Emas**

**Tank**

**Perak**

Masukkan jumlah kekayaan negara Shu : **4**

Masukkan kekayaan negara Shu :

**Emas**

**Perak**

**Tank**

**Nuklir**

Ketiga negara tersebut harus membagikan :

Emas

Perak
***
***
Masukkan jumlah kekayaan negara Wei : **3**

Masukkan kekayaan negara Wei :

**Emas**

**Nuklir**

**Ternak**

Masukkan jumlah kekayaan negara Wu : **4**

Masukkan kekayaan negara Wu :

**Perak**

**Tank**

**Berlian**

**Permata**

Masukkan jumlah kekayaan negara Shu : **4**

Masukkan kekayaan negara Shu :

**Perunggu**

**Raksa**

**Berlian**

**Ternak**

Ketiga negara tersebut tidak memiliki kekayaan yang sama
***

#### Source Code
```
#Bab 4 Problem 7
#Pembuat : Kurniandha Sukma Yunastrian (13516106)

#Fungsi untuk mengurutkan negara dari yang terkaya ke yang termiskin
def Posisi(min_kaya,max_kaya) :
    # 0 merepresentasikan negara Wei
    # 1 merepresentasikan negara Wu
    # 2 merepresentasikan negara Shu
    if (min_kaya == 0) :
        negara1 = Wei
        if (max_kaya == 1) :
            negara2 = Shu
            negara3 = Wu
        else :
            negara2 = Wu
            negara3 = Shu
    elif (min_kaya == 1) :
        negara1 = Wu
        if (max_kaya == 0) :
            negara2 = Shu
            negara3 = Wei
        else :
            negara2 = Wei
            negara3 = Shu
    else :
        negara1 = Shu
        if (max_kaya == 1) :
            negara2 = Wei
            negara3 = Wu
        else :
            negara2 = Wu
            negara3 = Wei

    #Mengembalikan list negara terurut dari yang terkaya
    return [negara1,negara2,negara3]

#Program Utama
Wei = []
Wu = []
Shu = []

#Input untuk Negara Wei
kekayaan = int(input('Masukkan jumlah kekayaan negara Wei : '))
print('Masukkan kekayaan negara Wei :')
for i in range(kekayaan) :
    x = input()
    Wei.append(x)
    min_kekayaan = kekayaan
    negara_termiskin = 0
    max_kekayaan = kekayaan
    negara_terkaya = 0

#Input untuk Negara Wu
kekayaan = int(input('Masukkan jumlah kekayaan negara Wu : '))
print('Masukkan kekayaan negara Wu :')
for i in range(kekayaan) :
    x = input()
    Wu.append(x)
    if (min_kekayaan > kekayaan) :
        min_kekayaan = kekayaan
        negara_termiskin = 1
    if (max_kekayaan < kekayaan) :
        max_kekayaan = kekayaan
        negara_terkaya = 1

#Input untuk Negara Shu
kekayaan = int(input('Masukkan jumlah kekayaan negara Shu : '))
print('Masukkan kekayaan negara Shu :')
for i in range(kekayaan) :
    x = input()
    Shu.append(x)
    if (min_kekayaan > kekayaan) :
        min_kekayaan = kekayaan
        negara_termiskin = 2
    if (max_kekayaan < kekayaan) :
        max_kekayaan = kekayaan
        negara_terkaya = 2

#Mengurutkan urutan negara
negara = Posisi(negara_termiskin,negara_terkaya)
negara1 = negara[0]
negara2 = negara[1]
negara3 = negara[2]

#Proses Pengecekan dilakukan dengan membandingkan kekayaan negara1 dengan negara2
#Jika sama, maka dibandingkan dengan kekayaan negara3
#Kekayaan dibandingkan satu persatu
berhasil = False
for i in range (min_kekayaan) :
    cek = 0
    j = 0

    #Proses mengecek apakah kekayaan negara1 terdapat di negara2
    #Jika ada, maka cek = 1
    while ((cek == 0) and (j != len(negara2))) :
        if (negara1[i] == negara2[j]) :
            cek = 1
        else :
            j += 1
            
    if (cek == 1) :
        j = 0
        
        #Proses mengecek apakah kekayaan negara1 terdapat di negara3
        #Jika ada, maka cek = 2 dan cetak kekayaan tersebut ke layar
        while ((cek == 1) and (j != len(negara3))) :
            if (negara1[i] == negara3[j]) :
                cek = 2
                if (berhasil == False) :
                    print('Ketiga negara tersebut harus membagikan :')
                berhasil = True
                print(negara1[i])
            else :
                j += 1
            
if (berhasil == False) :
    print('Ketiga negara tersebut tidak memiliki kekayaan yang sama')
```

-----------------

## Bab 5 - Matriks dan File Eksternal
### Problem 6
#### Deskripsi Soal
Pearl sedang belajar matriks di sekolahnya. Hari ini, Ibu Puff menerangkan mengenai *orthogonal matrix*. *Orthogonal matrix* merupakan suatu jenis matriks persegi `A` yang memenuhi sifat `A`x`(A^t)` = `I`, dimana `(A^t)` merupakan matriks transpose dari `A`, dan `I` adalah matriks identitas. Ibu Puff memberikan PR kepada murid-muridnya untuk menentukan apakah suatu matriks adalah *orthogonal matrix* atau bukan. Pearl meminta Anda sebagai *programmer* kepercayaan keluarga Krab untuk membantunya menyelesaikan permasalahan tersebut.

**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Jika matriks merupakan *orthogonal matrix*, maka dituliskan **Yes** pada layar. Sebaliknya, jika bukan *orthogonal matrix*, maka dituliskan **No**. 

**Contoh**

- matriks.txt

```
3
1 0 0
0 1 0
0 0 1
```

- *runtime program*

```
matriks loaded!
Yes
```

#### Source Code
```
#Pembuat : Kurniandha Sukma Yunastrian (13516106)

#Fungsi untuk membaca matriks dari file
def readFile (namaFile) :
    file = open(namaFile,'r')
    n = int(file.read(1))
    matriks = [[0 for i in range(n)] for j in range(n)]
    file.read(1)
    for i in range(int(n)) :
        for j in range (int(n)) :
            matriks[i][j] = file.read(1)
            file.read(1)
    file.close()
    print('matriks loaded!')
    return matriks

#Fungsi untuk menentukan transpose dari matriks
def transpose (matriks) :
    temp = [[0 for i in range(len(matriks))] for j in range(len(matriks))]
    for i in range(len(matriks)) :
        for j in range(len(matriks)) :
            temp[i][j] = matriks[j][i]
            
    return temp

#Fungsi untuk mengalikan matriks
def kaliMatriks (mat1,mat2) :
    temp = [[0 for i in range(len(mat1))] for j in range(len(mat2))]
            
    for i in range(len(mat1)) :
        for j in range(len(mat2)) :
            for k in range(len(mat1)) :
                temp[i][j] += int(mat1[i][k]) * int(mat2[k][j])
                
    return temp

#Fungsi untuk mengecek apakah matriks orthogonal atau bukan
def cek_orthogonal (matriks) :
    mat_trans = transpose(matriks)
    hasil = kaliMatriks(matriks,mat_trans)
    check = 0
    i=0
    j=0

    #Proses pengecekan
    #Jika elemen di baris dan kolom yang sama tidak bernilai 1, maka bukan matriks orthogonal
    #Jika elemen di baris dan kolom yang berbeda tidak bernilai 0, maka bukan matriks orthogonal
    while ((i<len(matriks)) and (check == 0)) :
        if (i == j) :
            if (hasil[i][j] != 1) :
                check = 1
        else :
            if (hasil[i][j] != 0) :
                check = 1
        if (j == len(matriks)-1) :
            i += 1
            j = 0
        else :
            j += 1
    if (check == 0) :
        return 'Yes'
    else :
        return 'No'

#Program Utama
matriks = readFile('matriks.txt')
print (cek_orthogonal(matriks))
```
-----------------------------------