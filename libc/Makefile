objects = libc.o

libc : $(objects)
	gcc -ansi -o libc $(objects)
libc.o : libc.c
	gcc -ansi -c libc.c
clean :
	rm libc $(objects)
