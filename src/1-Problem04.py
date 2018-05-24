#Mengambil Input dari User
a = int(input("Masukkan nilai X : "))
b = int(input("Masukkan nilai Y : "))
str = "Titik (" + str(a) +"," +str(b) + ") berada di"

#Menyaring Nilai Koordinat
if ((a == 0) and (b == 0)):  
    print(str + " titik origin")
elif (a == 0):
    print(str + " sumbu Y")
elif (b == 0):
    print(str + " sumbu X")
else :
    str += " kuadran "
    if((a > 0) and (b > 0)):
        print(str + "1")
    elif(a > 0):
        print(str + "2")
    elif(b > 0):
        print(str + "4")
    else :
        print(str + "3")