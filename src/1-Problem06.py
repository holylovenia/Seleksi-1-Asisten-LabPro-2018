#Program menghitung biaya peminjaman buku

bayar = 0
hargaSewa = int(input('Masukan harga sewa pokok: '))
batasWaktu = int(input('Masukan batas waktu sewa: '))
tambahHarga = int(input('Masukan tambahan harga sewa: '))
lamaPinjam = int(input('Masukan lama Tuan Vin meminjam: '))

if lamaPinjam > batasWaktu :
  bayar = (hargaSewa * batasWaktu)
  bayar += ((hargaSewa + tambahHarga) * (lamaPinjam - batasWaktu))
else :
  bayar = (hargaSewa * lamaPinjam)

print('Harga sewa yang harus dibayar Tuan Vin adalah: {}'.format(bayar))