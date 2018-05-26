## Bab 1 Soal 3

x = int(input("Masukan nilai sudut: ")) # asumsi input tak ada pecahan
out = "sin(%d) = " % x

if (x % 360 > 180): # pola: jika di kuadra 3 dan 4, sin bertanda minus
	out += "-"
out += "sin("

x %= 180 # isi sin kuadran 1 = kuadran 3 dan sin kuadran 2 = kuadran 4
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
