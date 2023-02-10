package main

import (
	lua "github.com/yuin/gopher-lua"
)

func main() {
	L := lua.NewState()
	defer L.Close()
	if err := L.DoFile("script.lua"); err != nil {
		panic(err)
	}

}
