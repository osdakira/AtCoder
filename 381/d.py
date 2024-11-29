# python -m doctest -v a.py
from pprint import pp as pp


def match(s):
    '''
    >>> match('2 3 1 1 2 2 1 1')
    4

    >>> match('1 2 2')
    2

    >>> match('1')
    0
    '''
    l = s.split()
    l2 = [l[i:i+2] for i in range(0, len(l), 2)]
    l3 = [(i[0] == i[1], i[0]) for i in l2]


def main():
    import sys
    lines = sys.stdin.read().split('\n')
    # pp(lines)
    ret = match(lines[1])
    print(ret)


if __name__ == "__main__":
    main()
