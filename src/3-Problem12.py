## Bab 3 Soal 12

def f(x):
	return 2*x - 9

def g(x):
	return x**3 + 7 # peserta baru tau ** adalah tanda eksponensial
	
x = int(input("Masukan nilai x: ")) # asumsi angka masukan berupa integer, bukan pecahan
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
