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
	text = open('land.txt', 'r').read() # asumsi isi file sudah sesuai
except IOError: # bonus validasi keberadaan file
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
		
		matriks = [[0 for x in range(0, n)] for y in range(0, n)] # inisialisasi list
		for i in range(0, n):
			for j in range(0, n):
				while (not isNumber(text[idx])):
					idx += 1
				num = 0
				while (isNumber(text[idx])):
					num = num*10 + int(text[idx])
					idx += 1
				matriks[i][j] = num % pecahan # matriks tidak ditampilkan, sehingga boleh diubah
		
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
							# print "Baris: %d sampai %d, Kolom: %d sampai %d" % (brs+1, brsmax+1, kol+1, kolmax+1)
							# Hapus tanda komentar di atas untuk melihat hasil petak
							counter += 1
		print "Banyak bidang tanah yang dapat dibeli adalah %d" % counter
		
	except IOError: # bonus validasi isi file, skalian belajar file di Python
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
