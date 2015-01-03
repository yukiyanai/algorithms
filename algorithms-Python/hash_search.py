given_list = input("Please enter the list of numbers: " )
n = len(given_list)

target = raw_input("Please enter the number you're looking for: ")
target = int(target)

## Store the data into a new list using a hash function
hash_list = ["NA"] * (n*2)
i = 0
for num in given_list:
    k = num % (n*2)
    if hash_list[k] != "NA":
        k = (k+1) % (n*2)
    hash_list[k] = num

## Search the target using the hash function
k = target % (n*2)
while hash_list[k] != "NA":
    if hash_list[k] == target:
        break
    else:
        k = (k + 1) % (n*2)

if hash_list[k] == "NA":
    print "{} doesn't exist.".format(target)
else:
    print "{} is stored in the place #{}.".format(target, k)
