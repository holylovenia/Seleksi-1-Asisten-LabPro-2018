n = int(input("Masukkan banyaknya bilangan :"))

print(str(n) + " bilangan pertama dari deret adalah")

class fibList:
    def __init__(self):
        self.numbers = [1,1]

    def IdxExist(self,x):
        b = x < len(self.numbers)
        return(b)

    def fibVal(self,x):
        if (x < 0):
            return(0)
        elif(x == 0):
            return(1)
        elif(x == 1):
            return(1)
        elif (self.IdxExist(x)) :
            return(self.numbers[x])
        else :
            x = self.fibVal(x-1) + self.fibVal(x-2)
            if(x % 3 == 0) :
                x = x + 1
            self.numbers.append(x) 
            return(x)

lf = fibList()
for i in range(0,n) :
    print(lf.fibVal(i))


# ls = []
# x = 1
# for i in range(0,n):
#     x = 1
#     if(i - 1 >= 0):
#         print(ls[i-1])
#         x += ls[i-1]
#     if (i-2 >= 0):
#         print(ls[i-2])
#         x += ls[i-2]
#     print(ls)
#     if(x % 3 == 0):
#         x += 1
#     print(x)
#     ls.append(x)