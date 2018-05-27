# function that return the sum of all factor of a number
def getSumOfAllFactor(x) :
	if x==1 :
		return 0
	sum = 0
	i = 1
	while (i<=x**0.5):
		if x%(i)==0 :
			sum += i + x//i
		i+=1
	return int(sum-x)
# function that check if a number x is type tipe or not
def isType(x, tipe) :
	if tipe=='A' and getSumOfAllFactor(x)<int(x) :
		return True
	elif tipe=='B' and getSumOfAllFactor(x)==int(x) :
		return True
	elif tipe=='C' and getSumOfAllFactor(x)>int(x) :
		return True
	else :
		return False
# get list of all x that 
def getList(x, y, tipe) :
	L = []
	for i in range(x, y+1):
		if isType(i, tipe) :
			L.append(i)
	return L
	
x = int(input("Masukan X :"))
y = int(input("Masukan Y :"))
tipe = input("Masukan tipe bilangan :")
print("Tipe bilangan {0} pada rentang {1} sampai {2} adalah".format(tipe, x, y))
L = getList(x, y, tipe)
if not L:
	print("Tidak ada")
else :
	for number in L:
		print(number)