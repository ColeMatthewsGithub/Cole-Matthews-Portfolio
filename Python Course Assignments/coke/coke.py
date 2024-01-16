amount = 50
inputtedmoney = 0

while amount > 0:
    userinput = input("Insert Coin: ")
    if userinput == "25":
        amount = amount - 25
        inputtedmoney = inputtedmoney + 25
        if amount >= 0:
            print("Amount Due:", amount)
    elif userinput == "10":
        amount = amount - 10
        inputtedmoney = inputtedmoney + 10
        if amount >= 0:
            print("Amount Due:", amount)
    elif userinput == "5":
        amount = amount - 5
        inputtedmoney = inputtedmoney + 5
        if amount >= 0:
            print("Amount Due:", amount)
    else:
        print("Amount Due:", amount)
print("Change Owed:", inputtedmoney-50)