CC = gcc
CFLAGS = -Wall
CFLAGS_DEBUG = -Wall -g
OBJS = check-perm.o

all: check-perm

check-perm: $(OBJS)
	$(CC) -o check-perm $(OBJS)

#use built-in pattern rule; $< is the automatic variable for the first prerequisite, i.e., the source file
%.o: %.c
	$(CC) $(CFLAGS) -c $<
	
clean:
	rm -f check-perm $(OBJS)
