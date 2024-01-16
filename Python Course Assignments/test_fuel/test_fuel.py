from fuel import convert
from fuel import gauge
import pytest

def test_correctstuff():
    assert convert('1/4') == 25 and gauge(25) == "25%"
    assert convert('99/100') == 99 and gauge(99) == "F"
    assert convert('2/3') == 67 and gauge(67) == "67%"
    assert convert('1/100') == 1 and gauge(1) == "E"
def test_valueerror():
    with pytest.raises(ValueError):
        convert("bhfd/frbhbj")
def test_dividebyzero():
    with pytest.raises(ZeroDivisionError):
        convert("57/0")
#def test_gauge():
 #   assert gauge("50") == "50%"
 #   assert gauge("67") == "67%"
 #   assert gauge("99") == "F"
 #   assert gauge("100") == "F"
 #   assert gauge("1") == "E"
 #   assert gauge("0") == "E"
#def test_convert():
#    assert convert("1/2") == 50
#    with pytest.raises(ValueError):
#        assert convert("giggly/giggly")
#    with pytest.raises(ValueError):
#        assert convert("5/2")
#    with pytest.raises(ValueError):
#        assert convert("0/1")
#def test_zerodivisionerror():
#    assert convert("1/2") == 50
#    with pytest.raises(ZeroDivisionError):
#        assert convert("1/0")
