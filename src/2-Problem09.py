#Author : Kurniandha Sukma Yunastrian (13516106)

from math import sqrt

#Function for calculate distance of two points (x1,y1) and (x2,y2)
def distance(x1,y1,x2,y2) :
    return sqrt((x1-x2)**2 + (y1-y2)**2)

#Main Program
print('Masukan lokasi mahasiswa tersebut')
X1 = int(input('X :'))
Y1 = int(input('Y :'))

max_idx = int(input('Masukan banyaknya percetakan :'))
temp_distance = -1
temp_num = 0

for i in range(int(max_idx)) :
    print('Masukan posisi percetakan '+str(i+1))
    X2 = int(input('X :'))
    Y2 = int(input('Y :'))
    if (temp_distance < 0) :
        temp_distance = distance(X1,Y1,X2,Y2)
        temp_num = i+1
    elif (temp_distance > distance(X1,Y1,X2,Y2)) :
        temp_distance = distance(X1,Y1,X2,Y2)
        temp_num = i+1
print ('Pedagang terdekat adalah pedagang '+str(temp_num)+'.')
