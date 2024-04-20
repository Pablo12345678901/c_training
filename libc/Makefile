objects = libc.o remove_trashes.o

libc : $(objects)
	gcc -ansi -o libc libc.o
libc.o : libc.c
	gcc -ansi -o libc.o -c libc.c
remove_trashes.o : remove_trashes.c
	gcc -ansi -o remove_trashes.o -c remove_trashes.c
clean :
	rm libc $(objects)
