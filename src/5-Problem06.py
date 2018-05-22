#Pembuat : Kurniandha Sukma Yunastrian (13516106)

#Fungsi untuk membaca matriks dari file
def readFile (namaFile) :
    file = open(namaFile,'r')
    n = int(file.read(1))
    matriks = [[0 for i in range(n)] for j in range(n)]
    file.read(1)
    for i in range(int(n)) :
        for j in range (int(n)) :
            matriks[i][j] = file.read(1)
            file.read(1)
    file.close()
    print('matriks loaded!')
    return matriks

#Fungsi untuk menentukan transpose dari matriks
def transpose (matriks) :
    temp = [[0 for i in range(len(matriks))] for j in range(len(matriks))]
    for i in range(len(matriks)) :
        for j in range(len(matriks)) :
            temp[i][j] = matriks[j][i]
            
    return temp

#Fungsi untuk mengalikan matriks
def kaliMatriks (mat1,mat2) :
    temp = [[0 for i in range(len(mat1))] for j in range(len(mat2))]
            
    for i in range(len(mat1)) :
        for j in range(len(mat2)) :
            for k in range(len(mat1)) :
                temp[i][j] += int(mat1[i][k]) * int(mat2[k][j])
                
    return temp

#Fungsi untuk mengecek apakah matriks orthogonal atau bukan
def cek_orthogonal (matriks) :
    mat_trans = transpose(matriks)
    hasil = kaliMatriks(matriks,mat_trans)
    check = 0
    i=0
    j=0
    while ((i<len(matriks)) and (check == 0)) :
        if (i == j) :
            if (hasil[i][j] != 1) :
                check = 1
        else :
            if (hasil[i][j] != 0) :
                check = 1
        if (j == len(matriks)-1) :
            i += 1
            j = 0
        else :
            j += 1
    if (check == 0) :
        return 'Yes'
    else :
        return 'No'

#Program Utama
matriks = readFile('matriks.txt')
print (cek_orthogonal(matriks))
