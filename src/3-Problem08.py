#Bab 3 Problem 8
#Pembuat : Kurniandha Sukma Yunastrian (13516106)

#Fungsi untuk menghitung a^b
def pangkat(a,b) :
    hasil = a
    
    #jika a^b dengan b bilangan genap,
    #maka dapat disederhanakan menjadi (a*a)^(b/2)
    while (b % 2 == 0) :
        hasil *= hasil
        b /= 2
    a = hasil

    while (b>1) :
        hasil *= a
        b -= 1
            
    return str(hasil)

#Program Utama
A = int(input('Masukan A:'))
B = int(input('Masukan B:'))
print(str(A)+'^'+str(B)+' = '+pangkat(A,B))
