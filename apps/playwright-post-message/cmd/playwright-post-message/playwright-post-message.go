package main

import (
	"context"
	"fmt"
	"github.com/SLIB53/slib53-iac-playground/apps/playwright-post-message/internal/pwapi"
)

type Logger struct {
}

func (logger Logger) LogVerbose(message string) {
	fmt.Println(message)
}

func (logger Logger) LogInfo(message string) {
	fmt.Println(message)
}

func (logger Logger) LogError(message string, error error) {
	fmt.Println(message, error)
}

func main() {
	ctx := context.Background()
	logger := Logger{}

	ctx = context.WithValue(context.Background(), "logger", logger)

	err := pwapi.PostMessage(ctx, logger, "Hello World!")
	if err != nil {
		panic(err)
	}
}
