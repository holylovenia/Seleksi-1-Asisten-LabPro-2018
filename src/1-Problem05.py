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
