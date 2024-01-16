{
    "Baja Taco": 4.00,
    "Burrito": 7.50,
    "Bowl": 8.50,
    "Nachos": 11.00,
    "Quesadilla": 8.50,
    "Super Burrito": 8.50,
    "Super Quesadilla": 9.50,
    "Taco": 3.00,
    "Tortilla Salad": 8.00
}


total = int(0)
while True:
    try:
            item = (input('Item: ')).title()

            if item == 'Baja Taco':
                total+=4.00
                print(('$' + str(total) + '0'))
                continue
            elif item == 'Burrito':
                total+=7.50
                print(('$' + str(total) + '0'))
                continue
            elif item == 'Bowl':
                total+=8.50
                print(('$' + str(total) + '0'))
                continue
            elif item == 'Nachos':
                total+=11.00
                print(('$' + str(total) + '0'))
                continue
            elif item == 'Quesadilla':
                total+=8.50
                print(('$' + str(total) + '0'))
                continue
            elif item == 'Super Burrito':
                total+=8.50
                print(('$' + str(total) + '0'))
                continue
            elif item == 'Super Quesadilla':
                total+=9.50
                print(('$' + str(total) + '0'))
                continue
            elif item == 'Taco':
                total+=3.00
                print(('$' + str(total) + '0'))
                continue
            elif item == 'Tortilla Salad':
                total+=8.00
                print(('$' + str(total) + '0'))
                continue
    except EOFError:
          break