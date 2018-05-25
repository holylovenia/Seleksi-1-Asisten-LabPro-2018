'''
	Soal dikerjakan dengan membuat file matriks.txt,
	lalu pada saat runtime, 
	program membaca isi file lalu menyimpan matriks 
	dan menyimpan hasil transpose matriks,
	kemudian mengkalikan matriks dengan matriks transpose,
	jika hasil perkalian tidak sesuai dengan karakteristik matriks identitas
	maka perkalian dihentikan dan menampilkan pesan 'No'.
'''

M = []
MT = []
with open('matriks.txt','r') as f :
	n = int(f.readline())
	for i in range(n) :
		temp = list(map(int,f.readline().split(" ")))
		M.append(temp)
print('matriks loaded!')
for i in range(n) :
	temp = []
	for j in range(n) :
		temp.append(M[j][i])
	MT.append(temp)
for i in range(n) :
	for j in range(n) :
		multi = 0
		for k in range(n) :
			multi += M[i][k] * MT[k][j]
		if i == j :
			if multi != 1 :
				break
		else :
			if multi != 0 :
				break
if i != n - 1 or j != n - 1 :
	print('No')
else :
	print('Yes')
