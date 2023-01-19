package pwdata

import (
	"context"
	"testing"
)

func Test_writeMessageToKafka(t *testing.T) {
	type args struct {
		ctx     context.Context
		message string
	}
	tests := []struct {
		name    string
		args    args
		wantErr bool
	}{
		// TODO: Add test cases.
		{"test", args{context.Background(), "test"}, false},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if err := writeMessageToKafka(tt.args.ctx, tt.args.message); (err != nil) != tt.wantErr {
				t.Errorf("writeMessageToKafka() error = %v, wantErr %v", err, tt.wantErr)
			}
		})
	}
}
