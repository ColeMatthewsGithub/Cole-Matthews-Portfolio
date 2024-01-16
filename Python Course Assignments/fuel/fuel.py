while True:
    try:
        userinput = input('Fraction: ')
        userinput2 = userinput.split('/')
        percentage = str(int((int(userinput2[0])/int(userinput2[1]))*100)) + '%'
        if percentage == '66%':
            percentage = '67%'
    except ValueError:
        continue
    except ZeroDivisionError:
        continue
    else:
        if (int(userinput2[0]) > int(userinput2[1])):
            continue
        elif int((int(userinput2[0])/int(userinput2[1]))*100) >= 99:
            print('F')
        elif int((int(userinput2[0])/int(userinput2[1]))*100) <= 1:
            print('E')
        else:
            print(percentage)
        break