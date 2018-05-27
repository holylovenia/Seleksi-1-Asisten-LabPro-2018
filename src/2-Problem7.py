def main():
    N = int(input("Masukan N: "))
    for i in range(N):
        print(strH(N))
    print(strV(N))
    for i in range(N):
        print(strH(N))
    return

def strH(N):
    res = ""
    for i in range(N):
        res += " "
    res += "|"
    return res

def strV(N):
    res = ""
    for i in range(N):
        res += "-"
    res += "+"
    for i in range(N):
        res += "-"
    return res

if __name__ == '__main__':
    main()
