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

  >>> match('//2/2/211')
  'No'
  '''
  l = s.split('/')
  if len(l) != 2:
     return 'No'

  a, b = l
  if len(a) != len(b):
    return 'No'
  if len(a) == 0:
     return 'Yes'

  a_s = set(a)
  b_s = set(b)
  if len(a_s) != len(b_s):
    return 'No'
  if '1' not in a or '2' not in b:
    return 'No'
  return 'Yes'


def main():
    import sys
    lines = sys.stdin.read().split('\n')
    # pp(lines)
    ret = match(lines[1])
    print(ret)


if __name__ == "__main__":
    main()
