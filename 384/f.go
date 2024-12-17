package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var cache = make(map[int]int)

func f(x int) int {
	// out(cache)
	if x%2 != 0 {
		return x
	} else {
		val, ok := cache[x]
		if ok {
			return val
		}

		r := f(x / 2)
		cache[x] = r
		return r
	}
}

func main() {
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, math.MaxInt32)

	n := getI()
	a := getInts(n)

	ret := 0
	for i := 0; i < n; i++ {
		for j := i; j < n; j++ {
			r := f(a[i] + a[j])
			cache[a[i]+a[j]] = r
			ret += r
		}
	}
	out(ret)
}

var sc = bufio.NewScanner(os.Stdin)
var wr = bufio.NewWriter(os.Stdout)

func out(x ...interface{}) {
	fmt.Fprintln(wr, x...)
}

func getI() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getInts(N int) []int {
	ret := make([]int, N)
	for i := 0; i < N; i++ {
		ret[i] = getI()
	}
	return ret
}
