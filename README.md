13516066 - William Rukmansa (Pemula python, baru belajar)

Penjelasan umum pengerjaan:
-Hampir tidak ada validasi masukan, sering diasumsi masukan sudah valid
-Jika contoh berupa integer, tidak dipakai pecahan

----------------------------------------------------------------------

Bab 1 - Percabangan: Problem 3

Tuan Vin sedang belajar tentang trigonometri. Dia tahu bahwa nilai sin suatu sudut tergantung kuadrannya, dimana pada kuadran 1 sin(a) = sin(a), kuadran 2 sin(180-a) = sin(a), kuadran 3 sin(180+a) = -sin(a), kuadran 4 sin(360-a) = -sin(a). Tuan Vin menantang Anda untuk membuat kalkulator untuk mempermudah perhitungan sin dengan mengubah sudutnya menjadi antara 0 sampai 90. Dapatkah Anda menjawab tantangan Tuan Vin? (0 dan 90 dihitung kuadran 1, 180 dihitung kuadran 2, 270 dihitung kuadran 3 dan 360 dihitung kuadran 4. Nilai sudut selalu di antara 0 hingga 360).

Format Input & Output

Masukan nilai sudut: 150

sin(150) = sin(30)

Masukan nilai sudut: 75

sin(75) = sin(75)

Masukan nilai sudut: 270

sin(270) = -sin(90)


## Bab 1 Soal 3

x = int(input("Masukan nilai sudut: "))
out = "sin(%d) = " % x

if (x % 360 > 180):
	out += "-"
out += "sin("

x %= 180
if (x < 90) :
	print out + "%d)" % x
else:
	print out + "%d)" % (180 - x)

# Penjelasan:
# x menerima sebuah angka integer dari pengguna. Diasumsikan bukan berupa pecahan.
# out adalah string keluaran, untuk meminimalisir kata-kata yang diulang.
# Cara tercepat: membuat 4 cabang if-else untuk 4 kuadran.
# Peserta menyadari bahwa kuadran 1 = kuadran 3, dengan sin berubah negatif,
# sama halnya dengan kuadran 2 dan kuadran 4. Sehingga angka di-mod 360 lalu
# dicek, apakah angka berada di kuadran 1/2 atau kuadran 3/4. Jika berada di kuadran
# 3/4, ditambahkan tanda - sebelum sin.
# Lalu karena kuadran 1 = kuadran 3 dan kuadran 2 = kuadran 4, x di-mod 180 lalu
# diperiksa, apakah angka lebih atau kurang dari 90.
# Hasilnya kemudian di-print segera.

--------------------------------------------------------

Bab 2 - Pengulangan: Problem 1

Karena bosan belajar, sekumpulan anak TPB memutuskan untuk bermain. Pada permainan ini, anak TPB tersebut secara bergantian menyebutkan bilangan natural secara berurutan. Namun, mereka tidak boleh menyebutkan angka kelipatan 3 atau 7. Misal jika mereka bermain sampai angka 25, bilangan yang akan mereka ucapkan adalah sebagai berikut: 1, 2, 4, 5, 8, 10, 11, 13, 16, 17, 19, 20, 21, 22, 23, 24, 25

Dapat dilihat bahwa seluruh bilangan kelipatan 3 atau 7 tidak disebutkan, kecuali kelipatan 3 dan 7 (yaitu 21). Karena tidak ingin kalah terus menerus, seorang mahasiswa membuat program untuk membantunya bermain. Program tersebut menerima input berupa suatu bilangan bulat N dan mencetak seluruh angka yang harus disebutkan sampai bilangan N.

Format Input dan Output (Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)

Masukan N :25  
1  
2  
4  
5  
8  
10  
11  
13  
16  
17  
19  
20  
21  
22  
23  
24  
25  

Masukan N :10  
1  
2  
4  
5  
8  
10  


## Bab 2 Soal 1

x = int(input("Masukan N :"))
for i in range(1, x+1):
	if (not(i % 3 != 0) ^ (i % 7 != 0)):
		print i

# Penjelasan:
# Peserta tiba-tiba teringat dari Logif suatu or jenis berbeda, yaitu
# xor (tanda ^) yang seperti or, tapi false ketika kedua ekspresi
# boolean bernilai true. Sehingga i yang tembus if adalah i yang
# bukan berkelipatan 3 tetapi harus berkelipatan 7, atau bukan berkelipatan
# 7 tapi harus berkelipatan 3. Oleh karena itu, ditambahkan not, sehingga
# yang diprint adalah angka bukan berkelipatan 3 dan 7, tetapi boleh berkelipatan
# 3 dan 7 sekaligus (atau berkelipatan 21). Pada awalnya, cara yang terpikirkan
# adalah menggunakan if panjang, yang ternyata dapat disingkatkan menjadi not xor.
# (Maaf jika peserta salah: peserta tidak tahu mengapa 24 muncul di contoh Output)

----------------------------------------------------

Bab 3 - Fungsi dan Prosedur: Problem 12

Saat sedang kuliah kalkulus, seorang mahasiswa mendapatkan dua buah fungsi berikut.

f(x) = 2x − 9

g(x) = x^3 + 7

Ia baru saja belajar mengenai fungsi komposisi sehingga ia ingin mencoba untuk menerapkannya pada kedua fungsi tersebut. Bantulah ia untuk menghitung nilai f(g(f(x))) diberikan nilai x!

Format Input & Output (input di-bold)

Masukan nilai x: 4

f(g(f(x))) = 3

Masukan nilai x: 0

f(g(f(x))) = -1453

Anda diwajibkan membuat fungsi f(x) dan g(x).


## Bab 3 Soal 12

def f(x):
	return 2*x - 9

def g(x):
	return x**3 + 7
	
x = int(input("Masukan nilai x: "))
print "f(g(f(x))) = %d" % f(g(f(x)))

# Penjelasan:
# Python luar biasa haha.
# saat memakai fungsi f dan g, masing-masing menerima suatu angka dilambangkan
# sebagai variabel x, dan mengembalikan suatu nilai di return, yang adalah
# rumus fungsi f(x) dan g(x). Salah satu kemudahan Python yang peserta
# bersyukur atasnya adalah adanya operator eksponensial (**). Lalu,
# pada saat print hasil, cukup ditulis seperti pada soal, sebab pada
# g(f(x)), hasil dari f(x) menjadi angka masukan untuk g(x), begitu pula
# untuk f(g(f(x))).

----------------------------------------------------

Bab 4 - Array: Problem 11

Mei ditugaskan untuk mencatat absensi seluruh mahasiswa yang hadir. Setiap kali mahasiswa hadir, mahasiswa harus mengumpulkan kertas kehadiran berisi NIM kepada Karin. Buatlah program untuk membantu Karin mencatat berapa kali suatu mahasiswa hadir NIM mahasiswa tidak lebih dari 3 digit

Format Input & Output (input di-bold)

Masukkan jumlah kertas kehadiran : 10

Masukkan NIM mahasiswa : 89

Masukkan NIM mahasiswa : 230

Masukkan NIM mahasiswa : 89

Masukkan NIM mahasiswa : 89

Masukkan NIM mahasiswa : 100

Masukkan NIM mahasiswa : 100

Masukkan NIM mahasiswa : 74

Masukkan NIM mahasiswa : 74

Masukkan NIM mahasiswa : 89

Rekap kehadiran mahasiswa :

74 - 2 kali

89 - 4 kali

100 - 2 kali

230 - 1 kali


## Bab 4 Soal 11

n = int(input("Masukkan jumlah kertas kehadiran : "))
nimCount = []

if (n != 0):
	x = int(input("Masukkan NIM mahasiswa : "))
	nimCount.append(x)
	
for i in range(1, n):
	x = int(input("Masukkan NIM mahasiswa : "))
	idx = 0
	while (idx < i-1 and nimCount[idx] < x):
		idx += 1
	if (nimCount[idx] >= x):
		nimCount.insert(idx, x)
	else:
		nimCount.append(x)

nimCount.append('a')
print "Rekap kehadiran mahasiswa :"
x = 0
	
i = 1
while (i < n):
	while (nimCount[i] == nimCount[x]):
		i += 1
	print "%s - %d kali" % (nimCount[x], i - x)
	x = i

# Penjelasan:
# Maaf tak mengerti fungsi-fungsi python yang lebih baru.
# Pada awalnya ingin menggunakan dictionary, tetapi peserta belum tahu cara
# mensortir nim yang ditampilkan, sehingga beralih ke list.
# Peserta mensortir masukan pada saat dimasukkan, dengan mencari list sampai ditemukan
# posisi yang tepat. Maaf walau judulnya array, peserta tak dapat menemukan array
# di tutorial python. 
# Suatu dummy element ('a') ditambahkan ke akhir list untuk menghentikan proses pengecekan
# apakah ada nim sama atau berbeda. Awal masukan diambil masukan pertama dahulu, agar
# program tak perlu mengecek list kosong atau diisi. Program akan membaca list mulai
# dari suatu nim, lalu membaca berapa kali nim sama muncul dalam list sampai ditemukan
# nim berbeda atau dummy element. Asumsi print: satu newline saja.
# Peserta berpikir menggunakan array 2-dimensi (pertama untuk nim, kedua untuk
# jumlah kehadiran) tidak cocok karena bab 5 bertopik matriks. Maaf penjelasan
# soal ini lebih banyak maafnya.
# (Peserta juga tidak paham mengapa kertas yang ada 10, tetapi program hanya
# meminta 9 kertas)

---------------------------------------

Bab 5 - Matriks dan File Eksternal: Problem 10

Tuan Krab ingin membuka cabang baru dari Krasti Krab. Oleh karena itu, dia perlu untuk membeli bidang tanah baru. Petak-petak tanah yang tersedia direpresentasikan dalam matriks berukuran NxN. Setiap petak tanah mempunyai harga masing-masing. Untuk membangun cabang dari Krasti Krab, dibutuhkan suatu bidang tanah yang berbentuk kotak. Namun, ternyata Tuan Krab hanya membawa uang dalam pecahan K. Karena tidak mau rugi, maka Tuan Krab mengambil keputusan hanya akan membeli bidang tanah dengan harga total berupa kelipatan K. Tugas Anda adalah mencari banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

Format Input dan Output Input berupa matriks yang merepresentasikan harga petak tanah disimpan dalam file eksternal land.txt. Pada file eksternal ini, baris pertama berisi bilangan bulat positif N yang merepresentasikan ukuran matriks. N baris berikutnya berisi N buah bilangan bulat positif yang merupakan harga petak tanah pada cell tersebut. Pada saat runtime, diinputkan bilangan bulat K yang merepresentasikan pecahan uang yang dibawa oleh Tuan Krab. Output berupa informasi banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

Contoh (Elemen baris setelah tanda ":" pada runtime merupakan input dari pengguna)

    land.txt

3
17 11 18
10 15 20
19 16 3

    runtime program

matriks loaded!
Pecahan uang: 4
Banyak bidang tanah yang dapat dibeli adalah 6

Keterangan: Ada 6 buah bidang tanah yang dapat dibeli. Bidang tanah yang tersebut yaitu

17 11

10 15
19 16

17 11
10 15
18 16

16

11 18
15 20

20


## Bab 5 Soal 10

# mengecek apakah suatu karakter adalah sebuah integer
def isNumber(char):
	try:
		int(char)
		return True
	except ValueError:
		return False

# program utama
try:
	text = open('land.txt', 'r').read()
except IOError:
	print "File land.txt tidak dapat diakses atau diubah."
else:
	print "matriks loaded!"
	idx = 0
	
	pecahan = int(input("Pecahan uang: "))
	
	try:
		while (not isNumber(text[idx])):
			idx += 1
		n = 0
		while (isNumber(text[idx])):
			n = n*10 + int(text[idx])
			idx += 1
		
		matriks = [[0 for x in range(0, n)] for y in range(0, n)]
		for i in range(0, n):
			for j in range(0, n):
				while (not isNumber(text[idx])):
					idx += 1
				num = 0
				while (isNumber(text[idx])):
					num = num*10 + int(text[idx])
					idx += 1
				matriks[i][j] = num % pecahan
		
		counter = 0
		for brs in range(0, n):
			for kol in range(0, n):
				for brsmax in range(brs, n):
					for kolmax in range(kol, n):
						modsum = 0
						for b in range(brs, brsmax+1):
							for k in range(kol, kolmax+1):
								modsum += matriks[b][k]
						if (modsum % pecahan == 0):
							counter += 1
		print "Banyak bidang tanah yang dapat dibeli adalah %d" % counter
		
	except IOError:
		print "Ada kesalahan pada format isi file."
	
	
	
# Penjelasan:
# Soal tersulit, karena baru belajar python haha.
# try catch hanya bonus tersendiri. Dibutuhkan suatu fungsi isNumber sebab
# dalam membaca file, typenya otomatis berupa string sehingga harus dicari cara
# pengecekan apakah suatu karakter merupakan angka atau bukan. Lalu, dibuat suatu list
# dengan inisialisasi n*n agar dapat dipakai sebagai matriks biasa. Yang disimpan dalam
# matriks bukanlah harga petak, melainkan harga yang di-mod dengan pecahan uang masukan,
# untuk mempermudah perhitungan. Setelah pembacaan selesai, peserta pada awalnya kebingungan
# karena ditugaskan untuk mengecek semua petak persegi dengan segala ukuran. Akhirnya
# ditemukan suatu cara, dimulai dari posisi-posisi berbeda pada matriks (brs, kol),
# lalu di-loop dengan segala panjang dan tinggi yang mungkin (kemudian disimpan sebagai
# brsmax dan kolmax). Setelah itu, dihitung jumlah harga yang di-mod dalam persegi berbatas
# brs ke brsmax dan kol ke kolmax, lalu jumlah tersebut di-mod pecahan. Apabila 0, persegi
# panjang tersebut valid, lalu counter ditambah 1. Peserta meninggalkan sepenggal kode
# dalam komentar yang dapat dipakai untuk debugging, apabila peserta salah menjawab.
# (Juga, dalam output ditemukan angka 18 sebelah 16, sedangkan di input tidak ada)

