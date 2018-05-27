#input total number of keys
n = int(input("Masukan jumlah kunci yang ada : "))

# array to save all number keys
arr = []
# save all keys number to array
print("Masukan nomor ruangan kunci yang ada :")
for i in range(0, n):
	arr.append(int(input()))

# array to check if keys has duplicate or not , 1 if it has duplicate and 0 if its not
# set all V to 0
V = [0]*n
# iterate aall keys, and check whether it has duplicate or not
for i in range(0, n):
	j = 0
	# if this keys still not checked or isnt a duplicate of previous keys
	if (V[i]==0):
		while (j < n):
			# if duplicate found set V of current keys and the duplicate to 1
			if (i!=j and arr[i]==arr[j]) :
				V[i] = V[j] = 1
			j += 1
# array to contain all keys that need to duplicated
S = []
for i in range(0, n):
	if (V[i]==0) :
		S.append(arr[i])

print("Kunci yang harus di duplikat :")
for k in s:
	print(k)
