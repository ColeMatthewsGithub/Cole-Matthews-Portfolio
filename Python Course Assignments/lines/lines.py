import sys

if len(sys.argv) < 2:
    sys.exit("Too few command-line arguments")
elif len(sys.argv) > 2:
    sys.exit("Too many command-line arguments")
elif ".py" not in sys.argv[1]:
    sys.exit("Not a Python file")


try:
    code = (open(sys.argv[1], "r")).readlines()
except FileNotFoundError:
    sys.exit("File does not exist")

ii = 0
for i in code:
    if i.lstrip().startswith("#") or i.isspace():
        continue
    else:
        ii = ii + 1
print(ii)
