import emoji
userinput = input("input: ").replace("_", "")
print('Output:', emoji.emojize((userinput), language='alias', version=5.0))