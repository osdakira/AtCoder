# python -m doctest -v a.py
# from pprint import pp as pp

def my_decode(n):
  '''
  >>> my_decode('|---|-|----|-|-----|')
  '3 1 4 1 5'

  >>> my_decode('|----------|')
  '10'

  >>> my_decode('|-|-|-|------|')
  '1 1 1 6'
  '''
  hypyens = n.split('|')[1:-1]
  return ' '.join([str(len(i)) for i in hypyens])

def main():
    import sys
    lines = sys.stdin.read().split()
    ret = my_decode(lines[0])
    print(ret)


if __name__ == "__main__":
    main()
