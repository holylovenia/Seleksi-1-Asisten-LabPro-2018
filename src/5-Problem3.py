def main():
    # read file
    with open("result.txt") as f:
        content = f.readlines()
    content = [x.strip() for x in content]

    #result loaded!
    print("result loaded!")

    # put into matrix
    N = int(content[0])
    mat = []
    for i in range(1,N + 1):
        el = []
        for word in content[i]:
            el.append(word)
        mat.append(el)
    res = solve(mat)
    if res == 0:
        print("Tidak ada pemenang")
    elif res == 1:
        print("Pemenangnya adalah Anda")
    elif res == 2:
        print("Pemenangnya adalah Tuan Krab")
    return

def solve(mat):
    # find who wins the game by calculating each row, diagonal, and column (make list of list of row, diagonal, and column)
        # while not found the winner, keep searching
        # return : 0 means no one win, 1 means player win, 2 means Tuan Krab win
    liCheck = []
    for ar in mat:
        liCheck.append(ar)
    for j in range(len(mat)):
        ar = []
        for i in range(len(mat)):
            ar.append(mat[i][j])
        liCheck.append(ar)
    ar = []
    for i in range(len(mat)):
        ar.append(mat[i][i])
    liCheck.append(ar)
    ar = []
    for i in range(len(mat)):
        ar.append(mat[i][len(mat) - 1 - i])
    liCheck.append(ar)
    # check element in liCheck.
    for line in liCheck:
        N = len(line)
        x = 0
        o = 0
        for word in line:
            if word == "x":
                x += 1
            elif word == "o":
                o += 1
        if x == N:
            return 2
        elif o == N:
            return 1
    return 0

if __name__ == '__main__':
    main()
