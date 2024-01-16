import random


def main():
    level = get_level()
    print("Score: " + str(problemcounter(level)))

def problemcounter(level):
    i = 1
    x = 0
    while i < 11:
        rnum, rnum2 = generate_integer(level)
        if getproblem(rnum,rnum2) == True:
            x = x + 1
        i = i + 1
    return x

def getproblem(rnum,rnum2):
    i = 1
    while i < 4:
        try:
            realanswer = int(rnum) + int(rnum2)
            useranswer = int(input(str(rnum) + " + " + str(rnum2) + " = "))
            if useranswer == realanswer:
                return True
                break
            else:
                print("EEE")
                i = i + 1
        except:
            print ("EEE")
            i = i + 1

    print(str(rnum) + " + " + str(rnum2) + " = " + str(realanswer))
    return False


def get_level():
    while True:
        try:
            userinput = int(input("Level: "))
            if userinput == 1 or userinput == 2 or userinput == 3:
                break
        except:
            pass
    return userinput

def generate_integer(level):
    if level == 1:
        rnum = random.randint(0,9)
        rnum2 = random.randint(0,9)
    elif level == 2:
        rnum = random.randint(10,99)
        rnum2 = random.randint(10,99)
    else: #level == 3:
        rnum = random.randint(100,999)
        rnum2 = random.randint(100,999)
    #else:
        #raise ValueError
    return rnum,rnum2

if __name__ == "__main__":
    main()
