#Nama	: Dandy Arif Rahman
#NIM	: 13516086
#Soal	: BAB 1 - Problem 9

deg1 = input("Masukan suhu satuan termometer: ")
t1 = float(input("Masukan besar suhu: "))
deg2 = input("Masukan satuan yang ingin diketahui: ")

if (deg1 == "C"):
	if (deg2 == "C"):
		t2 = t1
	elif (deg2 == "R"):
		t2 = 4 / 5 * t1
	elif (deg2 == "F"):
		t2 = (9 / 5 * t1) + 32
	else:
		t2 = -9999
elif (deg1 == "R"):
	if (deg2 == "C"):
		t2 = 5 / 4 * t1
	elif (deg2 == "R"):
		t2 = t1
	elif (deg2 == "F"):
		t2 = (9 / 4 * t1) + 32
	else:
		t2 = -9999
elif (deg1 == "F"):
	if (deg2 == "C"):
		t2 = 5 / 9 * (t1 - 32)
	elif (deg2 == "R"):
		t2 = 4 / 9 * (t1 - 32)
	elif (deg2 == "F"):
		t2 = t1
	else:
		t2 = -9999
else:
	t2 = -9999

if t2 == -9999:
	print("ERROR")
else:	
	print("Besar suhu dalam %s: %.2f" % (deg2, t2))