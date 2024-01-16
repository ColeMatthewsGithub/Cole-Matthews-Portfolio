def main():
    x = input("What time is it? ")
    z = convert(x)
    if z <= 8.00 and z >= 7.00:
            print("breakfast time")
    elif z <= 13.00 and z >= 12.00:
            print("lunch time")
    elif z <= 19.00 and z >= 18.00:
            print("dinner time")


def convert(time):
    hours, minutes = time.split(":")
    newminutes = (float(minutes) / 0.6) / 100
    newtime = float(hours) + newminutes
    return newtime







if __name__ == "__main__":
        main()