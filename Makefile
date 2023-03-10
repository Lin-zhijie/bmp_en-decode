INC_DIR = ./include
SRC_DIR = ./src
OBJ_DIR = ./obj

SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst %.c, $(OBJ_DIR)/%.o, $(notdir $(SRC)))

#test:
#	echo $(SRC)
#	echo $(OBJ)

TARGET = main

CC = gcc
CFLAGS = -g -Wall -I$(INC_DIR)

$(TARGET):$(OBJ)
	$(CC) $(OBJ) -o $@

$(OBJ_DIR)/%.o:$(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

sim:$(TARGET)

clean:
	rm -rf $(OBJ_DIR)/*.o


