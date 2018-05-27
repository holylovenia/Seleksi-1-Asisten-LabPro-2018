from copy import deepcopy

def main():
    li = []
    me = inputPosisi("mahasiswa")
    N = int(input("Masukan banyak penjual: "))
    for i in range(1,N + 1):
        penjual = str(i), inputPosisi("penjual " + str(i))
        li.append(penjual)
    print("Penjual terdekat adalah penjual " + solve(me, li) + ".")
    return

def solve(me, li):
    # find nearest penjual (li) according to mahasiswa (me)
    # brute force (check all element of list)
    # return result (index of penjual) in string
    liCopy = deepcopy(li)
    res, first = liCopy.pop(0)
    xp, yp = first
    xm, ym = me
    dist = (xp - xm) * (xp - xm) + (yp - ym) * (yp - ym)
    for i, penjual in liCopy:
        xp, yp = penjual
        distCheck = (xp - xm) * (xp - xm) + (yp - ym) * (yp - ym)
        if distCheck < dist:
            dist = distCheck
            res = i
    return res

def inputPosisi(st):
    print("Masukan posisi " + st + " : ")
    x = int(input("X : "))
    y = int(input("Y : "))
    return x, y

if __name__ == '__main__':
    main()
