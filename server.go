package main

import (
	"log"
	"net/http"
)

func main() {
	fs := http.FileServer(http.Dir("packages"))
	http.Handle("/", fs)

	log.Println("Listening...")
	http.ListenAndServe(":8080", nil)
}
