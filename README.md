<h1 align="center">
  Seleksi 1 Asisten LabPro 2018<br>
</h1>

Dibuat oleh Antonio Setya (13516002)

<br>

## *Quick Links*

- [Bab 1 | Percabangan - Problem 1](#bab-1--percabangan---problem-1)
- [Bab 2 | Pengulangan - Problem 12](#bab-2--pengulangan---problem-12)
- [Bab 3 | Fungsi dan Prosedur - Problem 11](#bab-3--fungsi-dan-prosedur---problem-11)
- [Bab 4 | *Array* - Problem 10](#bab-4--array---problem-10)
- [Bab 5 | Matriks dan File Eksternal - Problem 9](#bab-5--matriks-dan-file-eksternal---problem-9)

<br>
<br>

## Bab 1 | Percabangan - Problem 1

### Deskripsi Permasalahan
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

### Solusi
Kode program dibawah ini dapat dibaca pula dari file *1-Problem01.py* dalam *folder* *src*.

```python
# Input
nama = input("Masukan Nama : ") # Menyimpan nama
nim = input("Masukan NIM : ") # Menyimpan NIM
jurusan = "???" # Menyimpan jurusan. Default adalah ???, bilamana program tidak dapat menentukan jurusannya

# Memroses NIM. Ini aman karena NIM selalu dipastikan berupa 8 karakter/digit
if (nim[0] == "1"):
    if (nim[1] == "3"):
        if (nim[2] == "5"):
            jurusan = "Teknik Informatika"
    elif (nim[1] == "8"):
        if (nim[2] == "0"):
            jurusan = "Teknik Tenaga Listrik"
        elif (nim[2] == "1"):
            jurusan = "Teknik Telekomunikasi"
        elif (nim[2] == "2"):
            jurusan = "Sistem dan Teknologi Informasi"

# Output
print(nama + " adalah mahasiswa " + jurusan)
```

Program menerima masukan nama dan NIM dari pengguna. NIM tidak dipandang sebagai sebuah *integer*, melainkan menjadi sebuah *string*. Dalam *Python*, *string* dapat diakses per elemen sebagai *char*.

Untuk mempercepat proses pemeriksaan NIM, maka pemeriksaan NIM dilakukan pada tiga digit pertama, dan satu per satu, dimulai dari kiri ke kanan.

[Back to top](#--seleksi-1-asisten-labpro-2018)

--------------------------------
## Bab 2 | Pengulangan - Problem 12
### Deskripsi Permasalahan

Setelah selesai sidang tugas akhir di ITB, seorang mahasiswa ingin membuka sebuah restoran. Mahasiswa itu pun mengadakan survey, dan ternyata mahasiswa ITB senang makan pizza. Oleh karenanya, mahasiswa tersebut memutuskan untuk menjual pizza. Karena malas, mahasiswa tersebut ingin mengetahui berapa kali ia harus melakukan pemotongan pizza untuk memotong pizza tersebut menjadi **N** bagian.

Untuk memotong pizza menjadi **4** bagian, mahasiswa tersebut perlu memotong pizza sebanyak **2** kali. Untuk menghitung jumlah pemotongan yang dibutuhkan, maka mahasiswa tersebut memutuskan untuk membuat sebuah program. Program tersebut menerima angka jumlah pemotongan, dan akan mengeluarkan jumlah potongan maksimal yang didapat. Berikut ini adalah contoh masukan dan keluaran dari program dari program

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


### Solusi
Kode program dibawah ini dapat dibaca pula dari file *2-Problem12.py* dalam *folder* *src*.

```python
# Input
n = int(input("Masukan jumlah pemotongan :")) # Menyimpan berapa kali pizza dipotong

# Memroses jumlah potongan. Rumus : f(n) = n + f(n-1); f(0) = 1
out = 0
for i in range (n,0,-1):
    out += i
out += 1

# Output
print("Potongan maksimal yang didapat adalah " + str(out))
```

Dengan mengikuti fungsi rekursif dari *hint* yang diberikan, dapat dibuat perintah pengulangan yang melakukan hal yang sama seperti fungsi tersebut. ```for i in range (n,0,-1): ``` melakukan iterasi secara mundur dari ```n``` ke ```0``` (0 tidak termasuk), dengan setiap kali iterasi, i dikurangi satu.

[Back to top](#--seleksi-1-asisten-labpro-2018)

-----------------------
## Bab 3 | Fungsi dan Prosedur - Problem 11
### Deskripsi Permasalahan

Bilangan menanjak adalah bilangan yang memiliki angka pada digit satuan lebih kecil dari digit puluhan, pada digit puluhan lebih kecil dari digit ratusan, dan seterusnya. Buatlah sebuah program yang memeriksa apakah sebuah bilangan N (0 ≤ N < 2000000000) adalah bilangan menanjak atau bukan!


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

### Solusi
Kode program dibawah ini dapat dibaca pula dari file *3-Problem11.py* dalam *folder* *src*.

```python
# Fungsi isMenanjak :
# I.S. Menerima string yang berisi bilangan masukan
# F.S. Mengembalikan true jika bilangan menanjak, false jika tidak
def isMenanjak(inp):
    i = len(inp) - 1
    result = True
    while ((i > 0) and result):
        if (int(inp[i]) < int(inp[i-1])):
            i -= 1
        else:
            result = False
    return result

# Input
n = input("Masukkan N: ") # Menyimpan bilangan N.

# Memroses N dan output
if (isMenanjak(n)):
    print("Bilangan " + n + " adalah bilangan menanjak.")
else:
    print("Bilangan " + n + " bukan bilangan menanjak.")
```
Seperti pada [Problem 1 pada Bab 1](#bab-1--percabangan---problem-1), masukan tidak diolah sebagai *integer*, melainkan dipandang sebagai sebuah *string*. Baru kemudian, saat diproses, elemen-elemen dari *string* diubah menjadi *integer* untuk dilakukan komparasi.

Disini, dibuatlah sebuah fungsi ```isMenanjak(inp)```. Fungsi ini menerima angka masukan yang akan diproses (```inp```). Fungsi mengeluarkan ```True``` jika angka yang dimasukkan adalah bilangan menanjak. Sebaliknya, fungsi mengembalikan ```False``` jika bilangan yang dimasukkan tidak menanjak. Fungsi memroses angka masukan dengan melakukan pengecekan dari belakang (dari satuan) terlebih dahulu. Jika sudah ditemukan yang tidak memenuhi aturan, fungsi berhenti dan mengembalikan ```False```.  

[Back to top](#--seleksi-1-asisten-labpro-2018)

------------------
## Bab 4 | *Array* - Problem 10

### Deskripsi Permasalahan

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

### Solusi
Kode program dibawah ini dapat dibaca pula dari file *4-Problem10.py* dalam *folder* *src*.

```python
# Fungsi mengisi array dari masukan pengguna berdasarkan pangkat tertingginya
def fillIntegral(n):
    out = []
    for i in range(n,-1,-1):
        temp = int(input("Masukkan koefisien X^" + str(i) + " : "))
        out.append(temp)
    return out

# Fungsi melakukan integral dari array masukan
def doIntegral(eq_in):
    count = len(eq_in)
    for i in range(count,0,-1):
        eq_in[-i] = eq_in[-i] / i

# Fungsi mencetak persamaan dari array masukan
def PrintEquation(eq_in, highest):
  isFirstPrinted = False
  for i in range(highest,0,-1):
      if (eq_in[-i] != 0):
          if (isFirstPrinted):
              print(" + ",end="")
          else:
              isFirstPrinted = True
          print(str(eq_in[-i]) + "x^" + str(i),end="")

# Input
biggest = int(input("Masukkan pangkat paling besar : "))
equation = fillIntegral(biggest)
# Proses
doIntegral(equation)
# Output
PrintEquation(equation,biggest+1)
print(" + c")
```
Disini, integral dapat direpresentasikan sebagai sebuah *array* (atau *list* dalam *Python*). Normalnya, elemen ke-n merepresentasikan koefisien dari x^n dari suatu persamaan. Namun, dalam kasus (program) ini, elemen ke-n merepresentasikan koefisien dari x^(k-n) dari suatu persamaan, dengan k adalah pangkat tertinggi (masukan pengguna). Hal ini dipilih karena koefisien-koefisien dari masukan pengguna diisi dari pangkat tertinggi terlebih dahulu dan penambahan elemen *list* yang efisien adalah jika elemen ditambahkan pada akhir *list* (menggunakan fungsi ```append```). Fungsi ```append``` tersebut memiliki kompleksitas *O(1)*. Memang ada fungsi ```insert``` yang dapat menambahkan elemen di posisi yang bebas dalam *list* (termasuk di awal *list*), namun fungsi tersebut memliki kompleksitas *O(n)*. Maka, jelas fungsi ```append``` lebih efisien dibandingkan fungsi ```insert```. (sumber : [TimeComplexity](https://wiki.python.org/moin/TimeComplexity))

Dalam program ini, dibuatlah tiga fungsi untuk membantu pengerjaan :
- ```fillIntegral(n)``` : menerima ```n``` yang merupakan pangkat tertinggi dari persamaan, kemudian menerima masukan dari pengguna untuk mengisi *list*. Mengembalikan *list* yang sudah diisi pengguna tersebut.
- ```doIntegral(eq_in)``` : menerima ```eq_in``` yang merupakan *list* representasi persamaan yang dihasilkan fungsi ```fillIntegral(n)```.
- ```printEquation(eq_in,highest)``` : menerima ```eq_in``` yang merupakan *list* representasi persamaan, dan ```highest``` yang merupakan pangkat tertinggi dalam persamaan ```eq_in``` (berada di elemen pertama (indeks 0) dari ```eq_in```).

[Back to top](#--seleksi-1-asisten-labpro-2018)

-----------------
## Bab 5 | Matriks dan File Eksternal - Problem 9
### Deskripsi Permasalahan

Kota Bikini Batem pada masa depan sudah penuh sesak dengan penduduk. Saking sesaknya, rumah-rumah penduduk saling berdekatan satu sama lain dan dapat digambarkan sebagai *cell* matriks persegi (berukuran `N`x`N`). Suatu hari, sebuah virus mematikan menyerang kota tersebut. Pada awalnya, hanya ada beberapa rumah yang terjangkit. Namun, dalam satu hari virus ini dapat menjangkit tetangga dari rumah tersebut. Tetangga dalam hal ini didefinisikan sebagai *cell-cell* yang bersinggungan dengan *cell* tersebut (satu *cell* maksimal mempunyai 8 tetangga). Tugas Anda adalah menghitung berapa lama waktu yang dibutuhkan (dalam hari) untuk virus tersebut menjangkit seluruh kota.

**Format *Input* dan *Output***
*Input* berupa kondisi awal kota ketika virus pertama kali menjangkit, yang disimpan dalam file eksternal `city.txt`. Rumah yang sehat direpresentasikan dengan karakter `H`, dan rumah yang terjangkit direpresentasikan dengan karakter `U`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah karakter yang merupakan elemen matriks pada baris tersebut.
*Output* berupa informasi mengenai lama waktu yang dibutuhkan hingga seluruh rumah di kota Bikini Batem terjangkit virus.

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

### Solusi
Kode program dibawah ini dapat dibaca pula dari file *5-Problem09.py* dalam *folder* *src*.
```python
# Fungsi untuk membuka file dan mengeluarkan matriks representasinya
def LoadMatrix(filename):
    out = []
    with open(filename,"r") as fin:
        # Membaca ukuran matriks
        count = int(fin.readline())
        # Membaca matriks masukan
        for i in range(0,count):
            out.append([])
            line = fin.readline()
            out[i] = line.split()
    return out

# Fungsi untuk memeriksa apakah kota sudah dalam apocalypse atau tidak
# Mengembalikan true jika iya, false jika tidak
def isApocalypse(mat_in):
    result = True
    count = len(mat_in)
    i = 0
    while ((i < count) and result):
        j = 0
        while ((j < count) and result):
            if (mat_in[i][j] == "H"):
                result = False
            else:
                j += 1
        if result:
            i += 1
    return result

# Fungsi untuk menginfeksi tetangga dari lokasi yang diberikan. Mengubah mat_in
# Mengembalikan list yang berisi koordinat tetangga-tetangga yang terinfeksi
def infect(mat_in,x,y):
    infected = []
    rows = len(mat_in)
    xstart = (x - 1) if ((x - 1) >= 0) else 0
    ystart = (y - 1) if ((y - 1) >= 0) else 0
    xend = (x + 2) if ((x + 2) <= rows) else rows
    yend = (y + 2) if ((y + 2) <= rows) else rows
    for i in range(ystart,yend):
        for j in range(xstart,xend):
            if ((i,j) != (x,y)):
                infected.append((i,j))
                mat_in[i][j] = "U"
    return infected

# Fungsi untuk menghitung kapan kota dalam apocalypse
# Mengembalikan berapa hari kota mencapai apocalypse
def whenApocalypse(mat_in):
    days = 0
    if (not isApocalypse(mat_in)):
        days += 1
        rows = len(mat_in)
        infected = []
        # Mencari rumah-rumah yang sudah terjangkit virus
        for i in range(0,rows):
            for j in range(0,rows):
                if (mat_in[i][j] == "U"):
                    infected.append((i,j))
        # Menularkan virus ke tetangganya.
        # Tetangga yang tertular disimpan di infected untuk iterasi selanjutnya
        new_infected = []
        for cell in infected:
            new_infected += infect(mat_in,cell[1],cell[0])
        infected = new_infected

        while (not isApocalypse(mat_in)):
            days += 1
            new_infected = []
            for cell in infected:
                new_infected += infect(mat_in,cell[1],cell[0])
            infected = new_infected
    return days

# Memuat file
matrix_in = LoadMatrix("city.txt")
print("matriks loaded!")
# Memroses dan menghasilkan keluaran
print("Lama waktu apocalypse adalah " + str(whenApocalypse(matrix_in)) + " hari")
```
Untuk menyelesaikan permasalahan ini, salah satu cara yang dapat digunakan adalah dengan "mensimulasikan" infeksi virus dari matriks masukan. Kemudian, dihitung berapa kali iterasi dilakukan sampai semua terinfeksi (sampai elemen dalam matriks semua berisi "U").

[Back to top](#--seleksi-1-asisten-labpro-2018)

----------------------------
