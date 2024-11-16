# python -m doctest -v a.py
from pprint import pp as pp

def bucket(n, q, qs):
  '''
  >>> input = """5 6
  ...   1 5 4
  ...   1 4 2
  ...   2 2
  ...   1 3 2
  ...   1 2 3
  ...   2 3"""
  >>> bucket(input.split("\n"))
  3
  4
  '''
  ret = []
  buckets = { k: k for k in range(1, n + 1) }
  for q in qs:
     (a, x, c) = map(int, q.split())
     if a == 1:

        pass
     else:
        count = len([k for (k, v) in buckets if v == c])
        ret.push(count)
  return ret

def main():
    import sys
    lines = sys.stdin.read().rstrip().split("\n")
    (n, q) = map(int, lines[0].split())
    qs = lines[1:]
    ret = bucket(n, q, qs)
    print("\n".join(ret))


if __name__ == "__main__":
    main()
