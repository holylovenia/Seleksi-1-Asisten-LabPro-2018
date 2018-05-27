"""
    NIM/Nama  : 13516002/Antonio Setya
    Topik     : Array (List dalam Python)
    Deskripsi : Menghitung integral biasa, diberikan pangkat tertinggi dan koefisien-koefisien variabelnya
"""

# Fungsi mengisi array dari masukan pengguna berdasarkan pangkat tertingginya
def fillIntegral(n):
    out = []
    for i in range(n,-1,-1):
        temp = int(input("Masukkan koefisien X^" + str(i) + " : "))
        out.append(temp)
    return out

# Fungsi melakukan integral dari array masukan
def doIntegral(eq_in):
    count = len(eq_in)
    for i in range(count,0,-1):
        eq_in[-i] = eq_in[-i] / i

# Fungsi mencetak persamaan dari array masukan
def PrintEquation(eq_in, highest):
    isFirstPrinted = False
    for i in range(highest,0,-1):
        if (eq_in[-i] != 0):
            if (isFirstPrinted):
                print(" + ",end="")
            else:
                isFirstPrinted = True
            print(str(eq_in[-i]) + "x^" + str(i),end="")

# Input
biggest = int(input("Masukkan pangkat paling besar : "))
equation = fillIntegral(biggest)
# Proses
doIntegral(equation)
# Output
PrintEquation(equation,biggest+1)
print(" + c")
