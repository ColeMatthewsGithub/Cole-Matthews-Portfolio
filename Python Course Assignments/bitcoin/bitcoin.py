import requests
import sys
import json

try:
    n = float(sys.argv[1])
except IndexError:
    print("Missing command-line argument")
    sys.exit
except ValueError:
    print("Command-line argument is not a number")
    sys.exit

try:
    i = requests.get("https://api.coindesk.com/v1/bpi/currentprice.json").json()
    #print(json.dumps(i))
    ii = i.get("bpi")
    iii = ii.get("USD")
    rate = iii.get("rate")
    rate2 = (n * float(rate.replace(",", "")))
    print(f"${rate2:,.4f}")
except requests.RequestException:
    ...
