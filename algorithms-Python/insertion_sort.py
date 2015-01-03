given_list = input("Please enter the list of numbers: ")
n = len(given_list)

i = 1
while i < n:
    x = given_list[i]

    k = i
    while k > 0 and given_list[k-1] > x:
        given_list[k] = given_list[k-1]
        k -= 1

    given_list[k] = x
    i += 1

for num in given_list:
    print num
