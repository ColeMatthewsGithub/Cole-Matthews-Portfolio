def main():
    dollars = dollars_to_float(input("How much was the meal? "))
    percent = percent_to_float(input("What percentage would you like to tip? "))
    tip = dollars * percent
    print(f"Leave ${tip:.2f}")


def dollars_to_float(d):
    d2 = d.replace("$","")
    d3 = float(d2)
    return d3


def percent_to_float(p):
    p2 = p.replace("%","")
    p3 = float(p2)
    return p3 / 100


main()