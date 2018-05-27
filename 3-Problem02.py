#Prisila Michelle - 13516129

def Power(a,b):
	result = 1

	for i in range(0,b):
		result = result * a

	return result

def HexToDec(hex):
	pangkat = 1
	result = 0

	for i in range(0,2):
		if hex[i] == '0':
			result = result + 0
		elif hex[i] == '1':
			result = result + 1 * Power(16,pangkat)
		elif hex[i] == '2':
			result = result + 2 * Power(16,pangkat)
		elif hex[i] == '3':
			result = result + 3 * Power(16,pangkat)
		elif hex[i] == '4':
			result = result + 4 * Power(16,pangkat)
		elif hex[i] == '5':
			result = result + 5 * Power(16,pangkat)
		elif hex[i] == '6':
			result = result + 6 * Power(16,pangkat)
		elif hex[i] == '7':
			result = result + 7 * Power(16,pangkat)
		elif hex[i] == '8':
			result = result + 8 * Power(16,pangkat)
		elif hex[i] == '9':
			result = result + 9 * Power(16,pangkat)
		elif hex[i] == 'A':
			result = result + 10 * Power(16,pangkat)
		elif hex[i] == 'B':
			result = result + 11 * Power(16,pangkat)
		elif hex[i] == 'C':
			result = result + 12 * Power(16,pangkat)
		elif hex[i] == 'D':
			result = result + 13 * Power(16,pangkat)
		elif hex[i] == 'E':
			result = result + 14 * Power(16,pangkat)
		elif hex[i] == 'F':
			result = result + 15 * Power(16,pangkat)

		pangkat = pangkat - 1

	return result


def DecToHex(dec):
	result = []

	while dec > 0:
		remainder = dec % 16

		if remainder == 0:
			result.append('0')
		elif remainder == 1:
			result.append('1')
		elif remainder == 2:
			result.append('2')
		elif remainder == 3:
			result.append('3')
		elif remainder == 4:
			result.append('4')
		elif remainder == 5:
			result.append('5')
		elif remainder == 6:
			result.append('6')
		elif remainder == 7:
			result.append('7')
		elif remainder == 8:
			result.append('8')
		elif remainder == 9:
			result.append('9')
		elif remainder == 10:
			result.append('A')
		elif remainder == 11:
			result.append('B')
		elif remainder == 12:
			result.append('C')
		elif remainder == 13:
			result.append('D')
		elif remainder == 14:
			result.append('E')
		elif remainder == 15:
			result.append('F')

		dec = dec // 16

	hex = ''

	for i in reversed(range(len(result))):
		hex = hex + result[i] 

	return hex

A = input("Masukan A : ")
B = input("Masukan B: ")

resultA = HexToDec(A)
resultB = HexToDec(B)

resultinDec = resultA + resultB
resultinHex = DecToHex(resultinDec)

print(A, "+", B, "=", resultinHex)