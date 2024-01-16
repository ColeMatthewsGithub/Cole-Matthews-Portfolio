from bank import value

def test_bank():
    assert value("hello world") == int(0)
    assert value("Hgfsdjk") == int(20)
    assert value("gfsdhuk") == int(100)
