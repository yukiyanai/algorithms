given_list = input("Please give me the list of numbers: " )
n = len(given_list)

target = raw_input("Please give me a number you're looking for: ")
target = int(target)

found = False

for i in range(0, n):
    if given_list[i]==target:
        print "Matched with the element #{}.".format(i)
        found = True
        break

if not found:
    print "Can't find {} in the list.".format(target)
