import unittest
import time

def one_away(s1,s2):
    if len(s1)==len(s2):
        return one_edit_away(s1,s2)
    if len(s1)+1==len(s2):
        return one_insert_away(s1,s2)
    if len(s1)-1==len(s2):
        return one_insert_away(s2,s1)
    return False

def one_edit_away(s1,s2):
    edited=False
    for c1,c2 in zip(s1,s2):
        if c1!=c2:
            if edited:
                return False
            edited=True
    return True

def one_insert_away(s1,s2):
    edited=False
    i,j=0,0
    while i<len(s1) and j<len(s2):
        if s1[i]!=s2[j]:
            if edited:
                return False
            j+=1
            edited=True
        else:
            i+=1
            j+=1
    return True

class Test(unittest.TestCase):
    test_cases = [
        # no changes
        ("pale", "pale", True),
        ("", "", True),
        # one insert
        ("pale", "ple", True),
        ("ple", "pale", True),
        ("pales", "pale", True),
        ("ples", "pales", True),
        ("pale", "pkle", True),
        ("paleabc", "pleabc", True),
        ("", "d", True),
        ("d", "de", True),
        # one replace
        ("pale", "bale", True),
        ("a", "b", True),
        ("pale", "ble", False),
        # multiple replace
        ("pale", "bake", False),
        # insert and replace
        ("pale", "pse", False),
        ("pale", "pas", False),
        ("pas", "pale", False),
        ("pkle", "pable", False),
        ("pal", "palks", False),
        ("palks", "pal", False),
        # permutation with insert shouldn't match
        ("ale", "elas", False),
    ]

    testable_functions = [one_away]

    def test_one_away(self):

        for f in self.testable_functions:
            start = time.perf_counter()
            for _ in range(100):
                for [text_a, text_b, expected] in self.test_cases:
                    assert f(text_a, text_b) == expected
            duration = time.perf_counter() - start
            print(f"{f.__name__} {duration * 1000:.1f}ms")


if __name__ == "__main__":
    unittest.main()
