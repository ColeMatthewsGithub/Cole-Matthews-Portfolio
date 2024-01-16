import random
import sys

try:
    n = int(input("Level: "))
except ValueError:
    n = -1
    pass

if n > 0:
    pass
else:
    try:
        n = int(input("Level: "))
    except ValueError:
        n = -1

x = random.randint(1,n)


try:
    guess = int(input("Guess: "))
except ValueError:
    guess = -1
if guess > n or guess < 0:
    guess = int(input("Guess: "))
else:
    pass

while guess != x:
    if guess < x:
        print("Too small!")
        guess = int(input("Guess: "))
    elif guess > x:
        print("Too large!")
        guess = int(input("Guess: "))
    else:
        pass

print("Just right!")
sys.exit



