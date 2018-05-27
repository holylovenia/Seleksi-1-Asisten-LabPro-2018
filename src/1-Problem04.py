x = int(input("Masukan nilai X : "))
y = int(input("Masukan nilai Y : "))

# determine kuadran of x,y
if x == 0 and y == 0:
	daerah = "titik origin"
elif x == 0 :
	daerah = "sumbu Y"
elif y == 0 :
	daerah = "sumbu X"
elif x > 0 and y > 0 :
	daerah = "kuadran 1"
elif x < 0 and y > 0 :
	daerah = "kuadran 2"
elif x < 0 and y < 0 :
	daerah = "kuadran 3"
else :
	daerah = "kuadran 4"
	
print('Titik ({0},{1}) berada di {2}'.format(x, y, daerah))