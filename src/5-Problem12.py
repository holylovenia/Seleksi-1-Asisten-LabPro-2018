def is_matrix_valid(list1):
    list2 = [list1[i][j] for i in range(len(list1)) for j in range(len(list1))]
    list_set = set(list2)
    unique_list = list(list_set)
    return len(unique_list) == 1

if __name__ == "__main__":
    file_name = "contour.txt"

    try:
        f_input = open(file_name, "r")
        print("File loaded!")
    except IOError:
        print(file_name, "not found!")
    else:
        n = int(f_input.readline())

        map = []

        for _ in range(n):
            temp = f_input.readline().split()
            map.append(temp)

        #print(map)
        #print(len(map))

        i = 0
        j = 0
        # Pemeriksaan luas 1x1 tidak dilakukan
        k = 2
        offset = n - 1
        max_size = 1
        location = [0, 0]

        while i < offset and j < offset:
            #print("i = {}, j = {}".format(i,j))
            while i + k <= n and j + k <= n:
                sub_matrix_slice_1 = slice(i, i + k)
                sub_matrix_slice_j = slice(j, j + k)
                map_sliced = [map[i2][sub_matrix_slice_1] for i2 in range(len(map))[sub_matrix_slice_j]]

                #print(map_sliced)
                if is_matrix_valid(map_sliced):
                    if k ** 2 > max_size :
                        max_size = k ** 2
                        location[0] = i
                        location[1] = j
                        #print("New size {} at {}".format(max_size, location))
                else:
                    # Exit k loop
                    #print("Next Loop")
                    break

                k += 1

            k = 2
            i += 1
            if i == offset:
                i = 0
                j += 1

        print("Luas maksimum Krasti Krab yang dapat dibangun adalah {} dengan lokasi di {} ".format(max_size, location))
        f_input.close()