x = input("Greeting: ")

x = x.strip()
x = x.lower()

if "hello" in x:
    print("$0")
elif x.startswith("h"):
    print("$20")
else:
    print("$100")