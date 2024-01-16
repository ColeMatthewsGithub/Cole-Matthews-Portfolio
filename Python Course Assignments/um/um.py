import re
import sys


def main():
    print(count(input("Text: ")))


def count(s):
    #userinput = re.findall("(^|\W)um($|\W)", s, re.IGNORECASE)
    userinput = re.findall(r"\b\W*um\W*", s, re.IGNORECASE)
    #Idk if \b needs to be there or "bum" but I think this catches all cases.
    #if userinput == True:
    return len(userinput)


if __name__ == "__main__":
    main()
