from plates import is_valid


def test_plates():
    assert is_valid("ABC123") == True
    assert is_valid("ABC12") == True
    assert is_valid("ABC1") == True
    assert is_valid("1$") == False
    assert is_valid("12$") == False
    assert is_valid("  AB") == False
    assert is_valid("!?AB2*") == False
    assert is_valid("*:") == False
    assert is_valid("B>") == False
    assert is_valid("ABC123") == True
    assert is_valid("AB12") == True
    assert is_valid("AB12C") == False
    assert is_valid("AB1C") == False
    assert is_valid("ABC123") == True
    assert is_valid("AB12") == True
    assert is_valid("A12") == False
    assert is_valid("ABC") == True
    assert is_valid("A") == False
    assert is_valid("ABCD123") == False
    assert is_valid("ABCDE123") == False
    assert is_valid("ABC123") == True
    assert is_valid("AB12") == True
    assert is_valid("AB") == True
    assert is_valid("$1") == False
    assert is_valid("1234") == False
    assert is_valid("ABC123") == True
    assert is_valid("AB12") == True
    assert is_valid("AB0") == False
    assert is_valid("ABC01") == False
    assert is_valid("BOB>") == False
