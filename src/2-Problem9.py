'''
	Soal dikerjakan dengan membuat fungsi untuk menentukan jarak,
	lalu pada saat runtime, 
	program melakukan pengulangan untuk menerima masukan pengguna yaitu lokasi percetakan,
	sambil memproses kedua lokasi untuk mencari jarak minimum antara mahasiswa dengan percetakan yang ada.
'''

import math

def distance(x1, y1, x2, y2) :
	return math.sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2))

print('Masukan lokasi mahasiswa tersebut')
print('X :', end = '')
x1 = int(input())
print('Y :', end = '')
y1 = int(input())
print('Masukan banyak percetakan :', end = '')
n = int(input())
min_distance = -1
for i in range(n) :
	print('Masukan posisi percetakan ' + str(i + 1))
	print('X :', end = '')
	x2 = int(input())
	print('Y :', end = '')
	y2 = int(input())
	if min_distance == -1 or min_distance > distance(x1, y1, x2, y2) :
		idx = i + 1
		min_distance = distance(x1, y1, x2, y2)
print('Percetakan terdekat adalah percetakan ' + str(idx) + '.')
