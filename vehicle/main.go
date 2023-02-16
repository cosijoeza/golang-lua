package main

import (
	"fmt"

	"github.com/yuin/gluamapper"
	lua "github.com/yuin/gopher-lua"
)

type Unit struct {
	Id           string
	BatteryLevel float64
	UnitType     string
}

func main() {
	L := lua.NewState()
	defer L.Close()
	registerSendMessage(L)
	if err := L.DoFile("vehicle.lua"); err != nil {
		fmt.Println(err)
	}
	var unit Unit
	if err := gluamapper.Map(L.GetGlobal("unit").(*lua.LTable), &unit); err != nil {
		fmt.Println(err)
	}
	fmt.Printf("%s %f %s", unit.Id, unit.BatteryLevel, unit.UnitType)
}

func registerSendMessage(L *lua.LState) {

	L.Register("sendTable", func(L *lua.LState) int {
		table := L.ToTable(1)
		// Print values
		table.ForEach(func(key, value lua.LValue) {
			fmt.Println(key.String())
			fmt.Println(value.String())
		})
		return 0
	})
}
