#Program mencari index nilai terkecil

numKelompok = int(input('Masukan jumlah kelompok :'))
minAnggota = None
kelMin = None
tempNumAnggota = None

for i in range(numKelompok):
  tempNumAnggota = int(input('Masukan jumlah anggota kelompok {} :'.format(i + 1)))
  if(kelMin is None):
    kelMin = i + 1
    minAnggota = tempNumAnggota
  else : 
    if(tempNumAnggota < minAnggota):
      minAnggota = tempNumAnggota
      kelMin = i + 1

print('Kelompok dengan anggota tersedikit adalah kelompok {}'.format(kelMin))


