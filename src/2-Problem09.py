#Bab 2 Problem 9
#Pembuat : Kurniandha Sukma Yunastrian (13516106)

from math import sqrt

#Fungsi untuk menghitung jarak antara dua titik (x1,y1) dan (x2,y2)
def jarak(x1,y1,x2,y2) :
    return sqrt((x1-x2)**2 + (y1-y2)**2)

#Program Utama
print('Masukan lokasi mahasiswa tersebut')
X1 = int(input('X :'))
Y1 = int(input('Y :'))

max_idx = int(input('Masukan banyaknya percetakan :'))

#jarak_skrg untuk menampung jarak mahasiswa ke percetakan yang sedang diproses
jarak_skrg = -1
#nomor_prctkn untuk menampung nomor percetakan terdekat
nomor_prctkn = 0

#Looping menerima masukan sekaligus memilih percetakan dengan jarak terdekat
for i in range(int(max_idx)) :
    print('Masukan posisi percetakan '+str(i+1))
    X2 = int(input('X :'))
    Y2 = int(input('Y :'))
    if (jarak_skrg < 0) or (jarak_skrg > jarak(X1,Y1,X2,Y2)):
        jarak_skrg = jarak(X1,Y1,X2,Y2)
        nomor_prctkn = i+1
    
print ('Pedagang terdekat adalah pedagang '+str(nomor_prctkn)+'.')
