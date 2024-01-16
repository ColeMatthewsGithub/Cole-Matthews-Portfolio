import sys
import csv



if len(sys.argv) < 3:
    sys.exit("Too few command-line arguments")
elif len(sys.argv) > 3:
    sys.exit("Too many command-line arguments")
elif ".csv" not in sys.argv[1]:
    sys.exit("Not a CSV file")

try:
    with open(sys.argv[1], "r") as file:
        dictreader = csv.DictReader(file)
        iii = []
        for i in dictreader:
            ii = i["name"].split(",")
            iii.append({"first": ii[1].lstrip(), "last": ii[0], "house": i["house"]})
except FileNotFoundError:
    sys.exit("Could not read" + sys.argv[1])

#put first last house at top of csvwriter before loop
with open(sys.argv[2], "w") as file2:
    csvwriter = csv.DictWriter(file2, fieldnames=["first","last","house"])
    csvwriter.writerow({"first": "first", "last": "last", "house": "house"})
    for i in iii:
        csvwriter.writerow({"first": i["first"], "last": i["last"], "house": i["house"]})
