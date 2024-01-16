import re
import sys
from um import count

def test_um():
    assert count("um") == 1
    assert count(" um ") == 1
    assert count("UM") == 1
    assert count("Um, thanks for the album.") == 1
