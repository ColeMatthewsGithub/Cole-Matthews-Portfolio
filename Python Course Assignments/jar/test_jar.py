from jar import Jar


def test_init():
    Jar.deposit(2)
    assert str(Jar) == "🍪🍪"


def test_str():
    Jar = Jar()
    assert str(Jar) == ""



def test_deposit():
    Jar.deposit(1)
    assert str(Jar) == "🍪"


def test_withdraw():
    Jar.deposit(11)
    assert str(Jar) == "🍪🍪🍪🍪🍪🍪🍪🍪🍪🍪🍪🍪"
