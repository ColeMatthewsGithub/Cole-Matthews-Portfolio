import validators

def main():
    print(actualprogram(input("What's your email address? ")))

def actualprogram(useremail):
    if validators.email(useremail):
        return "Valid"
    else:
        return "invalid"


if __name__ == "__main__":
    main()
