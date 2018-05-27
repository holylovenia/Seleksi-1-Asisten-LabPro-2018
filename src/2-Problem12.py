"""
    NIM/Nama  : 13516002/Antonio Setya
    Topik     : Pengulangan
    Deskripsi : Diberikan jumlah pemotongan sebuah pizza, mengeluarkan potongan maksimal pizza yang didapat
"""

# Input
n = int(input("Masukan jumlah pemotongan :")) # Menyimpan berapa kali pizza dipotong

# Memroses jumlah potongan. Rumus : f(n) = n + f(n-1); f(0) = 1
out = 0
for i in range (n,0,-1):
    out += i
out += 1

# Output
print("Potongan maksimal yang didapat adalah " + str(out))
