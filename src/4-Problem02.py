if __name__ == "__main__":
    warna = []
    barang = []

    n_warna = int(input("Masukkan jumlah warna : "))
    print("Masukkan nama warna :")
    for i in range(n_warna) :
        warna.append(str(input()))

    n_barang = int(input("Masukkan jumlah barang : "))
    print("Masukkan nama barang :")
    for i in range(n_barang) :
        barang.append(str(input()))

    print("Ide barang selanjutnya ;")
    for bar in barang :
        for war in warna :
            print(bar, war)
    print("Terdapat {} ide yang mungkin".format(n_barang * n_warna))