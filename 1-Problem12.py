a=input("Masukkan nilai A: ");
b=input("Masukkan nilai B: ");
c=input("Masukkan nilai C: ");
d=input("Masukkan nilai D: ");

A=int(a)
B=int(b)
C=int(c)
D=int(d)

if (D!=0):
	if((A+B)==int(C/D)):
		print ("Persamaan yang mungkin adalah: "+a+" + "+b+" = "+c+" / "+d)
	if((A-B)==int(C/D)):
		print ("Persamaan yang mungkin adalah: "+a+" - "+b+" = "+c+" / "+d)
	if((A*B)==int(C/D)):
		print ("Persamaan yang mungkin adalah: "+a+" * "+b+" = "+c+" / "+d)
if (B!=0):
	if(int(A/B)==(C+D)):
		print ("Persamaan yang mungkin adalah: "+a+" / "+b+" = "+c+" + "+d)
	if(int(A/B)==(C-D)):
		print ("Persamaan yang mungkin adalah: "+a+" / "+b+" = "+c+" - "+d)
	if(int(A/B)==(C*D)):
		print ("Persamaan yang mungkin adalah: "+a+" / "+b+" = "+c+" * "+d)
if ((B!=0) and (D!=0)):
	if(int(A/B)==int(C/D)):
		print ("Persamaan yang mungkin adalah: "+a+" / "+b+" = "+c+" / "+d)

if((A+B) == (C-D)):
	print ("Persamaan yang mungkin adalah: "+a+" + "+b+" = "+c+" - "+d)
if((A+B)==(C*D)):
	print ("Persamaan yang mungkin adalah: "+a+" + "+b+" = "+c+" * "+d)
if((A+B)==(C+D)):
	print ("Persamaan yang mungkin adalah: "+a+" + "+b+" = "+c+" + "+d)
if((A-B)==(C+D)):
	print ("Persamaan yang mungkin adalah: "+a+" - "+b+" = "+c+" + "+d)
if((A-B)==(C-D)):
	print ("Persamaan yang mungkin adalah: "+a+" - "+b+" = "+c+" - "+d)
if((A-B)==(C*D)):
	print ("Persamaan yang mungkin adalah: "+a+" - "+b+" = "+c+" * "+d)

if((A*B)==(C+D)):
	print ("Persamaan yang mungkin adalah: "+a+" * "+b+" = "+c+" + "+d)
if((A*B)==(C-D)):
	print ("Persamaan yang mungkin adalah: "+a+" * "+b+" = "+c+" - "+d)
if((A*B)==(C*D)):
	print ("Persamaan yang mungkin adalah: "+a+" * "+b+" = "+c+" * "+d)


