s = input("camelCase: ")

for c in s:
    if c.isupper():
        print("_", end="")
        s.lower()
    print(c.lower(), end="")