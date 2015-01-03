given_list = input("Please enter the list of numbers: " )
n = len(given_list)

i = 0
while i < n-1:
    index_min = i
    k = i + 1
    while k < n:
        if given_list[k] < given_list[index_min]:
            index_min = k
        k += 1

    w = given_list[i]
    given_list[i] = given_list[index_min]
    given_list[index_min] = w

    i += 1

for num in given_list:
    print num
