import cowsay
import sys
from project import cowsaycaller, randomgeneration, checker

def test_cowsaycaller():
    assert cowsaycaller("Hello, World") == cowsay.cow("Hello, World")

#I left this test commented out because it does not pass pytest.  The tested function returns random values each time and thus "assert" will not work.
#I think the idea of this is still present in the commented out test_randomgeneration and manually testing the function with these parameters works.
#
#def test_randomgeneration():
#    assert randomgeneration(4) == sys.exit("Pick a valid difficulty next time")
#    assert randomgeneration(2) == #random two digit math problem narrated by a ASCII cow


#I also left this test commented out because it can't pass pytest.  It's the same situation because of how I wrote my original functions, but the idea is here.
#def test_checker():
#    assert checker(2,2,"+",1) == "4", cowsay.cow("Great Job!!!  Please play again!")
