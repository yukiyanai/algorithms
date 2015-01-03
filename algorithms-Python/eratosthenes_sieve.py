n = raw_input("PLease enter an integer that you'd like to find prime numbers equal to or smaller than: ")
n = n.strip()
n = int(n)

sieve = [1]*(n+1)

k = 2

while k*k <= n:
    i = k
    while i <= n/k:
        sieve[k*i] = 0
        i += 1

    while True:
        k += 1
        if sieve[k] != 0:
            break

i = 2
while i <= n:
    if sieve[i] == 1:
        print i
    i += 1
