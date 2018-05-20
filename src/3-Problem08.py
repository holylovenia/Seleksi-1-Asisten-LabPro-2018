#Author : Kurniandha Sukma Yunastrian (13516106)

#Function for calculate a^b
def power(a,b) :
    hasil = int(a)
    for i in range(int(b)-1) :
        hasil *= int(a)
    return str(hasil)

#Main Program
A = input('Masukan A:')
B = input('Masukan B:')
print(A+'^'+B+' = '+power(A,B))
