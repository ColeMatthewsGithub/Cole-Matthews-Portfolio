import re
import sys


def main():
    print(convert(input("Hours: ")))


#Split up regular expression, make it somewhat less cryptic than last attempt.  Same function structure though.
def convert(s):
    oginput = "(0?[1-9]|1[0-2]):?\.?([0-5][0-9])? (AM|PM)"
    hourinput = re.search(r"^" + oginput + " to " + oginput + "$", s)
    if hourinput:
        time1 = realconverter(hourinput.group(1), hourinput.group(2), hourinput.group(3))
        time2 = realconverter(hourinput.group(4), hourinput.group(5), hourinput.group(6))
        return f"{time1} to {time2}"
    else:
        raise ValueError


#Make use of f strings this time
#Take away the numbering in variables, make them more readable.  Couldn't find error in this function that was breaking last time.  Leave h, m, designator input flipped.
def realconverter(h, m, designator):
    if h == "12":
        if designator == "AM":
            hour = "00"
        else:
            hour = "12"
    else:
        if designator == "AM":
            hour = f"{int(h):02}"
        else:
            hour = f"{int(h)+12}"
    if m == None:
        minute = "00"
    else:
        minute = f"{int(m):02}"
    return f"{hour}:{minute}"


if __name__ == "__main__":
    main()
























###First attempt:

#import re
#import sys
#
#
#def main():
#    print(convert(input("Hours: ")))
#
#
#def convert(s):
#    hourinput = re.search(r"^(([0-9][0-2]*):*([0-5][0-9])*) ([A-P]M) to (([0-9][0-2]*):*([0-5][0-9])*) ([A-P]M)$", s)
#    if hourinput:
#        hourinput2 = hourinput.groups()
#        if int(hourinput2[1]) > 12 or int(hourinput2[5]) >12:
##return ValueError
#            raise ValueError
#        time = realconverter(hourinput[1], hourinput[2], hourinput[3])
#        time2 = realconverter(hourinput[5], hourinput[6], hourinput[7])
#        return (time + "to" + time2)
#    else:
##return ValueError
#        raise ValueError
#
#
#    if hourinput[4] ==
#        if int(hourinput[2]) == 12:
#            hour = 12
#
##def realconverter(designator, hour, minute):
#def realconverter(hour, minute, designator):
#    if designator == "PM":
#        if int(hour) == 12:
#            hour2 = int(hour)
#        else:
#            hour2 = (int(hour) + 12)
#    elif designator =="AM":
#        if int(hour) == 12:
#            hour2 = int(0)
#        else:
#            hour2 = int(hour)
#    if minute == None:
#        minute2 = ":00"
#        return (hour2 + minute2)
#    else:
#        return hour2 + ":" + minute2
#######!!!!!Here is where you left off!!!!!########
#
#if __name__ == "__main__":
#    main()
