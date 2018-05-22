#Bab 1 Problem 10
#Pembuat : Kurniandha Sukma Yunastrian (13516106)

#Fungsi switch yang mengembalikan keterangan dari emotikon masukan
def emotikon(x) :
    return {
        ':)' : 'senyum',
        ':(' : 'sedih',
        ':D' : 'tertawa',
        ":'(" : 'menangis',
        ':))' : 'ROTFL'
    }.get(x,'tidak diketahui') #Untuk masukan selain yang telah dispesifikasikan

#Program Utama
x = input('Masukan emotikon: ')
print('Tuan Vin sedang '+emotikon(x))
