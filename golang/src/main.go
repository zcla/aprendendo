package main

import (
	"fmt"
	"log"
	"github.com/buaazp/fasthttprouter"
	"github.com/valyala/fasthttp"
)

var searchMock []byte

func Response(ctx *fasthttp.RequestCtx) {
	fmt.Fprint(ctx, "Hello (golang)")
}

func main() {
	fmt.Println("starting.")

	router := fasthttprouter.New()
	router.GET("/", Response)

	log.Fatal(fasthttp.ListenAndServe(":5000", router.Handler))
}
