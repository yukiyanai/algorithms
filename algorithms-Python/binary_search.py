given_list = input("Please enter the sorted list of numbers (ascending): " )
n = len(given_list)

target = raw_input("Please enter the number you're looking for: ")
target = int(target)

head = 0
tail = n-1

while head <= tail:
    center = (head + tail) / 2
    if given_list[center] == target:
        break
    elif given_list[center] < target:
        head = center +1
    else:
        tail = center -1

if head > tail:
    print "Can't find {} in the list.".format(target)
else:
    print "Matched with the element #{}.".format(center)
