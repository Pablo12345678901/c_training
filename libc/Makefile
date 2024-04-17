objects = libc.o

libc : $(objects)
	gcc -o libc $(objects)
libc.o : libc.c
	gcc -c libc.c
clean :
	rm libc $(objects)
