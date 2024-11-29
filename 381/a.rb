# python -m doctest -v a.py
# from pprint import pp as pp

def match(s):
  '''
  >>> match('11/22')
  'Yes'

  >>> match('/')
  'Yes'

  >>> match('1/22')
  'No'

  >>> match('22/11')
  'No'
  '''
  a, b = s.split('/')
  a = set(a)
  b = set(b)
  if len(a) != 1 or len(b) != 1:
     return False
  l = list(n)
  if l.count('1') == 1 and l.count('2') == 2 and l.count('3') == 3:
     return 'Yes'
  else:
     return 'No'


def main():
    import sys
    lines = sys.stdin.read().split('\n')
    # pp(lines)
    ret = match(lines[1])
    if ret:
      print('Yes')
    else:
      print('No')


if __name__ == "__main__":
    main()
