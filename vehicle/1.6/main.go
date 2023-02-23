package main

import (
	"fmt"
	"reflect"

	lua "github.com/yuin/gopher-lua"
)

type AuthorizationT struct {
	IdTag string `lua:"idTag"`
}

func tableToStruct(table *lua.LTable, typ reflect.Type) interface{} {
	//fmt.Println(table)
	//fmt.Println(typ)

	// create a new instance of the struct
	strct := reflect.New(typ).Elem()
	//fmt.Println("strc:", strct)

	//fmt.Println("elements: ", strct.NumField())

	// iterate over the struct fields and set their values from the Lua table
	for i := 0; i < strct.NumField(); i++ {

		field := strct.Type().Field(i)
		//fmt.Println("-field:", field)
		//fmt.Printf("Field Type: %s: %s Kind: %s\n", field.Name, field.Type.Name(), field.Type.Kind())

		value := table.RawGetString(field.Tag.Get("lua"))
		//fmt.Println("-value:", value)

		// don't set the field if the value is nil
		if value == lua.LNil {
			continue
		}

		//fmt.Println("--field.Type.Kind: ", field.Type.Kind())
		// convert the Lua value to the appropriate Go type
		switch field.Type.Kind() {

		case reflect.Int:
			intVal, _ := value.(lua.LNumber)
			//fmt.Println("----intval", intVal+100)
			strct.Field(i).SetInt(int64(int(intVal)))

		case reflect.String:
			strVal, _ := value.(lua.LString)
			//fmt.Println("----strVal", strVal)
			strct.Field(i).SetString(string(strVal))

		case reflect.Struct:
			strctNested := tableToStruct(value.(*lua.LTable), field.Type)
			//fmt.Println("value: ", value.(*lua.LTable), "field.Type: ", field.Type)
			strct.Field(i).Set(reflect.ValueOf(strctNested))

		default:
			panic(fmt.Sprintf("unsupported type %s for field %q", field.Type.Kind(), field.Name))
		}

	}

	return strct.Interface()
}

func main() {

	// create a new Lua state
	L := lua.NewState()
	defer L.Close()

	// load the Lua code that defines the person table
	if err := L.DoFile("./1.6/authorizeReq.lua"); err != nil {
		fmt.Println(err)
	}
	/*if err := L.DoString(`request = {
		idTag= "asdf-ase4-er56"
	}`); err != nil {
		panic(err)
	}*/

	// get the person table from the Lua state
	personTable := L.GetGlobal("request").(*lua.LTable)

	// // Execute a Lua script.
	// if err := L.DoString(`
	// function printout(table)
	// 	for key, value in pairs(table) do
	// 		print(key,value)
	// 	end

	// 	print(table.name)
	// end
	// `); err != nil {
	// 	fmt.Println(err)
	// 	return
	// }

	// //Call the Lua function printout
	// if err := L.CallByParam(lua.P{
	// 	Fn:      L.GetGlobal("printout"), // name of Lua function
	// 	NRet:    0,                       // number of returned values
	// 	Protect: true,                    // return err or panic
	// }, personTable); err != nil {
	// 	panic(err)
	// }

	//convert the person table to a Go struct
	person := tableToStruct(personTable, reflect.TypeOf(AuthorizationT{})).(AuthorizationT)
	fmt.Printf("%+v\n", person)

}

//AuthorizeRequest = { IdTag="55555" }
