'''
6 桁の正整数
N が与えられます。
この整数が以下の条件を全て満たすか判定してください。

N の各桁のうち、
1 は丁度
1 つである。
N の各桁のうち、
2 は丁度
2 つである。
N の各桁のうち、
3 は丁度
3 つである。
'''

# python -m doctest -v a.py
# from pprint import pp as pp

def match(n):
  '''
  >>> match('123233')
  'Yes'

  >>> match('123234')
  'No'

  >>> match('323132')
  'Yes'

  >>> match('500000')
  'No'
  '''
  l = list(n)
  if l.count('1') == 1 and l.count('2') == 2 and l.count('3') == 3:
     return 'Yes'
  else:
     return 'No'


def main():
    import sys
    lines = sys.stdin.read().split()
    # pp(lines)
    ret = match(lines[0])
    print(ret)


if __name__ == "__main__":
    main()
