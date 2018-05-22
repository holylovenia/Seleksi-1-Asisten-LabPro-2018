from copy import deepcopy

def funct(inp, li):
    res = deepcopy(li)
    if inp == "ikan":
        if "A" in res:
            res.remove("A")
        if "C" in res:
            res.remove("C")
    elif inp == "daging":
        if "B" in res:
            res.remove("B")
        if "C" in res:
            res.remove("C")
        if "D" in res:
            res.remove("D")
    elif inp == "sayur":
        if "D" in res:
            res.remove("D")
        if "E" in res:
            res.remove("E")
    elif inp == "buah":
        if "B" in res:
            res.remove("B")
    return res


if __name__ == "__main__":
    mineral = ["A","B","C","D","E"]

    inp1 = str(input("Masukan makanan 1: "))
    inp2 = str(input("Masukan makanan 2: "))

    mineral1 = funct(inp1, mineral)
    mineral2 = funct(inp2, mineral1)

    res = " "
    for min in mineral2:
        res += min + " "

    print("Mineral" + res + "tidak didapatkan Tuan Vin")
