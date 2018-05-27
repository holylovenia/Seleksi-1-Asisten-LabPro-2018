#Primality

def sieve(max):
  arrPrime = [True]*(max+1)
  arrPrime[0] = False
  arrPrime[1] = False
  i = 2
  while(i**2 <= max):
    if(arrPrime[i]):
      j = i**2
      
      while(j <= max):
        arrPrime[j] = False
        j += i
      
    i += 1

  return arrPrime

def printPrime(min, max):
  arrPrime = sieve(max)

  for i in range(min, max+1):
    if(arrPrime[i]):
      print(i)

min = int(input('Masukkan nilai A : '))
max = int(input('Masukkan nilai B : '))
total = max + min
min = (min if max > min else max)
max = total - min

printPrime(min, max)
