'''
	Soal dikerjakan dengan membuat fungsi untuk menentukan elemen yang berada pada dua himpunan,
	lalu pada saat runtime, 
	program menerima input pengguna berupa kekayaan setiap kerajaan dan dimasukkan ke dalam tiga himpunan berbeda,
	dan menampilkan output berdasarkan hasil fungsi.
'''

def intersect(a, b):
    if len(a) > len(b):
        a, b = b, a
    c = []
    for x in a:
        if x in b:
            c.append(x)
    return c

a = []
b = []
c = []
print('Masukkan jumlah kekayaan negara Wei : ', end = '')
n = int(input())
print('Masukkan kekayaan negara Wei :')
for i in range(n) :
	a.append(input())
print('Masukkan jumlah kekayaan negara Wu : ', end = '')
n = int(input())
print('Masukkan kekayaan negara Wu :')
for i in range(n) :
	b.append(input())
print('Masukkan jumlah kekayaan negara Shu : ', end = '')
n = int(input())
print('Masukkan kekayaan negara Shu :')
for i in range(n) :
	c.append(input())
r = intersect(intersect(a, b), c)
if len(r) != 0 :
	print('Ketiga negara tersebut harus membagikan :')
	for i in r :
		print(i)
else :
	print('Ketiga negara tersebut tidak memiliki kekayaan yang sama')
