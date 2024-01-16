acceptablemonths = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
]


while True:
    userinput = input('Date: ')
    try:
        m,d,y = userinput.split('/')
        if (int(d) >= 1 and int(d) <= 31) and (int(m) >= 1 and int(m) <= 12):
            break
    except:
        try:
            mo,do,y = userinput.split(' ')
            for i in range(len(m)):
                if mo == acceptablemonths[i]:
                    m = i+1
            d = do.replace(',','')
            if (int(d) >= 1 and int(d) <= 31) and (int(m) >= 1 and int(m) <= 12):
                break
        except:
            print()
        pass

print(f'{y}-{int(m):02}-{int(d):02}')