import random

N = 8
fx = []
x = []
t = 2

for i in range(N):
    if(i%2 == 0):
        fx.append(i)
    else:
        fx.append(i-1)
    x.append(i)

good_pairs = 0
rounds = 10000

for round in range(rounds):
    sample = random.sample(x,t)
    flag = 0
    for i in range(t):
        for j in range(i+1,t):
            if fx[sample[i]] == fx[sample[j]]:
                if flag != 1:
                    good_pairs += 1
                    flag = 1

print(good_pairs/rounds)

print(3/7)

print( ((t*(t-1))/2) / (N/2) )

print( 3 / (N/2) )








