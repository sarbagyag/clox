CC = clang
CFLAGS = -Wall -Wextra -std=c99

SRCS=src/main.c src/chunk.c src/memory.c src/value.c src/debug.c src/vm.c src/scanner.c src/compiler.c src/table.c src/object.c

TARGET = clox

all : $(TARGET)

$(TARGET) : $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCS)

clean:
	rm -f $(TARGET)