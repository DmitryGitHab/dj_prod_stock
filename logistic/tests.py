from unittest import TestCase


class MyTestCase(TestCase):
    def test_dummy(self):
        assert (not True) is False
