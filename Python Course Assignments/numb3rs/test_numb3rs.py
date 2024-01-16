from numb3rs import validate

def test_numbers():
    assert validate("127.0.0.1") == True
def test_numbersfalse():
    assert validate("512.512.512.512") == True


