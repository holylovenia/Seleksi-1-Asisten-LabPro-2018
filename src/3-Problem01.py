# function to check if there is a number from 1 to 30 that solve the function = f
def brute(P, f):
	S = []
	for i in range(1,31):
		Fx = 0
		for k in P:
			Fx += k
			Fx *=i
		Fx //=i
		# if i solve the function add it to S
		if Fx==f :
			S.append(i)
	return S
	
# example function
P = [2, 3, 9, -1, 3, -2]
# input value of f(x)
f = int(input("Masukan f(x) : "))
# brute all x that solve the function
S = brute(P, f)
#if there is not x solve the function
if not S:
	print("Tidak ada x yang sesuai")
# print all x thth solve the function
else:
	print("Nilai x adalah {0}".format(*S, sep=","))