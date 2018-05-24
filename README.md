#Author :
  ###Name : Muhammad Aufa Helfiandri
  ###NIM  : 13516008

#Description :
  ##1. Bab 1 Problem 4
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


  ##2. Bab 2 Problem 3
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

  ##3. Bab 3 Problem 2

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

  ##4. Bab 4 Problem 1
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

  ##5. Bab 5 Problem 12

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
----------------------------
------


#Source Code 
  ##1. Bab 1 Problem 4
a = int(input("Masukkan nilai X : "))
b = int(input("Masukkan nilai Y : "))
str = "Titik (" + str(a) +"," +str(b) + ") berada di"
if ((a == 0) and (b == 0)):
    print(str + " titik origin")
elif (a == 0):
    print(str + " sumbu Y")
elif (b == 0):
    print(str + " sumbu X")
else :
    str += " kuadran "
    if((a > 0) and (b > 0)):
        print(str + "1")
    elif(a > 0):
        print(str + "2")
    elif(b > 0):
        print(str + "4")
    else :
        print(str + "3")

  ##2. Bab 2 Problem 3

n = int(input("Masukkan banyaknya bilangan :"))

print(str(n) + " bilangan pertama dari deret adalah")

class fibList:
    def __init__(self):
        self.numbers = [1,1]

    def IdxExist(self,x):
        b = x < len(self.numbers)
        return(b)

    def fibVal(self,x):
        if (x < 0):
            return(0)
        elif(x == 0):
            return(1)
        elif(x == 1):
            return(1)
        elif (self.IdxExist(x)) :
            return(self.numbers[x])
        else :
            x = self.fibVal(x-1) + self.fibVal(x-2)
            if(x % 3 == 0) :
                x = x + 1
            self.numbers.append(x) 
            return(x)

lf = fibList()
for i in range(0,n) :
    print(lf.fibVal(i))

  ##3. Bab 3 Problem 2

def HexConv(num) :
    if (num < 10):
        return(str(num))
    elif (num == 10 ):
        return("A")
    elif (num == 11 ):
        return("B")
    elif (num == 12 ):
        return("C")
    elif (num == 13 ):
        return("D")
    elif (num == 14 ):
        return("E")
    elif (num == 15 ):
        return("F")

def DecConv(num) :
    try:
        val = int(num)
        return(val)
    except(ValueError):
        if(num == "A"):
            return(10)
        elif(num == "B"):
            return(11)
        elif(num == "C"):
            return(12)
        elif(num == "D"):
            return(13)
        elif(num == "E"):
            return(14)
        elif(num == "F"):
            return(15)

def HexToDec(num):
    sum = 0
    for c in num:
        p = DecConv(c)
        sum = sum*16 + p
    return(sum)


def DecToHex(num):
    if(num < 1):
        return("0")
    elif (num == 1):
        return("1")
    else :
        ns = DecToHex(num//16)
        x = num % 16
        return(ns + HexConv(x))

a = input("Masukan A:")
b = input("Masukan B:")

xa = HexToDec(a)
xb = HexToDec(b)

print(a + " + " + b + " = " + DecToHex(xa + xb))


  ##4. Bab 4 Problem 1

def StrInList(s,lx):
    for x in lx :
        if(s == x):
            return(True)
    return(False)

ls = []
n = int(input("Masukkan jumlah barang:"))
for i in range(0,n):
    x = input("Masukkan nama barang:")
    ls.append(x)
    
while(len(ls) > 0):
    print("  1. Jual")
    print("  2. Lihat Stok")
    m = int(input("Pilihan menu : "))
    if(m == 1):
        m = input("Masukkan nama barang:")
        if(StrInList(m,ls)):
            ls.remove(m)
            print("Barang berhasil dijual")
        else :
            print("Barang tidak ada")
    elif (m == 2):
        St = "Stok toko : "
        for x in ls:
            St += x + ","
        St = St.rstrip(',')
        print(St)
print("Barang sudah habis, silahkan melakukan restok barang")

  ##5. Bab 5 Problem 12

lines = [line.rstrip('\n') for line in open('contour.txt')]
print(lines)
mat = []
if ((len(lines[0]) == 1) and (len(lines) != 1)):
    lines.pop(0)

for line in lines :
    lin = line.split(" ")
    for i in range(0,len(lin)):
        lin[i] = int(lin[i])
    mat.append(lin)
print("file loaded!")

def findSubMatrix(mtrx):
    matLen = len(mtrx) 
    tempMat = []
    for i in range(matLen):
        lst = []
        for j in range(matLen):
            lst.append(0)
        tempMat.append(lst)

    res = 0
    for i in range (0,matLen):
        for j in range(0,matLen):
            if((i == 0) or (j == 0)):
                tempMat[i][j] = 1
            
            elif((mtrx[i][j] == mtrx[i-1][j]) and (mtrx[i][j] == mtrx[i][j-1]) and (mtrx[i][j] == mtrx[i-1][j-1])):
                tempMat[i][j] = min(min(tempMat[i-1][j],tempMat[i][j-1]),tempMat[i-1][j-1]) + 1
            else:
                tempMat[i][j] = 1
            res = max(res,tempMat[i][j])
    return(res)

n = findSubMatrix(mat)
print("Luas maksimum Krasti Krab yang dapat dibangun adalah " + str(n))


#Penjelasan Solusi
  ##1. Bab 1 Problem 4
      Program pertama tama akan mengambil input  dari user yang berupa nilai titik X dan Y kemudian program akan menyimpan variabel tersebut sebagai output nantinya
      Program menyaring Input satu persatu untuk setiap kondisinya, jika nilai x = 0 dan y = 0 maka berada di titik origin, jika hanya x = 0 maka berada di sumbu y, jika hanya y = 0 maka berada di sumbu x
      Sementara itu jika tidak ada yang bernilai 0 maka titik berada di kuadran, kuadran 1 jika x dan y bernilai positif, kuadran 2 jika x positif dan y negatif, kuadran 4 jika x negatif dan y positif dan kuadran 3 jika keduanya bernilai negatif

  ##2. Bab 2 Problem 3
      Program pertama akan meminta input banyak bilangan yang diinginkan
      Selanjutnya Program akan membuat objek baru yang berasal dari kelas fibList, yaitu kelas deret fibbonaci yang diinginkan
      
      Kelas fibList memiliki sebuah konsruktor tanpa parameter dan 2 buah method yaitu IdxExist yang mengecek apakah index x sudah terdapat pada fibList
      Method fibVal berfungsi untuk mengembalikan nilai deret fibbonaci ke x dimana jika x negatif akan mengembalikan 0 dan jika x bernilai 0 atau 1 maka akan mengembalikan 1. Sementara itu jika nilai x telah ada di deret fibList maka mengembalikan elemen ke x dari deret tersebut. Jika tidak ada maka x akan memanggil method fibVal secara rekursif terhadap x-1 dan x-2 kemudian menambahkan 1 jika hasilnya dapat dibagi 3 dan menyimpannya di fibList.

      Program setelahnya akan menjalankan loop yang memanggil method fibVal dari objek fibList yang telah dibuat sebelumnya dan mencetaknya ke layar

  ##3. Bab 3 Problem 2

      Fungsi HexConv yang menerima 1 parameter bertipe integer dari 0 - 15 berfungsi untuk mengembalikan nilai hex satuan dari integer tersebut

      Fungsi DecConv yang menerima 1 Parameter bertipe string yang merepresentasikan 1 huruf hex akan mengembalikan nilai desimal dari nilai hex tersebut

      Fungsi HexToDec akan mengembalikan nilai heksadesimal dari parameter desimal yang diberikan dengan memanggil fungsi DecConv

      Fungsi DecToHex akan mengembalikan nilai desimal dari parameter string heksadesimal yang diberikan dari 1persaru hurufnya dengan memanggil fungsi HexConv 

      Program akan meminta input 2 heksadesimal yang ingin ditambahkan dan kemudian mengconvertnya menjadi desimal dengan memanggil fungsi HexToDec, setelahnya program akan memprint fungsi DecToHex dengan parameter hasil HexToDec 2 input heksadesimal sebelumnya.

  ##4. Bab 4 Problem 1

      Fungsi StrInList menerima 2 parameter yaitu string dan list dimana fungsi ini akan mengembalikan true jika string tersebut ada di dalam list dan false jika string tidak ada dalam list

      Program pertama tama akan meminta input berapa barang yang akan dimasukkan ke stok dan setelahnya akan meminta nama barang barang tersebut kemudian memasukkannya ke dalam list.

      Setelah semua barang dimasukkan ke dalam list maka program akan memasuki loop yang dimana selama masih ada elemen di dalam list maka program akan memberikan 2 pilihan. 
      Pilihan pertama bernama jual yang jika user memilihnya maka program akan meminta nama barang yang diinginkan dan menghilangkannya dari list. Jika user memasukkan nama barang yang tidak ada di dalam list maka program akan menuliskan "Barang tidak ada"
      Pilihan kedua bernama Lihat Stok yang akan memprint elemen elemen yang berada dalam list.
      Jika semua barang telah habis maka program akan memprint "Barang sudah habis, silahkan melakukan restok barang"


  ##5. Bab 5 Problem 12
      Terdapat sebuah fungsi bernama findSubMatrix yang memiliki parameter list 2 dimensi dimana fungsi ini akan mengembalikan nilai integer terbanyak dimana elemen list 2 dimensi tersebut sama besar
        Fungsi ini pertama tama akan mendefinisikan matriks sementara yang disebut sebagai tempMat dan kemudian mengisinya sebesar matriks parameter dengan integer 0
        Fungsi kemudian akan menginisialiasi variabel bru bernama res dengan 0 dan memasuki loop 2 dimensi yang akan mengecek tiap elemen di Matriks dimana :
          Jika elemen yang diperiksa merupakan elemen pinggiran maka isi elemen tempMat pada indeks yang diperiksa dengan 1.
          Jika Elemen yang diperiksa sekitarnya sama dengan nilai elemen tersebut maka ambil nilai minimum diantara elemen elemen yang berada di sekitarnya ditambah 1 dan masukkan ke elemen tempMat pada Index yang sedang diperiksa
          Selainnya isi tempMat pada Index yang sedang diperiksa dengan 1
          Ambil Nilai maksimum dari variabel res dan nilai yang baru dimasukkan dan tempatkan ke variabel res
        Kembalikan nilai res

      Program pertama tama akan membaca file contour.txt dan menuliskan file loaded jika file berhasil dibaca. Selanjutnya program akan memanggil fungsi findSubMatriks dengan parameter Matriks yang telah dibaca dari file dan mencetaknya ke layar