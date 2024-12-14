# python -m doctest -v d.py
# from pprint import pp as pp

import math

def match(n):
  '''
  >>> match(200)
  3
  '''
  r = math.sqrt(n / 2)
  l = primes(math.floor(r))
  print(l)


def primes(x):
    if x < 2:
        return []

    primes = [i for i in range(x)]
    primes[1] = 0 # 1は素数ではない

    # エラトステネスのふるい
    for prime in primes:
        if prime > math.sqrt(x):
            break
        if prime == 0:
            continue
        for non_prime in range(2 * prime, x, prime):
            primes[non_prime] = 0

    return [prime for prime in primes if prime != 0]


def main():
    import sys
    lines = sys.stdin.read().split('\n')
    # pp(lines)
    ret = match(int(lines[0]))
    print(ret)


if __name__ == "__main__":
    main()
