def faktorial(N):
	if(N==1):
		return 1;
	else:
		return (N*faktorial(N-1));

n=input("Masukan N: ")
N=int(n)
faktor=faktorial(N);
print ("N! =",faktor)