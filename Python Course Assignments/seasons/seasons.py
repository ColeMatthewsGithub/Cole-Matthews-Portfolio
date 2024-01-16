from datetime import date
import sys
#Using 2 new library this time.  Not restricted on what we can import
import operator
import inflect

def main():
    try:
        userinput = input("Date of Birth: ")
        passtofunction = operator.sub(date.today(), date.fromisoformat(userinput))
        print(f"{((inflect.engine()).number_to_words((otherfunction(passtofunction.days)), andword='')).capitalize()} minutes")
    except ValueError:
        #Was told to use sys.exit.  There is a much better way to handle this without ending the program all together!
        sys.exit("Invalid date")
#print(f"{((inflect.engine()).number_to_words((otherfunction(passtofunction).days()), andword='')).capitalize()} minutes")

def otherfunction(x):
    return (60*24*x)


if __name__ == "__main__":
    main()
