# Makefile

CFLAGS  = -O2 -Wall -Wextra
LDFLAGS =

OBJS = schotter.o

.PHONY: all clean

all: schotter

clean:
	$(RM) schotter $(OBJS)

schotter: $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^ -lm
