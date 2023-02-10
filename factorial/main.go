package main

import (
	"fmt"
	"math/rand"
	"time"

	lua "github.com/yuin/gopher-lua"
)

func main() {
	L := lua.NewState()
	defer L.Close()
	registerGetRandomNumber(L)
	registerFactorial(L)
	if err := L.DoFile("script.lua"); err != nil {
		fmt.Println(err)
	}
}

func registerGetRandomNumber(l *lua.LState) {
	l.Register("getRandomNumber", func(l *lua.LState) int {
		s1 := rand.NewSource(time.Now().UnixNano())
		r1 := rand.New(s1)
		l.Push(lua.LNumber(r1.Intn(60)))
		return 1
	})
}

func registerFactorial(l *lua.LState) {
	l.Register("factorial", func(l *lua.LState) int {
		n := l.ToInt(1)
		m := l.ToInt(2)
		example := Fibonacci(m)
		fmt.Println("Fibonacci ", m, "= ", example)
		result := Factorial(n)
		l.Push(lua.LNumber(result))
		return 1
	})
}

func Factorial(n int) (result int) {
	if n > 0 {
		result = n * Factorial(n-1)
		return result
	}
	return 1
}

func Fibonacci(numero int) int {
	if numero <= 1 {
		return numero
	}
	return Fibonacci(numero-1) + Fibonacci(numero-2)
}
