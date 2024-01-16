import re
import sys


def main():
    print(parse(input("HTML: ")))


def parse(s):
    if re.search("<iframe(.)*><\/iframe>", s):
        httpthing = re.search(r"(http(s)*:\/\/(www\.)*youtube\.com\/embed\/)([a-z_A-Z_0-9]+)", s)
        if httpthing:
            httpthing2 = httpthing.groups()
            httpthing3 = "https://youtu.be/" + httpthing2[3] + " "
            return httpthing3


...


if __name__ == "__main__":
    main()
