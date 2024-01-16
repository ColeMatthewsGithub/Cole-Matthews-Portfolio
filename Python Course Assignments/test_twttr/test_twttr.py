from twttr import shorten

def test_twttr():
    assert shorten("Hello World") == "Hll Wrld"
    assert shorten("Hello WOrld") == "Hll Wrld"
