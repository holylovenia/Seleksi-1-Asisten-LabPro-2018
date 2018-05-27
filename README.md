PEMBUAT
====================================================================================================
Nama	: Ferdiant Joshua Muis

NIM		: 13516047

DESKRIPSI SOAL
====================================================================================================
Bab 1 - Problem 5
----------------------------------------------------------------------------------------------------

Tuan Vin diminta oleh dosennya untuk mencatat nilai ujian dalam indeks A-E, sementara nilai yang disediakan dalam bentuk 0-100. Berikut adalah konversina:

    81 - 100: A
    61 - 80: B
    41 - 60: C
    21 - 40: D
    0 - 20: E

Karena banyak nilai yang harus dicatat, Tuan Vin meminta bantuan Anda untuk memudahkan merubah nilai.

Format Input & Output (input di-bold)

Masukan Nama : Kevin
Masukan Nilai : 88
Kevin mendapat nilai A

Masukan Nama : Albert
Masukan Nilai : 63
Albert mendapat nilai B

Bab 2 - Problem 4
----------------------------------------------------------------------------------------------------

Seorang asisten diminta untuk menghitung jumlah mahasiswa yang lulus dan yang tidak lulus. Seorang mahasiswa dianggap lulus jika nilainya lebih besar atau sama dengan 60. Karena malas, asisten tersebut meminta anda untuk membuat program untuk membantunya.

Format Input & Output (Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)

Banyak mahasiswa :4 
Nilai anak ke-1 :50 
Nilai anak ke-2 :90  
Nilai anak ke-3 :55 
Nilai anak ke-4 :90 
Total mahasiswa yang lulus adalah 2  
Total mahasiswa yang tidak lulus adalah 2  

Banyak mahasiswa :2
Nilai anak ke-1 :76
Nilai anak ke-2 :100 
Total mahasiswa yang lulus = 2  
Total mahasiswa yang tidak lulus = 0  

Bab 3 - Problem 3
----------------------------------------------------------------------------------------------------
Bilangan komposit adalah bilangan yang memiliki minimal satu bilangan lain yang dapat habis membagi bilangan tersebut selain 1 dan bilangan itu sendiri. Buatlah program yang menentukan semua bilangan komposit diantara dua buah bilangan A dan B (0 ≤ A, B ≤ 100000) inklusif. Catatan : Buatlah fungsi yang memeriksa apakah sebuah bilangan adalah bilangan komposit atau bukan.

Format Input & Output (input di-bold)

Masukkan nilai A : 0
Masukkan nilai B : 10
Bilangan komposit diantara 0 sampai 10 adalah:
4
6
8
9

Masukkan nilai A : 25
Masukkan nilai B : 10
Bilangan komposit diantara 10 sampai 25 adalah:
12
14
15
16
18
20
21
22
24
25

Bab 4 - Problem 2
----------------------------------------------------------------------------------------------------
Iwan adalah produsen barang unik. Untuk mendapatkan ide, Iwan memiliki kotak berisikan nama warna dan kotak berisi nama barang. Iwan memasangkan nama warna dan nama barang untuk mendapatkan ide barang unik yang akan ia produksi selanjutnya. Karena barang yang dimiliki Iwan semakin banyak, ia membutuhkan bantuan. Buatlah program untuk memasangkan setiap warna pada kotak dengan setiap nama barang pada kotak lainnya

Format Input & Output (input di-bold)

Masukkan jumlah warna : 3

Masukkan nama warna :
Biru
Hijau
Kuning

Masukkan jumlah barang : 5
Masukkan nama barang :
Gunting
Permen
Buku
Baju
Tempe

Ide barang selanjutnya :
Gunting Biru
Gunting Hijau
Gunting Kuning
Permen Biru
Permen Hijau
Permen Kuning
Buku Biru
Buku Hijau
Buku Kuning
Baju Biru
Baju Hijau
Baju Kuning
Tempe Biru
Tempe Hijau
Tempe Kuning
Terdapat 15 ide yang mungkin

Bab 5 - Problem 12
----------------------------------------------------------------------------------------------------
Tuan Krab ingin memperluas pasar untuk Krabi Pati. Kali ini dia berencana membangun Krasti Krab di pegunungan. Untuk Krasti Krab yang baru ini, dia ingin agar bangunannya berbentuk persegi. Namun, tanah yang tersedia di pegunungan tidaklah rata. Untuk menghemat anggaran, Tuan Krab hanya akan membangun pada bidang tanah yang rata saja (memiliki ketinggian sama). Kontur tanah di pegunungan direpresentasikan dalam square matrix berukuran NxN dimana nilai setiap elemennya menggambarkan ketinggian tanah di tempat tersebut. Tuan Krab meminta bantuan Anda untuk dapat menentukan luas maksimum dari Krasti Krab yang dapat dibangun.

Format Input dan Output Input berupa matriks kontur tanah disimpan dalam file eksternal contour.txt. Dalam file ini, baris pertama berisi bilangan bulat positif N yang merepresentasikan ukuran matriks. N baris berikutnya berisi N bilangan bulat yang masing-masing mewakili ketinggian tanah pada posisi tersebut. Output berupa informasi luas maksimum Krasti Krab yang dapat dibangun pada lokasi tersebut.

Contoh

> contour.txt

4
1 1 1 8
1 1 1 6
1 1 1 3
2 2 2 2

> runtime program

file loaded!
Luas maksimum Krasti Krab yang dapat dibangun adalah 9

SOURCE CODE
====================================================================================================

Bab 1 - Problem 5
----------------------------------------------------------------------------------------------------

    if __name__ == "__main__":
        nama = input("Masukan Nama : ")
        nilai = int(input("Masukan nilai : "))
        index = 'E'

        if nilai >= 81 and nilai <= 100 : index = 'A'
        elif nilai >= 61 : index = 'B'
        elif nilai >= 41 : index = 'C'
        elif nilai >= 21 : index = 'D'
        elif nilai >= 0 : index = 'E'
        else : index = 'INVALID'

        print(nama, "mendapat nilai", index)

Bab 2 - Problem 4
----------------------------------------------------------------------------------------------------

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

Bab 3 - Problem 3
----------------------------------------------------------------------------------------------------

    import math

    def is_composite(x):
        result = False
        factors_count = 0

    if x > 2 :
        for i in range(2, int(math.floor(math.sqrt(x))) + 1) :
            if x % i == 0 : factors_count += 1
        result = factors_count >= 1

    return result

    if __name__ == "__main__":
        nilai = [0 for _ in range(2)]
        nilai[0] = int(input("Masukkan nilai A :"))
        nilai[1] = int(input("Masukkan nilai B :"))

        print("Bilangan komposit di antara {} sampai {} adalah:".format(min(nilai), max(nilai)))

        for x in range(min(nilai), max(nilai) + 1) :
            if is_composite(x) : print(x)

Bab 4 - Problem 2
----------------------------------------------------------------------------------------------------

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

Bab 5 - Problem 12
----------------------------------------------------------------------------------------------------

    def is_matrix_valid(list1):
        list2 = [list1[i][j] for i in range(len(list1)) for j in range(len(list1))]
        list_set = set(list2)
        unique_list = list(list_set)
        return len(unique_list) == 1

    if __name__ == "__main__":
        file_name = "contour.txt"

        try:
            f_input = open(file_name, "r")
            print("File loaded!")
        except IOError:
            print(file_name, "not found!")
        else:
            n = int(f_input.readline())

            map = []

            for _ in range(n):
                temp = f_input.readline().split()
                map.append(temp)

            i = 0
            j = 0
            # Pemeriksaan luas 1x1 tidak dilakukan
            k = 2
            offset = n - 1
            max_size = 1
            location = [0, 0]

            while i < offset and j < offset:
                while i + k <= n and j + k <= n:
                    sub_matrix_slice_1 = slice(i, i + k)
                    sub_matrix_slice_j = slice(j, j + k)
                    map_sliced = [map[i2][sub_matrix_slice_1] for i2 in range(len(map))[sub_matrix_slice_j]]

                    if is_matrix_valid(map_sliced):
                        if k ** 2 > max_size :
                            max_size = k ** 2
                            location[0] = i
                            location[1] = j
                            #print("New size {} at {}".format(max_size, location))
                    else:
                        # Exit k loop
                        break

                    k += 1

                k = 2
                i += 1
                if i == offset:
                    i = 0
                    j += 1

            print("Luas maksimum Krasti Krab yang dapat dibangun adalah {} dengan lokasi di {} ".format(max_size, location))
            f_input.close()

PENJELASAN SOLUSI
====================================================================================================
Bab 1 - Problem 5
----------------------------------------------------------------------------------------------------
Solusi ini solusi sangat dasar.
Program menerima input, lalu dengan logika if sesuai di soal, program memetakan masing-masing nilai menjadi index dan menampilkannya di layar.

Bab 2 - Problem 4
----------------------------------------------------------------------------------------------------
Program menerima satu nilai integer (misalkan n), kemudian akan melakukan looping yang meminta input nilai sebanyak n.
Setiap input yang diterima dalam loop n akan diperiksa nilainya. Jika nilainya >= 60 maka jumlah dicatat dalam variabel lulus.
Program kemudian menampilkan jumlah lulus dan tidak lulus pada layar.

Bab 3 - Problem 3
----------------------------------------------------------------------------------------------------
Program menerima 2 nilai (misalkan A dan B). Nilai minimal dari kedua nilai tersebut akan dijadikan batas bawah (mis BB) dan nilai satunya menjadi batas atas (mis BA).
Program kemudian beriterasi pada setiap bilangan antara BB sampai BA. Setiap bilangan tersebut diperiksa oleh fungsi is_composite(x). Jika hasilnya true, maka akan dicetak pada layar.
Fungsi is_composite(x) adalah fungsi yang menghitung jumlah faktor bilangan x (mulai dari 2 sampai akar x).
Jika jumlah faktornya >= 1 (1 dan bilangan itu sendiri tidak dihitung), maka bilangan tersebut adalah bilangan komposit dan akan mengembalikan nilai true.

Bab 4 - Problem 2
----------------------------------------------------------------------------------------------------
Program menerima satu nilai integer (misalkan n_warna), kemudian akan melakukan looping yang meminta input nilai sebanyak n_warna. Setiap input akan disimpan ke dalam array warna.
Program menerima satu nilai integer (misalkan n_barang), kemudian akan melakukan looping yang meminta input nilai sebanyak n_barang. Setiap input akan disimpan ke dalam array barang.
Program kemudian melakukan nested loop pada array barang dan array warna. Program mencetak "barang[i] warna[j]" pada layar. Sehingga semua kemungkinan tercatat.
Setelah semuanya selesai program menghitung nilai n_warna * n_barang yang adalah jumlah semua kemungkinan.

Bab 5 - Problem 12
----------------------------------------------------------------------------------------------------
Program membaca file eksternal sesuai spek soal dan mendapat 2 data yang disimpan pada 2 variabel berbeda (n dan map)
n menyimpan ukuran matriks (nxn)
map menyimpan data ketinggian dalam bentuk matriks

Kemudian dilakukan searching seperti brute force string matching. Program beriterasi dari 0 sampai n-1 untuk sumbu x dan sumbu y.
Untuk setiap iterasi, diperiksa luas kxk yang melebar ke kanan dan ke bawah (luas 1x1 tidak diperiksa).
Submatrix kxk diperiksa oleh fungsi is_matrix_valid(list) yang mengembalikan true jika hanya terdapat 1 jenis elemen dalam submatrix tersebut.
Ukuran submatrix tersebut kemudian dibandingkan dengan variabel max_size (yang memiliki nilai awal 1). Jika ukuran matriks tersebut lebih besar, maka max_size diupdate dan lokasi submatrix tersebut dicatat.
Jika submatrix gagal memenuhi fungsi is_matrix_valid, maka program akan melanjutkan iterasi x dan y. Dan submatrix mulai dari x dan y tersebut mulai dari ukuran 2x2.
Setelah iterasi selesai program menampilkan ukuran maksimal yang bisa didapatkan beserta lokasi pertama luas maksimal tersebut ditemukan.
