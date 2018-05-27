#Program fibbonaci

def makeFib(max):
  if(max == 1):
    return [1]

  i = 2
  arrFib = [1]

  while(i <= max):
    arrFib.append(i)

    i += arrFib[-2]
    

  return arrFib

nTamu = int(input('Masukkan jumlah tamu : '))
arrTamu = []

for i in range(nTamu):
  arrTamu.append(input('Masukan nama tamu {} : '.format(i+1)))

for i in makeFib(nTamu):
  print(arrTamu[i-1])
