def inputKoefisien(N):
	kata="Masukkan koefisien x^"+str(N)+" : "
	arr=input(kata)
	return (int(arr))



n=input("Masukkan pangkat paling besar : ")
N=int(n)
pangkatPertama=N
array=[]
while (pangkatPertama>=0):
	arr=inputKoefisien(pangkatPertama)
	array.append(int(arr))
	pangkatPertama=pangkatPertama-1

pangkat=N
hasil=''
while (pangkat>0):
	isi=array[0]*pangkat
	array.pop(0)
	pangkat=pangkat-1
	if (pangkat == N-1):
		hasil=hasil+"Maka hasilnya adalah "+str(isi)+"x^"+str(pangkat)+" "
	else:
		hasil=hasil+"+ "+str(isi)+"x^"+str(pangkat)+" "
print (hasil)
		
