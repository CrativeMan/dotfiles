CC := gcc
CFLAGS = -Wall -Wextra -pedantic
LDFLAGS =

SRC_DIR := src
OBJ_DIR := obj
BIN_DIR := bin
TARGET := $(BIN_DIR)/main

SRCS := $(shell find $(SRC_DIR) -name '*.c')

OBJS := $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRCS))

all: $(TARGET)

$(TARGET): $(OBJS)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)

run:
	./$(TARGET)

.PHONY: all clean run
