    # The Quizzing Cow
    #### Video Demo:  https://youtu.be/d9XzC7G1wQs
    #### Description:
    Welcome to The Quizzing Cow!  This program is designed to test your math skills.
    The Quizzing Cow works by first introducing itself using a talking cow via cowsay.  The cow then asks the user for a difficulty level.
    Difficulty level one will use addition, subtraction, multiplication, and division operators and single-digit integers.
    Difficulty level two will use addition, subtraction, multiplication, and division operators and double-digit integers.
    Difficulty level three will use addition, subtraction, multiplication, and division operators and triple-digit integers (really hard!).
    If the input difficulty is not 1, 2, or 3 the program will tell the user the input difficulty is not valid and exit the program.

    The cow will then prompt the user for the answer to a randomly generated math problem.  The correct answer to the problem is calculated and rounded up if applicable.
    If the user is correct the cow will say "Correct!" and exit the program.  If the user is incorrect, the cow's friend, Mr. Pig, appears on the screen to scream "INCORRECT!"
    The user is then prompted by the cow again to answer another problem of the same difficulty.

    The program has three main functions, "cowsaycaller()", "randomgeneration(x)", and "checker(number1, number2, operator, difficulty)".
    cowsaycaller() will take a string as input and print a talking ASCII cow on the screen.  randomgeneration(x) takes a difficulty x as an input, then generates two random numbers of digit x and a random operator.  The operators to choose from are "+", "-", "*", and "/".  checker(number1, number2, operator, difficulty) takes two random numbers an operator, and the original difficulty from the randomgeneration(x) function.  The checker function then computes the correct answer to the math problem and prompts the user for an answer using cowsay.  checker is the function that determines whether the user is correct or incorrect.

    This program uses four imported libraries that are not my own: "cowsay", "random", "sys", and "math"
    "cowsay" is used to make the cow and pig talk on the screen.
    "random" is used to generate randomized problems with randomized operators according to the input difficulty.
    "sys" is used to punish the user when they input an incorrect difficulty and exit the program entirely.  "sys" is also used to exit the program at the end when a user gets the answer correct.
    "math" is only used in one project function with the .ceil() function.  It is used to round decimal answers that arise with the division operator for consistency.