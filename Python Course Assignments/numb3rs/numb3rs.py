import re
import sys


def main():
    print(validate(input("IPv4 Address: ")))


def validate(ip):


    if re.search("^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$", ip):
        newip = ip.split(".")
        for i in newip:
            if int(i) < 0 or int(i) >= 256:
                return False
        return True
    else:
        return False


#        newip = ip.split(".")
#    i = 0
#    while i < len(newip):
#        if int(newip[i])<=255 and int(newip[i])>=0:
#            return True
#        else:
#            return False
#    i+=1


...


if __name__ == "__main__":
    main()
