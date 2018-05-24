def HexConv(num) :
    if (num < 10):
        return(str(num))
    elif (num == 10 ):
        return("A")
    elif (num == 11 ):
        return("B")
    elif (num == 12 ):
        return("C")
    elif (num == 13 ):
        return("D")
    elif (num == 14 ):
        return("E")
    elif (num == 15 ):
        return("F")

def DecConv(num) :
    try:
        val = int(num)
        return(val)
    except(ValueError):
        if(num == "A"):
            return(10)
        elif(num == "B"):
            return(11)
        elif(num == "C"):
            return(12)
        elif(num == "D"):
            return(13)
        elif(num == "E"):
            return(14)
        elif(num == "F"):
            return(15)

def HexToDec(num):
    sum = 0
    for c in num:
        p = DecConv(c)
        sum = sum*16 + p
    return(sum)


def DecToHex(num):
    if(num < 1):
        return("0")
    elif (num == 1):
        return("1")
    else :
        ns = DecToHex(num//16)
        x = num % 16
        return(ns + HexConv(x))

a = input("Masukan A:")
b = input("Masukan B:")

xa = HexToDec(a)
xb = HexToDec(b)

print(a + " + " + b + " = " + DecToHex(xa + xb))
