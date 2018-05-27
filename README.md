# Seleksi 1 Asisten LabPro 2018
-----------------------------------


***Dibuat oleh: 13516135*** Untung Tanujaya


------

# Daftar Isi

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
  - [Problem 8](#problem-8)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 7](#problem-7-1)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 6](#problem-6-2)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 5](#problem-5-3)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 3](#problem-3-4)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
## Bab 1 - Percabangan
---------------------------------
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


### Source code
```
from copy import deepcopy

def funct(inp, li):
    res = deepcopy(li)
    if inp == "ikan":
        if "A" in res:
            res.remove("A")
        if "C" in res:
            res.remove("C")
    elif inp == "daging":
        if "B" in res:
            res.remove("B")
        if "C" in res:
            res.remove("C")
        if "D" in res:
            res.remove("D")
    elif inp == "sayur":
        if "D" in res:
            res.remove("D")
        if "E" in res:
            res.remove("E")
    elif inp == "buah":
        if "B" in res:
            res.remove("B")
    return res


if __name__ == "__main__":
    mineral = ["A","B","C","D","E"]

    inp1 = str(input("Masukan makanan 1: "))
    inp2 = str(input("Masukan makanan 2: "))

    mineral1 = funct(inp1, mineral)
    mineral2 = funct(inp2, mineral1)

    res = " "
    for min in mineral2:
        res += min + " "

    print("Mineral" + res + "tidak didapatkan Tuan Vin")
```

### Penjelasan
Kita akan menghilangkan vitamin yang telah didapatkan (fungsi funct) dari list vitamin yang belum didapatkan (mineral dan mineral1). Hasilnya yaitu mineral2.
Adapun skema penghapusan cukup jelas. Dimisalkan untuk input ikan, dia mengandung vitamin A dan C. Jika vitamin A ada di list, maka dihapus. Jika vitamin C ada di list, maka dihapus. Begitupun untuk input lain.


---------------------------------
---------------------------------


## Bab 2 - Pengulangan
---------------------------------
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


### Source code
```
def main():
    N = int(input("Masukan N: "))
    for i in range(N):
        print(strH(N))
    print(strV(N))
    for i in range(N):
        print(strH(N))
    return

def strH(N):
    res = ""
    for i in range(N):
        res += " "
    res += "|"
    return res

def strV(N):
    res = ""
    for i in range(N):
        res += "-"
    res += "+"
    for i in range(N):
        res += "-"
    return res          

if __name__ == '__main__':
    main()
```

### Penjelasan
Kita akan membuat tanda plus berdasar nilai N. N melambangkan banyak kaki tanda plus. Fungsi strH dan strV dibuat berdasar nilai tersebut. strH adalah string untuk garis-garis horizontal. strV adalah string untuk garis-garis vertikal. Fungsi tersebut menggunakan loop for untuk garis | dan - sehingga jika N < 0 maka hasilnya sama dengan N = 0. Strateginya adalah menampilkan strH sebanyak N, lalu menampilkan strV, lalu menampilkan strH sebanyak N.


---------------------------------
---------------------------------

## Bab 3 - Fungsi dan Prosedur
--------
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

### Source code
```
from copy import deepcopy

def main():
    li = []
    me = inputPosisi("mahasiswa")
    N = int(input("Masukan banyak penjual: "))
    for i in range(1,N + 1):
        penjual = str(i), inputPosisi("penjual " + str(i))
        li.append(penjual)
    print("Penjual terdekat adalah penjual " + solve(me, li) + ".")
    return

def solve(me, li):
    # find nearest penjual (li) according to mahasiswa (me)
    # brute force (check all element of list)
    # return result (index of penjual) in string
    liCopy = deepcopy(li)
    res, first = liCopy.pop(0)
    xp, yp = first
    xm, ym = me
    dist = (xp - xm) * (xp - xm) + (yp - ym) * (yp - ym)
    for i, penjual in liCopy:
        xp, yp = penjual
        distCheck = (xp - xm) * (xp - xm) + (yp - ym) * (yp - ym)
        if distCheck < dist:
            dist = distCheck
            res = i
    return res

def inputPosisi(st):
    print("Masukan posisi " + st + " : ")
    x = int(input("X : "))
    y = int(input("Y : "))
    return x, y

if __name__ == '__main__':
    main()
```

### Penjelasan
Kita akan mencari penjual terdekat dari mahasiswa (solve). Caranya adalah menentukan jarak tiap penjual lalu dibandingkan dari awal hingga akhir (brute force).


------------
------------
## Bab 4 - *Array*
------------

### Problem 5

Diberikan dua buah array A dan B. Array tersebut akan berisi angka-angka sebanyak N. Array akan lebih besar jika gabungan semua angkanya lebih besar dari gabungan angka dari array yang lain. Tentukan mana array yang lebih besar

**Format Input & Output (input di-*bold*)**
***
Masukkan N : **5**

Masukkan array A : **5 6 7 8 1**

Masukkan array B : **5 8 7 6 1**

Array A lebih kecil dari array B
***
***
Masukkan N : **4**

Masukkan array A : **1 2 3 4**

Masukkan array B : **1 2 3 4**

Array A sama besar dengan array B
***
***
Masukkan N : **6**

Masukkan array A : **1 2 3 4 7 6**

Masukkan array B : **1 2 3 4 7 1**

Array A lebih besar dari array B
***

*Catatan : angka pasti positif*

### Source code
```
def main():
    N = int(input("Masukkan N: "))
    print("Masukkan array A: ")
    a = []
    for i in range(N):
        inp = int(input())
        a.append(inp)
    b = []
    print("Masukkan array B: ")
    for i in range(N):
        inp = int(input())
        b.append(inp)
    res = solve(a, b)
    str1 = "Array A "
    str3 = " array B"
    if res == 0:
        str2 = "lebih kecil dari"
    elif res == 1:
        str2 = "sama besar dengan"
    else:
        str2 = "lebih besar dari"
    print(str1 + str2 + str3)
    return

def solve(a, b):
    for el_a, el_b in zip(a, b):
        if el_a < el_b:
            return 0
        elif el_a > el_b:
            return 2
    return 1

if __name__ == '__main__':
    main()
```

### Penjelasan
Kita akan menilai suatu array itu lebih besar atau lebih kecil dari array lain. Caranya, untuk tiap elemen array bersesuaian (yang dimulai dari array ke 0 yang mempresentasikan satuan bilangan terbesar), dicek apakah lebih besar atau lebih kecil. Jika sama, cek elemen berikutnya. Jika seluruh elemen bernilai sama, berarti array sama besar.

------------
------------
## Bab 5 - Matriks dan File Eksternal
------------


### Problem 3

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

### Source code
```
def main():
    # read file
    with open("result.txt") as f:
        content = f.readlines()
    content = [x.strip() for x in content]

    #result loaded!
    print("result loaded!")

    # put into matrix
    N = int(content[0])
    mat = []
    for i in range(1,N + 1):
        el = []
        for word in content[i]:
            el.append(word)
        mat.append(el)
    res = solve(mat)
    if res == 0:
        print("Tidak ada pemenang")
    elif res == 1:
        print("Pemenangnya adalah Anda")
    elif res == 2:
        print("Pemenangnya adalah Tuan Krab")
    return

def solve(mat):
    # find who wins the game by calculating each row, diagonal, and column (make list of list of row, diagonal, and column)
        # while not found the winner, keep searching
        # return : 0 means no one win, 1 means player win, 2 means Tuan Krab win
    liCheck = []
    for ar in mat:
        liCheck.append(ar)
    for j in range(len(mat)):
        ar = []
        for i in range(len(mat)):
            ar.append(mat[i][j])
        liCheck.append(ar)
    ar = []
    for i in range(len(mat)):
        ar.append(mat[i][i])
    liCheck.append(ar)
    ar = []
    for i in range(len(mat)):
        ar.append(mat[i][len(mat) - 1 - i])
    liCheck.append(ar)
    # check element in liCheck.
    for line in liCheck:
        N = len(line)
        x = 0
        o = 0
        for word in line:
            if word == "x":
                x += 1
            elif word == "o":
                o += 1
        if x == N:
            return 2
        elif o == N:
            return 1
    return 0
```

### Penjelasan
Kita akan mencari siapa yang menang di tic-tac-toe. Caranya dengan mengecek tiap list horizontal, vertikal, dan diagonal. Tiap listnya dihitung banyak x dan o. Jika ada yang menang, keluarkan pemenangnya (return). Jika tidak, lanjutkan perhitungan. Jika tidak ada yang menang hingga kemungkinan terakhir, berarti tidak ada yang menang.

-----------------------------------
