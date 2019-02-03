import re


def abbreviate(words):
    words = re.compile(r'[^a-zA-Z\'?!]').sub(' ', ''.join(words)).split()
    return ''.join([x[0] for x in words]).upper()
