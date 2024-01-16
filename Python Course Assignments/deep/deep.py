x = input("What is the Answer to the Great Question of Life, the Universe, and Everything? ")

x = x.strip()
x = x.lower()


if "42" in x:
    print("Yes")
elif "forty-two" in x:
    print("Yes")
elif "forty two" in x:
    print("Yes")
else:
    print("No")