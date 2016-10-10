package main

import (
    "fmt"
    "log"
    "net/http"
    "encoding/json"
)

type Message struct {
    Hello string
}

func requestJson(w http.ResponseWriter, r *http.Request){
    msg := Message { Hello: "World" }
    fmt.Println("call requestJson")
    json.NewEncoder(w).Encode(msg)
}

func main() {
    http.HandleFunc("/json", requestJson)
    log.Fatal(http.ListenAndServe(":10000", nil))
}
