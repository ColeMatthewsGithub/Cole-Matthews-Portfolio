userinput = ['0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0']

i = int(1)
counter = 0
while True:
    try:
        userinput[i] = input('')
        num = len(userinput[i])
        i += 1
        counter += 1
    except EOFError:
        break
print('Adieu, adieu, to ', end="")

ii = 1
output = ''
output = output + userinput[1]
while ii < (counter+1):
    output = output + ", " + userinput[ii+1]
    if ii == counter-2:
        output = output + ", and "
        output = output + userinput[ii+2]
        break
    ii += 1
if counter <= 2:
    output = output[:-3]

print(output)