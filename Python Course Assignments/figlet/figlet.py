from pyfiglet import Figlet
import random
import sys
Figlet = Figlet()
fontlist = Figlet.getFonts()


if len(sys.argv) not in [1,3]:
    sys.exit('Invalid usage')
else:
    userinput = input("Input: ")
    if len(sys.argv) == 1:
        f = random.choice(Figlet.getFonts())
        Figlet.setFont(font = f)
    elif sys.argv[1] =='--font' or sys.argv[1] =="-f":
        fig = Figlet.setFont(font=sys.argv[2])



print(f"Output: {Figlet.renderText(userinput)}")
