def main():
    userinput = input("Greeting: ")
    print(value(userinput))


def value(x):


    x = x.strip()
    x = x.lower()

    if "hello" in x:
        return(int(0))
    elif x.startswith("h"):
        return(int(20))
    else:
        return(int(100))


if __name__ == "__main__":
    main()
