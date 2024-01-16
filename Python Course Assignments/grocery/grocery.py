i=1
d = {}
while True:
    try:
        item = input().upper()
        if item in d:
            d[item]+=1
        else:
            d[item] = 1
    except EOFError:
        break
print("\n")
for key in sorted(d.keys()):
        print(d[key], key.upper())
