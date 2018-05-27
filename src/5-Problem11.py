import sys

# Input from file
filename  = input("Masukan nama file : ")
file = open(filename)
sys.stdin = file

#save size of matriks on size and element matriks on M
size = [int(x) for x in input().split(" ")]
M = [[int(x) for x in input().split(" ")] for _ in range(size[0])]
print("file loaded!")
# set maks Queue to 0
maks = 0

# Check for each row on matriks for longest queue
for i in range(size[0]) :
	counter = 0
	j = size[1] - 1
	# iterate from front to back and count how long current queue
	while (j>=0) :
		# if 
		if (M[i][j] == 1) :
			counter += 1
		j -= 1
	# if this queue longer than maks queue then change maks queue
	if (counter > maks) :
		maks = counter

print("antrian terpanjang adalah {0}".format(maks))