## Bab 2 Soal 1

x = int(input("Masukan N :")) # asumsi masukan user valid
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
