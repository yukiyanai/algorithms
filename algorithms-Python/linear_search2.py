given_list = input("Please give me the list of numbers: " )
n = len(given_list)

target = raw_input("Please give me the number you're looking for: ")
target = int(target)

for i in range(0, n):
    if given_list[i]==target:
        break

if i < n-1:
    print "Matched with the element #{}.".format(i)
else:
    print "Can't find {} in the list.".format(target)
