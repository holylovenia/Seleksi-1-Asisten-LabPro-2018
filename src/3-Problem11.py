"""
    NIM/Nama  : 13516002/Antonio Setya
    Topik     : Prosedur/Fungsi
    Deskripsi : Menentukan apakah angka masukan merupakan bilangan menanjak atau bukan
"""

# Fungsi isMenanjak :
# I.S. Menerima string yang berisi bilangan masukan
# F.S. Mengembalikan true jika bilangan menanjak, false jika tidak
def isMenanjak(inp):
    i = len(inp) - 1
    result = True
    while ((i > 0) and result):
        if (int(inp[i]) < int(inp[i-1])):
            i -= 1
        else:
            result = False
    return result

# Input
n = input("Masukkan N: ") # Menyimpan bilangan N.

# Memroses N dan output
if (isMenanjak(n)):
    print("Bilangan " + n + " adalah bilangan menanjak.")
else:
    print("Bilangan " + n + " bukan bilangan menanjak.")
