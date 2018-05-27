import math

def is_composite(x):
    result = False
    factors_count = 0

    if x > 2 :
        for i in range(2, int(math.floor(math.sqrt(x))) + 1) :
            if x % i == 0 : factors_count += 1
        result = factors_count >= 1

    return result

if __name__ == "__main__":
    nilai = [0 for _ in range(2)]
    nilai[0] = int(input("Masukkan nilai A :"))
    nilai[1] = int(input("Masukkan nilai B :"))

    print("Bilangan komposit di antara {} sampai {} adalah:".format(min(nilai), max(nilai)))

    for x in range(min(nilai), max(nilai) + 1) :
        if is_composite(x) : print(x)

