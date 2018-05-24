#Bab 4 Problem 7
#Pembuat : Kurniandha Sukma Yunastrian (13516106)

#Fungsi untuk mengurutkan negara dari yang terkaya ke yang termiskin
def Posisi(min_kaya,max_kaya) :
    # 0 merepresentasikan negara Wei
    # 1 merepresentasikan negara Wu
    # 2 merepresentasikan negara Shu
    if (min_kaya == 0) :
        negara1 = Wei
        if (max_kaya == 1) :
            negara2 = Shu
            negara3 = Wu
        else :
            negara2 = Wu
            negara3 = Shu
    elif (min_kaya == 1) :
        negara1 = Wu
        if (max_kaya == 0) :
            negara2 = Shu
            negara3 = Wei
        else :
            negara2 = Wei
            negara3 = Shu
    else :
        negara1 = Shu
        if (max_kaya == 1) :
            negara2 = Wei
            negara3 = Wu
        else :
            negara2 = Wu
            negara3 = Wei

    #Mengembalikan list negara terurut dari yang terkaya
    return [negara1,negara2,negara3]

#Program Utama
Wei = []
Wu = []
Shu = []

#Input untuk Negara Wei
kekayaan = int(input('Masukkan jumlah kekayaan negara Wei : '))
print('Masukkan kekayaan negara Wei :')
for i in range(kekayaan) :
    x = input()
    Wei.append(x)
    min_kekayaan = kekayaan
    negara_termiskin = 0
    max_kekayaan = kekayaan
    negara_terkaya = 0

#Input untuk Negara Wu
kekayaan = int(input('Masukkan jumlah kekayaan negara Wu : '))
print('Masukkan kekayaan negara Wu :')
for i in range(kekayaan) :
    x = input()
    Wu.append(x)
    if (min_kekayaan > kekayaan) :
        min_kekayaan = kekayaan
        negara_termiskin = 1
    if (max_kekayaan < kekayaan) :
        max_kekayaan = kekayaan
        negara_terkaya = 1

#Input untuk Negara Shu
kekayaan = int(input('Masukkan jumlah kekayaan negara Shu : '))
print('Masukkan kekayaan negara Shu :')
for i in range(kekayaan) :
    x = input()
    Shu.append(x)
    if (min_kekayaan > kekayaan) :
        min_kekayaan = kekayaan
        negara_termiskin = 2
    if (max_kekayaan < kekayaan) :
        max_kekayaan = kekayaan
        negara_terkaya = 2

#Mengurutkan urutan negara
negara = Posisi(negara_termiskin,negara_terkaya)
negara1 = negara[0]
negara2 = negara[1]
negara3 = negara[2]

#Proses Pengecekan dilakukan dengan membandingkan kekayaan negara1 dengan negara2
#Jika sama, maka dibandingkan dengan kekayaan negara3
#Kekayaan dibandingkan satu persatu
berhasil = False
for i in range (min_kekayaan) :
    cek = 0
    j = 0

    #Proses mengecek apakah kekayaan negara1 terdapat di negara2
    #Jika ada, maka cek = 1
    while ((cek == 0) and (j != len(negara2))) :
        if (negara1[i] == negara2[j]) :
            cek = 1
        else :
            j += 1
            
    if (cek == 1) :
        j = 0
        
        #Proses mengecek apakah kekayaan negara1 terdapat di negara3
        #Jika ada, maka cek = 2 dan cetak kekayaan tersebut ke layar
        while ((cek == 1) and (j != len(negara3))) :
            if (negara1[i] == negara3[j]) :
                cek = 2
                if (berhasil == False) :
                    print('Ketiga negara tersebut harus membagikan :')
                berhasil = True
                print(negara1[i])
            else :
                j += 1
            
if (berhasil == False) :
    print('Ketiga negara tersebut tidak memiliki kekayaan yang sama')
