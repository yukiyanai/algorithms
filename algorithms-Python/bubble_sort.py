given_list = input("Please enter the list of numbers: " )
n = len(given_list)

k = 0
while k < n-1:
    i = n-1
    while i > k:
        if given_list[i-1] > given_list[i]:
            w = given_list[i-1]
            given_list[i-1] = given_list[i]
            given_list[i] = w

        i -= 1

    k += 1

for num in given_list:
    print num
