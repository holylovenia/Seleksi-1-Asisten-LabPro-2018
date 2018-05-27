file = open("chess.txt","r")
N= int(file.readline())

mat=[]
mat=[line.split() for line in file]
print ("matriks loaded!")
result=[-1,-1,-1,-1]
for i in range(0,len(mat)):
	result_baris=0
	result_kolom=0
	for j in range(0,len(mat[i])):
		result_baris=result_baris+int(mat[i][j])
		if (int(mat[i][j])==1):
			result_kolom=j
	if (result_baris == 1):
		result[i]=result_kolom
	else:
		result[i]=-1

k=0
tabrak=0
while (k<N):
	if (result[k]==-1):
		k=k+1
	else:
		kolom=result[k]
		result_kolom_new=0
		for i in range(0,N):
			result_kolom_new=result_kolom_new+int(mat[i][kolom])
		if(result_kolom_new==1):
			tabrak=tabrak+1
		k=k+1
print ("Banyaknya benteng yang tidak saling serang adalah "+ str(tabrak))	