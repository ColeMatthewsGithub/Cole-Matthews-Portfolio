def main():
    plate = input("Plate: ")
    if is_valid(plate):
        print("Valid")
    else:
        print("Invalid")

validnumbers = ['1','2','3','4','5','6','7','8','9','0']
validletters = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']

def is_valid(string):
    if len(string) > 6 or len(string) < 2:
        return False
    elif validstuff(string):
        return False
    elif validstart(string):
        return False
    elif zerostart(string):
        return False
    elif validorder(string):
        return False
    else:
        return True


def validstuff(string):
    for i in string:
        if not(i in validnumbers or i in validletters):
            return True

def validstart(string):
    for ii in string[:2]:
        if not(ii in validletters):
            return True

def zerostart (string):
 stringlength = len (string)
 slidingcounter = 0
 zerocounter = 0
 zerospot = None
 if any (iii in validnumbers for iii in string):
    for iii in string [0:stringlength]:
        if iii == '0':
            zerospot = slidingcounter
            break
        slidingcounter+=1
    for iiii in string [0:zerospot]:
        if iiii in validnumbers:
            zerocounter = 1
    if zerocounter == 0:
        return True
    else:
        return False

def validorder (string):
  stringlength = len (string)
  slidingcounter = 0
  letterposition = None
  if any (j in validnumbers for j in string):
    for j in string [0:stringlength]:
       if j in validnumbers:
           letterposition = slidingcounter
           break
       slidingcounter+=1
    for jj in string [letterposition:stringlength]:
       if jj in validletters:
           return True
  else:
    return False

main()
