def main():
    N = int(input("Masukkan N: "))
    print("Masukkan array A: ")
    a = []
    for i in range(N):
        inp = int(input())
        a.append(inp)
    b = []
    print("Masukkan array B: ")
    for i in range(N):
        inp = int(input())
        b.append(inp)
    res = solve(a, b)
    str1 = "Array A "
    str3 = " array B"
    if res == 0:
        str2 = "lebih kecil dari"
    elif res == 1:
        str2 = "sama besar dengan"
    else:
        str2 = "lebih besar dari"
    print(str1 + str2 + str3)
    return

def solve(a, b):
    for el_a, el_b in zip(a, b):
        if el_a < el_b:
            return 0
        elif el_a > el_b:
            return 2
    return 1

if __name__ == '__main__':
    main()
