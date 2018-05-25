'''
	Soal dikerjakan dengan membuat fungsi untuk menentukan nilai perpangkatan suatu bilangan,
	lalu pada saat runtime, 
	program menerima input pengguna dan menampilkan hasil perpangkatan.
'''

def power(a, b) :
	if b == 0 :
		return 1
	else :
		return a * power(a, b - 1)

print('Masukan A : ', end = '')
a = int(input())
print('Masukan B : ', end = '')
b = int(input())
print(str(a) + '^' + str(b) + ' = ' + str(power(a, b)))
