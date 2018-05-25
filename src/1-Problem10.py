'''
x = input()
d = {':)' : 'senyum', ':(' : 'sedih', ':D' : 'tertawa', ':\'(' : 'menangis', ':))' : 'ROTFL'}
print('Tuan Vin sedang ' + d.get(x, '..\n\n\n\nMaaf, nomor yang anda tuju sedang sibuk.\n\n\n\nCobalah beberapa saat lagi.'))
'''

'''
	Soal dikerjakan dengan menggunakan percabangan 'if',
	jika input sesuai dengan daftar emot yang ada maka akan menampilkan output
	'Tuan Vin sedang ' ditambah dengan perasaan Tuan Vin yang tergambar oleh emot.
'''

x = input()
b = True
print('Tuan Vin sedang ', end = '')
if len(x) == 2 :
	if x[0] == ':' :
		if x[1] == ')' :
			print('senyum')
		elif x[1] == '(' :
			print('sedih')
		elif x[1] == 'D' :
			print('tertawa')
		else :
			b = False
	else :
		b = False
elif len(x) == 3 :
	if x[0] == ':' :
		if x[1] == '\'' and x[2] == '(' :
			print('menangis')
		elif x[1] == ')' and x[2] == ')' :
			print('ROTFL')
		else :
			b = False
	else :
		b = False
else :
	b = False
if not b :
	print('..\n\n\n\nMaaf, nomor yang anda tuju sedang sibuk.\n\n\n\nCobalah beberapa saat lagi.')
