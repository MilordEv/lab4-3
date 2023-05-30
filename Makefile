CC=gcc 
CFLAGS=-c -pthread
LIBRARY=malloc.a
SOURCES=$(wildcard malloc.c)
OBJECTS=$(SOURCES:.c=.o)


all : prog

.c.o:
	$(CC) $(CFLAGS) $< -o $@


prog : $(LIBRARY) prog.c
	gcc prog.c -std=c99 -Lmalloc -pthread -o prog.exe
	./prog.exe

$(LIBRARY): $(OBJECTS)
	ar -rc $(LIBRARY) $^
	ranlib $(LIBRARY)