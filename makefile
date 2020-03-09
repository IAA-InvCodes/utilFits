CC=gcc

CFLAGS=
CFLAGS+=-O1 -pg -g 
CFLAGS+=-fno-omit-frame-pointer 
#CFLAGS+=-DGLOBAL_DEBUG
#CFLAGS+=-Wall -Wextra
#CFLAGS+=-Wconversion
#CFLAGS+=-Wno-unused-but-set-variable -Wno-unused-parameter

#LDFLAGS=-L/home/bsc15/bsc15557/root/usr/lib/
LDLIBS= -lcfitsio -lm -lnsl 
BIN= modhead

all: $(BIN)

modhead: modhead.o 

clean:
	rm -f *.o $(BIN)