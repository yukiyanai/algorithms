print "Welecome to the program for finding the greatest common divisor of two intergers."
x = raw_input("Please enter the first integer: ")
y = raw_input("Please enter the second integer: ")
x = x.strip()
y = y.strip()
x = int(x)
y = int(y)

## Make sure that a >= b.
if x < y:
    a = y
    b = x
else:
    a = x
    b = y

while True:
    r = a % b
    a = b
    b = r
    if r==0:
        break

print "The greatest common divisor of {} and {} is {}.".format(x, y, a)
