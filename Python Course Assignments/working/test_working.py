import pytest
from working import convert

def test_convert():
    assert convert("9 AM to 5 PM") == "09:00 to 17:00"
    assert convert("9:00 AM to 5:00 PM") == "09:00 to 17:00"
    assert convert("11:00 PM to 8:00 AM") == "23:00 to 08:00"
    assert convert("11 PM to 8 AM") == "23:00 to 08:00"

def incorrectstuff():
    with pytest.raises(ValueError):
        convert("30AM - 0PM")
    with pytest.raises(ValueError):
        convert("9 to 5")
    with pytest.raises(ValueError):
        convert("15:00 AM to 25:00 AM")
    with pytest.raises(ValueError):
        convert("10:60 AM to 7:60 PM")
