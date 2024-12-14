# python -m doctest -v a.py
# from pprint import pp as pp


def match(lines):
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
  l = [x.split() for x in lines if x != '']
  ct = int(l[0][0])
  r = 0
  for t, v in l:
    t = int(t)
    r = max([r - max([(t - ct), 0]), 0]) + int(v)
    ct = t
    # print([t, v, r])
  return r


def main():
    import sys
    lines = sys.stdin.read().split('\n')
    # pp(lines)
    ret = match(lines[1:])
    print(ret)


if __name__ == "__main__":
    main()
