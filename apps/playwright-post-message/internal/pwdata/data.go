package pwdata

import "context"

type Logger interface {
	LogVerbose(message string)
	LogInfo(message string)
	LogError(message string, err error)
}

// CreateMessage writes the message to storage.
func CreateMessage(ctx context.Context, logger Logger, message string) error {
	logger.LogVerbose("Writing message: " + message)

	// TODO: get Redis client from context

	logger.LogVerbose("Writing message to Redis: " + message)

	err := writeMessageToRedis(ctx, message)
	if err != nil {
		logger.LogError("Failed to write message to Redis", err)
		return err
	}

	// TODO: get kafka client from context

	logger.LogVerbose("Writing message to Kafka: " + message)

	err = writeMessageToKafka(ctx, message)
	if err != nil {
		logger.LogError("Failed to write message to Kafka", err)
		return err
	}

	return nil
}

// writeMessageToRedis writes the message to Redis.
func writeMessageToRedis(ctx context.Context, message string) error {
	return nil
}

// writeMessageToKafka writes the message to Kafka.
func writeMessageToKafka(ctx context.Context, message string) error {
	return nil
}
