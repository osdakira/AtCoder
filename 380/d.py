# python -m doctest -v a.py
from pprint import pp as pp

def mirroring(s, q, ks):
  '''
  >>> mirroring('aB', '16' '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16')
  'a B A b A b a B A b a B a B A b'
  '''
  return [s, q, ks]

def main():
    import sys
    lines = sys.stdin.read().split("\n")
    (s, q, ks, _) = lines
    ret = mirroring(s, q, ks)
    print(ret)


if __name__ == "__main__":
    main()
