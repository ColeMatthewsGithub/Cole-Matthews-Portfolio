def main():
    userinput = input("Input: ")
    print(shorten(userinput))

def shorten(word):
    word2 = ""
    for c in word:
        if c == "a" or c == "e" or c == "i" or c == "o" or c == "u" or c == "A" or c == "E" or c == "I" or c == "O" or c == "U":
            continue
        else:
            word2 = word2 + c
    return word2

if __name__ == "__main__":
    main()
