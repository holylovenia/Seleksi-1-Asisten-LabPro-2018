message = input("Masukan teks terenkripsi: ")
n=input("Masukan nilai N :")
N=int(n);

dmessage = ""
for ch in message:
	char = ord(ch)
	if ((char>=ord('a')) and (char<=ord('z'))):
		if (char-N < ord('a')):
			char=char+ord('z')-N-ord('a')+1
		else :
			char=char-N
	dmessage = dmessage + str(char) +" "
decodedMessage = ""

for item in dmessage.split():
   decodedMessage += chr(int(item))   

print ('Teks aslinya adalah "'+decodedMessage+'"')

