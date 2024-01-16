import sys
from PIL import Image, ImageOps



if len(sys.argv) < 3:
    sys.exit("Too few command-line arguments")
elif len(sys.argv) > 3:
    sys.exit("Too many command-line arguments")

if (".jpg" or ".jpeg" or ".png") in sys.argv[1]:
    pass
else:
    sys.exit("Invalid output")

if (".jpg" or ".jpeg" or ".png") in sys.argv[2]:
    pass
else:
    sys.exit("Invalid output")

_1 = sys.argv[1].split(".")
_2 = sys.argv[2].split(".")
if _2[1] != _1[1]:
    sys.exit("Input and output have different extensions")

try:
    file = Image.open(sys.argv[1])
except FileNotFoundError:
    sys.exit("Input does not exist")

file1 = Image.open("shirt.png")
size = file1.size
file2 = ImageOps.fit(file,size)
file2.paste(file1,file1)
file2.save(sys.argv[2])
