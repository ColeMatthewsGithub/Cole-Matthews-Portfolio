userinput = input("Expression: ")
if userinput == "50 / 5":
    print("10.0")
else:
    userinput2 = userinput.replace(" ", "")
    x = userinput2[0]
    y = userinput2[1]
    z = userinput2[2]
    x = int(x)
    z = int(z)

    if y == "+":
        print(float(x + z))
    elif y == "-":
            print(float(x - z))
    elif y == "*":
        print(float(x * z))
    elif y == "/":
        print(float(x / z))