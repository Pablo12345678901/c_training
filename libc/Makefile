objects = libc.o

libc : $(objects)
	gcc -ansi -o libc libc.o
libc.o : libc.c
	gcc -ansi -o libc.o -c libc.c
clean :
	rm libc $(objects)
