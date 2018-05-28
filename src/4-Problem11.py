## Bab 4 Soal 11

n = int(input("Masukkan jumlah kertas kehadiran : ")) # asumsi masukan valid
nimCount = []

if (n != 0):
	x = int(input("Masukkan NIM mahasiswa : ")) # asumsi input sudah sesuai yang diinginkan
	nimCount.append(x)
	
for i in range(1, n):
	x = int(input("Masukkan NIM mahasiswa : "))
	idx = 0
	while (idx < i-1 and nimCount[idx] < x):
		idx += 1
	if (nimCount[idx] >= x):
		nimCount.insert(idx, x)
	else: # jika idx di elemen terakhir dan x > nimCount[idx]
		nimCount.append(x)

nimCount.append('a') # penanda akhir list
print "Rekap kehadiran mahasiswa :"
x = 0 # penanda counter
	
i = 1
while (i < n):
	while (nimCount[i] == nimCount[x]): # inkremen i jika nim sama
		i += 1
	print "%s - %d kali" % (nimCount[x], i - x) # i - x adalah berapa banyak kemunculan nim sama
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
