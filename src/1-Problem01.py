"""
    NIM/Nama  : 13516002/Antonio Setya
    Topik     : Percabangan
    Deskripsi : Memunculkan jurusan dari seorang mahasiswa jika diberikan NIM-nya
"""

# Input
nama = input("Masukan Nama : ") # Menyimpan nama
nim = input("Masukan NIM : ") # Menyimpan NIM
jurusan = "???" # Menyimpan jurusan. Default adalah ???, bilamana program tidak dapat menentukan jurusannya

# Memroses NIM. Ini aman karena NIM selalu dipastikan berupa 8 karakter/digit
if (nim[0] == "1"):
    if (nim[1] == "3"):
        if (nim[2] == "5"):
            jurusan = "Teknik Informatika"
    elif (nim[1] == "8"):
        if (nim[2] == "0"):
            jurusan = "Teknik Tenaga Listrik"
        elif (nim[2] == "1"):
            jurusan = "Teknik Telekomunikasi"
        elif (nim[2] == "2"):
            jurusan = "Sistem dan Teknologi Informasi"

# Output
print(nama + " adalah mahasiswa " + jurusan)
