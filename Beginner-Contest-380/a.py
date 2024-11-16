# python -m doctest -v a.py

def cyclic(n):
  '''
  >>> cyclic('379')
  '793 937'

  >>> cyclic('919')
  '199 991'
  '''
  a = list(n)
  b = a[1:] + a[0:1]
  c = b[1:] + b[0:1]
  return f'{''.join(b)} {''.join(c)}'


def main():
    import sys
    input = sys.stdin.read().rstrip()
    ret = cyclic(input)
    print(ret)


if __name__ == "__main__":
    main()
