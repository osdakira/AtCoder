# python -m doctest -v a.py
# from pprint import pp as pp

def match(s):
  '''
  >>> match('aabbcc')
  'Yes'

  >>> match('aab')
  'No'

  >>> match('zzzzzz')
  'No'

  >>> match('aabbccaa')
  'No'
  '''
  odd = s[::2]
  even = s[1::2]
  if odd != even:
    return 'No'
  if len(set(odd)) != len(odd):
    return 'No'
  return 'Yes'

def main():
    import sys
    lines = sys.stdin.read().split('\n')
    # pp(lines)
    ret = match(lines[0])
    print(ret)


if __name__ == "__main__":
    main()
