package pwapi

import (
	"context"
	"errors"

	"github.com/SLIB53/slib53-iac-playground/apps/playwright-post-message/internal/pwdata"
)

type Logger interface {
	LogVerbose(message string)
	LogInfo(message string)
	LogError(message string, err error)
}

var (
	ErrValidationFailed = errors.New("validation failed")
	ErrCreateMessage    = errors.New("failed to write message")

	errMessageEmpty = errors.New("message is empty")
)

func PostMessage(ctx context.Context, logger Logger, message string) error {
	logger.LogVerbose("Validating message: " + message)

	err := validateMessage(message)
	if err != nil {
		logger.LogError("Message validation failed", err)

		return ErrValidationFailed
	}

	logger.LogInfo("Creating message: " + message)

	err = pwdata.CreateMessage(ctx, logger, message)
	if err != nil {
		logger.LogError("Failed to create message", err)

		return ErrCreateMessage
	}

	return nil
}

func validateMessage(message string) error {
	if message == "" {
		return errMessageEmpty
	}

	return nil
}
