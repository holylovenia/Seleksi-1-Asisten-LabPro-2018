"""
    NIM/Nama  : 13516002/Antonio Setya
    Topik     : Matriks/File Eksternal
    Deskripsi : Menentukan dalam berapa lama apocalypse tiba di Bikini Batem
"""

# Fungsi untuk membuka file dan mengeluarkan matriks representasinya
def LoadMatrix(filename):
    out = []
    with open(filename,"r") as fin:
        # Membaca ukuran matriks
        count = int(fin.readline())
        # Membaca matriks masukan
        for i in range(0,count):
            out.append([])
            line = fin.readline()
            out[i] = line.split()
    return out

# Fungsi untuk memeriksa apakah kota sudah dalam apocalypse atau tidak
# Mengembalikan true jika iya, false jika tidak
def isApocalypse(mat_in):
    result = True
    count = len(mat_in)
    i = 0
    while ((i < count) and result):
        j = 0
        while ((j < count) and result):
            if (mat_in[i][j] == "H"):
                result = False
            else:
                j += 1
        if result:
            i += 1
    return result

# Fungsi untuk menginfeksi tetangga dari lokasi yang diberikan. Mengubah mat_in
# Mengembalikan list yang berisi koordinat tetangga-tetangga yang terinfeksi
def infect(mat_in,x,y):
    infected = []
    rows = len(mat_in)
    xstart = (x - 1) if ((x - 1) >= 0) else 0
    ystart = (y - 1) if ((y - 1) >= 0) else 0
    xend = (x + 2) if ((x + 2) <= rows) else rows
    yend = (y + 2) if ((y + 2) <= rows) else rows
    for i in range(ystart,yend):
        for j in range(xstart,xend):
            if ((i,j) != (x,y)):
                infected.append((i,j))
                mat_in[i][j] = "U"
    return infected

# Fungsi untuk menghitung kapan kota dalam apocalypse
# Mengembalikan berapa hari kota mencapai apocalypse
def whenApocalypse(mat_in):
    days = 0
    if (not isApocalypse(mat_in)):
        days += 1
        rows = len(mat_in)
        infected = []
        # Mencari rumah-rumah yang sudah terjangkit virus
        for i in range(0,rows):
            for j in range(0,rows):
                if (mat_in[i][j] == "U"):
                    infected.append((i,j))
        # Menularkan virus ke tetangganya.
        # Tetangga yang tertular disimpan di infected untuk iterasi selanjutnya
        if not infected:
            days = -1
        else:
            new_infected = []
            for cell in infected:
                new_infected += infect(mat_in,cell[1],cell[0])
            infected = new_infected

            while (not isApocalypse(mat_in)):
                days += 1
                new_infected = []
                for cell in infected:
                    new_infected += infect(mat_in,cell[1],cell[0])
                infected = new_infected
    return days

# Memuat file
matrix_in = LoadMatrix("city.txt")
print("matriks loaded!")
# Memroses dan menghasilkan keluaran
how_long = whenApocalypse(matrix_in)
if (how_long < 0):
    print("Tidak ada virus dalam kota. Apocalypse tidak akan terjadi.")
else:
    print("Lama waktu apocalypse adalah " + str(how_long) + " hari")
