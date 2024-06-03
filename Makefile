main: libmod.so main.o
# gcc -o main main.o libmod.a
	gcc -o main main.o libmod.so

libmod.so: add.o sub.o
# ar -rcv libmod.a add.o sub.o
	gcc -shared -fpic -o libmod.so add.o sub.o

add.o: add.c
	gcc -c add.c -o add.o

sub.o: sub.c
	gcc -c sub.c -o sub.o

main.o: main.c
	gcc -c main.c

clean:
	rm -f main main.o sub.o add.o libmod.a libmod.so
