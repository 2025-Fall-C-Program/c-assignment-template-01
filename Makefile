CC=gcc
CFLAGS=-Wall -Wextra -std=c11
BIN=bin
TARGET=$(BIN)/app

.PHONY: all run clean

all: $(TARGET)

$(TARGET): main.c
	mkdir -p $(BIN)
	$(CC) $(CFLAGS) -o $(TARGET) main.c

run: $(TARGET)
	$(TARGET)

clean:
	rm -rf $(BIN)
