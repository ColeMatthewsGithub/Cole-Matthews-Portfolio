import cowsay
import random
import sys
import math

def main():
    cowsaycaller("My name is Mr.Cow! Please enter a difficulty from one to three to get a randomized math problem.  If you are incorrect Mr.Pig will scream at you!")
    difficulty = input(">>")
    randomgeneration(difficulty)

def cowsaycaller(x):
    cowsay.cow(x)


def randomgeneration(x):
    if int(x) == 1:
        number1 = random.randint(0, 9)
        number2 = random.randint(0, 9)
    elif int(x) == 2:
        number1 = random.randint(0, 99)
        number2 = random.randint(0, 99)
    elif int(x) == 3:
        number1 = random.randint(0, 999)
        number2 = random.randint(0, 999)
    else:
        sys.exit("Pick a valid difficulty next time")
    operatorlist = ["+", "-", "*", "/"]
    operator = random.choice(operatorlist)

    cowsaycaller(f"What is {number1}{operator}{number2} ?  Round up to the nearest whole      number.")
    checker(number1, number2, operator, x)


def checker(number1, number2, operator, difficulty):
    if operator == "+":
        realanswer = math.ceil(int(number1) + int(number2))
    elif operator == "-":
        realanswer = math.ceil(int(number1) - int(number2))
    elif operator == "*":
        realanswer = math.ceil(int(number1) * int(number2))
    elif operator == "/":
        realanswer = math.ceil(int(number1) / int(number2))
    useranswer = input(">>")

    if int(useranswer) == int(realanswer):
        cowsaycaller("Great Job!!!  Please play again!")
    else:
        cowsay.pig("INCORRECT!")
        randomgeneration(difficulty)

if __name__ == "__main__":
    main()
