all: ctx consolemon

clean:
	rm -f *.o *~ ctx consolemon

ctxapi.o: ctxapi.c ctxapi.h
	gcc -c ctxapi.c

ctx: ctx.c ctxapi.o
	gcc -o ctx ctx.c ctxapi.o -lusb

consolemon: consolemon.c ctxapi.o
	gcc -o consolemon consolemon.c ctxapi.o -lusb

