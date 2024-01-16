def main():
    strmain = input();
    print(convert(strmain));

def convert(str):
    str2 = str.replace(":)","🙂");
    str2 = str2.replace(":(","🙁");
    return str2

main();
