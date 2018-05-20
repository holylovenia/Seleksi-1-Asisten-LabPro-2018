#Author : Kurniandha Sukma Yunastrian (13516106)

#Main Program
Wei = []
Wu = []
Shu = []

wealth = int(input('Masukkan jumlah kekayaan negara Wei : '))
print('Masukkan kekayaan negara Wei :')
for i in range(wealth) :
    x = input()
    Wei.append(x)
    min_wealth = wealth
    min_nation = 0
    max_wealth = wealth
    max_nation = 0
    
wealth = int(input('Masukkan jumlah kekayaan negara Wu : '))
print('Masukkan kekayaan negara Wu :')
for i in range(wealth) :
    x = input()
    Wu.append(x)
    if (min_wealth > wealth) :
        min_wealth = wealth
        min_nation = 1
    if (max_wealth < wealth) :
        max_wealth = wealth
        max_nation = 1
    
wealth = int(input('Masukkan jumlah kekayaan negara Shu : '))
print('Masukkan kekayaan negara Shu :')
for i in range(wealth) :
    x = input()
    Shu.append(x)
    if (min_wealth > wealth) :
        min_wealth = wealth
        min_nation = 2
    if (max_wealth < wealth) :
        max_wealth = wealth
        max_nation = 2

if (min_nation == 0) :
    nation1 = Wei
    if (max_nation == 1) :
        nation2 = Shu
        nation3 = Wu
    else :
        nation2 = Wu
        nation3 = Shu
elif (min_nation == 1) :
    nation1 = Wu
    if (max_nation == 0) :
        nation2 = Shu
        nation3 = Wei
    else :
        nation2 = Wei
        nation3 = Shu
else :
    nation1 = Shu
    if (max_nation == 1) :
        nation2 = Wei
        nation3 = Wu
    else :
        nation2 = Wu
        nation3 = Wei
        
same_check = 0
for i in range (min_wealth) :
    check = 0
    j = 0
    while ((check == 0) and (j != len(nation2))) :
        if (nation1[i] == nation2[j]) :
            check = 1
        j += 1
    if (check == 1) :
        j = 0
        while ((check == 1) and (j != len(nation3))) :
            if (nation1[i] == nation3[j]) :
                check = 2
                if (same_check == 0) :
                    print('Ketiga negara tersebut harus membagikan :')
                same_check = 1
                print(nation1[i])
            j += 1
            
if (same_check == 0) :
    print('Ketiga negara tersebut tidak memiliki kekayaan yang sama')
