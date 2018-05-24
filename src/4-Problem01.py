def StrInList(s,lx):
    for x in lx :
        if(s == x):
            return(True)
    return(False)

ls = []
n = int(input("Masukkan jumlah barang:"))
for i in range(0,n):
    x = input("Masukkan nama barang:")
    ls.append(x)
    
while(len(ls) > 0):
    print("  1. Jual")
    print("  2. Lihat Stok")
    m = int(input("Pilihan menu : "))
    if(m == 1):
        m = input("Masukkan nama barang:")
        if(StrInList(m,ls)):
            ls.remove(m)
            print("Barang berhasil dijual")
        else :
            print("Barang tidak ada")
    elif (m == 2):
        St = "Stok toko : "
        for x in ls:
            St += x + ","
        St = St.rstrip(',')
        print(St)
print("Barang sudah habis, silahkan melakukan restok barang")

