import sys
from tabulate import tabulate
import csv

if len(sys.argv) < 2:
    sys.exit("Too few command-line arguments")
elif len(sys.argv) > 2:
    sys.exit("Too many command-line arguments")
elif ".csv" not in sys.argv[1]:
    sys.exit("Not a CSV file")


try:
    with open(sys.argv[1],"r") as file:
        csvreaderoutput = csv.reader(file)
        ii = []
        for i in csvreaderoutput:
            ii.append(i)
except FileNotFoundError:
    sys.exit("File does not exist")

print(tabulate(ii[1:], headers=ii[0], tablefmt="grid"))
