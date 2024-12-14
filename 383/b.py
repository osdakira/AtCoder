# python -m doctest -v a.py
# from pprint import pp as pp

import copy


def match(lines):
  h, w, d = [int(i) for i in lines[0].split()]
  ss = [list(s) for s in lines[1:]]
  ss = seton(ss, h, w, d)
  ss = seton(ss, h, w, d)
  return ss


def seton(ss, h, w, d):
  candidates = []
  for i in range(0, h+1):
    for j in range(0, w+1):
      if nss[i][j] == '.':
        nss = copy.deepcopy(ss)
        nss[i][j] = '@'
        for k in range(1, d+1):
          if nss[i][j+k] == '.':
            nss[i][j+k] = '@'
          if nss[i][j-k] == '.':
            nss[i][j-k] = '@'
          if nss[i+k][j] == '.':
            nss[i+k][j] = '@'
          if nss[i-k][j] == '.':
            nss[i-k][j] = '@'



def main():
    import sys
    lines = sys.stdin.read().split('\n')
    # pp(lines)
    ret = match(lines[0:-1])
    print(ret)


if __name__ == "__main__":
    main()
