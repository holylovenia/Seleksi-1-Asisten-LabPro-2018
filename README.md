### NIM &ensp;&ensp;&ensp;: 13516082
### Nama&ensp;&ensp;&ensp;: M Aditya Farizki
### Bahasa&ensp;&ensp;: Python

## Soal yang dikerjakan

#### Bab 1 Problem 6

Tuan Vin pergi meminjam buku ke perpustakaan. Perpustakaan tersebut meminjamkan buku dengan sewa pokok P per hari dan batas waktu sewa T. Jika setelah T hari tidak dikembalikan, harga sewa akan bertambah D per harinya. Saat Tuan Vin hendak mengembalikan buku, Tuan Vin bingung menghitung harga sewa bukunya. Agar tidak ditipu mengurus perusahaan, Tuan Vin memeinta bantuan Anda untuk menghitung uang sewa yang tepat.

###### Solusi :

bayar = 0
hargaSewa = int(input('Masukan harga sewa pokok: '))  
batasWaktu = int(input('Masukan batas waktu sewa: '))  
tambahHarga = int(input('Masukan tambahan harga sewa: '))  
lamaPinjam = int(input('Masukan lama Tuan Vin meminjam: '))  
&ensp;
if lamaPinjam > batasWaktu :  
&ensp;&ensp;bayar = (hargaSewa * batasWaktu)  
&ensp;&ensp;bayar += ((hargaSewa + tambahHarga) * (lamaPinjam - batasWaktu))  
else :  
&ensp;&ensp;bayar = (hargaSewa * lamaPinjam)  
&ensp;
print('Harga sewa yang harus dibayar Tuan Vin adalah: {}'.format(bayar))  

###### Penjelasan :

pertama-tama harus diketahui apakah lama pinjam Tuan Vin melebihi batas waktu sewa atau tidak,
jika iya maka biaya sewa hingga batas waktu sewa dikenakan biaya normal dan sisanya dikenakan biaya normal + biaya tambahan,
jika tidak, maka biaya sewa hanya waktu sewa dikali biaya normal

#### Bab 2 Problem 5

Terdapat sebuah permainan, dimana terdapat N buah kelompok, dan masing - masing kelompok memiliki M orang anggota kelompok. Banyaknya anggota kelompok bisa berbeda - beda antar kelompok. Sebuah kelompok dianggap menang jika kelompok tersebut mengetahui kelompok berapa yang memiliki anggota paling sedikit. Bantulah kelompok tersebut untuk memenangkan permainan.

###### Solusi :

numKelompok = int(input('Masukan jumlah kelompok :'))
minAnggota = None
kelMin = None
tempNumAnggota = None

for i in range(numKelompok):
&ensp;tempNumAnggota = int(input('Masukan jumlah anggota kelompok {} :'.format(i + 1)))
&ensp;if(kelMin is None):
&ensp;&ensp;kelMin = i + 1
&ensp;&ensp;minAnggota = tempNumAnggota
&ensp;else : 
&ensp;&ensp;if(tempNumAnggota < minAnggota):
&ensp;&ensp;&ensp;minAnggota = tempNumAnggota
&ensp;&ensp;&ensp;kelMin = i + 1

print('Kelompok dengan anggota tersedikit adalah kelompok {}'.format(kelMin))

###### Penjelasan :

Pada dasarnya program ini mencari nilai terkecil dari input user, pertama program meminta banyaknya jumlah masukan yang akan dimasukan user,
pada masukan pertama, masukan tersebut dianggap sebagai minimum, untuk masukan selanjutnya akan dibandingkan dengan nilai minimum sementara,
jika lebih kecil maka nilai masukan lah yang dijadikan nilai minimum, jika tidak tidak maka eksekusi program berlanjut, jika loop sudah selesai,
maka nilai minimum sementara adalah nilai minimum global.

#### Bab 3 Problem 4 

Bilangan prima adalah bilangan yang hanya habis dibagi oleh 1 dan bilangan itu sendiri. Buatlah program yang menentukan semau bilangan prima diantara dua buah bilangan A dan B (0 ≤ A, B ≤ 100000) inklusif. Catatan : Buatlah fungsi yang memeriksa apakah sebuah bilangan adalah bilangan prima atau bukan.

###### Solusi :

def sieve(max):  
&ensp;arrPrime = [True]*(max+1)  
&ensp;arrPrime[0] = False  
&ensp;arrPrime[1] = False  
&ensp;i = 2  
&ensp;while(i ^ 2 <= max):  
&ensp;&ensp;if(arrPrime[i]):  
&ensp;&ensp;&ensp;j = i ^ 2  
&ensp;&ensp;&ensp;while(j <= max):  
&ensp;&ensp;&ensp;&ensp;arrPrime[j] = False  
&ensp;&ensp;&ensp;&ensp;j += i  
&ensp;&ensp;i += 1  
&ensp;return arrPrime  
def printPrime(min, max):  
&ensp;arrPrime = sieve(max)  
&ensp;for i in range(min, max+1):  
&ensp;&ensp;if(arrPrime[i]):  
&ensp;&ensp;&ensp;print(i)  
min = int(input('Masukkan nilai A : '))  
max = int(input('Masukkan nilai B : '))  
total = max + min  
min = (min if max > min else max)  
max = total - min  
printPrime(min, max) 
</br> 
###### Penjelasan :    
Awalnya program akan meminta masukan 2 buah bilangan A dan B, lalu dari kedua bilangan akan diperiksa mana yang lebih kecil dan mana yang lebih besar,
bilangan yang lebih besar akan dimasukan ke B dan yang lebih kecil ke A. Setelah itu program akan memulai pemeriksaan prima.
program akan membuat sebuah array of boolean sebesar nilai maksimum yang sedang dicari dengan semuanya bernilai True, 
indeks pada array ini menyatakan nilai yang dites apakah prima atau tidak. index 0 dan 1 diberikan nilai False, karena kedua nilai tersebut bukan
prima. Lalu dimulai dari 2. Index ke-2 dinyatakan prima, lalu index ke 2^2+(2*n) akan dinyatakan sebagai bukan bilangan prima, dengan nilai n bilangan
bulat yang menyebabkan 2^2+(2*n) masih kurang dari atau sama dengan nilai maksimal, dan nilai n dimulai dari 0. setelah proses tersebut selesai, selanjutnya
akan diperiksa index ke-3, pertama-tama dicek apakah 3 masih bernilai True atau tidak, jika True maka diproses, jika tidak maka akan dilanjutkan ke index 
selanjutnya. Jika nilai index^2 sudah melebihi nilai max, maka proses pengecekan prima berakhir. setelah itu program akan menuliskan seluruh bilangan prima 
diantara kedua bilangan masukan awal.
</br>
#### Bab 4 Problem 3  
Pada suatu acara pernikahan diadakan undian berhadiah mobil. Setiap tamu yang masuk ke dalam ruangan memiliki nomor unik. Tamu-tamu yang memiliki nomor tertentu akan mendapatkan hadiah. Setiap tamu yang memiliki nomo yang merupakan bilangan fibonnaci akan mendapatkan hadiah. Buatlah program untuk mencari siapa tamu yang mendapatkan hadiah
</br>
###### Solusi :  
def makeFib(max):  
&ensp;if(max == 1):  
&ensp;&ensp;return [1]
</br>
&ensp;i = 2  
&ensp;arrFib = [1]
</br>
&ensp;while(i <= max):  
&ensp;&ensp;arrFib.append(i)
</br>
&ensp;&ensp;i += arrFib[-2]
</br>
&ensp;return arrFib
</br>
</br>
nTamu = int(input('Masukkan jumlah tamu : '))  
arrTamu = []
</br>
for i in range(nTamu):  
&ensp;arrTamu.append(input('Masukan nama tamu {} : '.format(i+1)))
</br>
for i in makeFib(nTamu):  
&ensp;print(arrTamu[i-1])
###### Penjelasan :
awalnya program akan meminta masukan dari pengguna, masukan pertama menyatakan banyaknya masukan yang akan diberikan, masukan pertama juga menjadi nilai max yang akan digunakan dalam fungsi fibonacci. setelah itu semua masukan pengguna akan disimpan dalam sebuah list (array). lalu program akan menghitung bilangan fibonacci hingga nilai max. setelah itu, program akan menuliskan nama dari orang orang yang memiliki index bilangan fibonacci-1.
</br>
#### Bab 5 Problem 1
Pearl diajarkan mengenai suatu jenis matriks baru di sekolah, yaitu bysimmetric matrix. Matriks ini merupakan suatu matriks persegi berukuran NxN yang elemen-elemennya simetri terhadap kedua diagonalnya. Tugas Anda adalah untuk membantu Pearl menentukan apakah suatu matriks tergolong jenis bysimmetrix. Format Input dan Output Input matriks diambil dari file eksternal matriks.txt. Pada file eksternal ini, baris pertama berisi bilangan bulat positif N yang merepresentasikan ukuran matriks. N baris berikutnya berisi N buah bilangan bulat yang merupakan elemen matriks tersebut. Jika matriks merupakan bysimmetric matrix, maka dituliskan Yes pada layar. Sebaliknya, jika bukan bysimmetric matrix, maka dituliskan No.
###### Solusi :
def checkBysimmetric(dim, matrix):  
&ensp;half = 0
</br>
&ensp;if(dim % 2 == 1):  
&ensp;&ensp;half = dim//2 + 1  
&ensp;else :  
&ensp;&ensp;half = dim//2
</br>
&ensp;for i in range(half):  
&ensp;&ensp;for j in range(dim):  
&ensp;&ensp;&ensp;if((matrix[i][j] != matrix[j][i]) or (matrix[i][j] != matrix[dim-1-j][dim-1-i])):  
&ensp;&ensp;&ensp;&ensp;return False
</br>
&ensp;return True
</br>
matrix = []  
dimension = 0
</br>
with open('matrix.txt') as file :  
&ensp;try:  
&ensp;&ensp;dimension = int(file.readline())
</br>
&ensp;&ensp;for i in range(dimension):  
&ensp;&ensp;&ensp;temp = file.readline().strip().split(' ')  
&ensp;&ensp;&ensp;matrix.append(temp)
</br>  
&ensp;except Excetion as e:  
&ensp;&ensp;print(e)
</br>
print('matriks loaded!')  
print('Yes') if checkBysimmetric(dimension, matrix) else print('No')
###### Penjelasan :
program pertama akan membuka file lalu membaca file line per line hingga akhir file. setelah itu akan masuk proses pengecekan apakah matriks tersebut bysimmetric. Pengecekan akan memeriksa apakah elemen pada posisi i,j sama dengan elemen pada posisi j,i dan dimensi-1-j,dimensi-1-1. jika benar untuk setengah dari total baris (+1 jika ganjil) maka dapat disimpulkan matriks tersebut bysimmetric.
