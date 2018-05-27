if __name__ == "__main__" :
    nilai = []
    lulus = 0
    n = int(input("Banyak mahasiswa :"))

    for i in range(n) :
        x = int(input("Nilai anak ke-{}:".format(i+1)))
        if x >= 60 : lulus += 1
        nilai.append(nilai)

    print("Total mahasiswa yang lulus adalah", lulus)
    print("Total mahasiswa yang tidak lulus adalah", n - lulus)