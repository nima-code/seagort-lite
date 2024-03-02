package main

import "C"

import (
	"fmt"

	"github.com/robertkrimen/otto"
)

//export CompileAndRunJavaScript
func CompileAndRunJavaScript(input *C.char) *C.char {
	// Convert C string to Go string
	jsCode := C.GoString(input)

	// Create an Otto VM
	vm := otto.New()

	// Execute JavaScript code
	result, err := vm.Run(jsCode)
	if err != nil {
		// Handle error
		return C.CString(fmt.Sprintf("Error executing JavaScript: %s", err))
	}

	// Convert result to string
	output := result.String()

	// Convert Go string to C string and return
	return C.CString(output)
}

func main() {
	CompileAndRunJavaScript(C.CString(`
	console.log("Hello World");
	`))
}
