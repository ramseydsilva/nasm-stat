rebuild : clean all

all : base.o stat.o
	gcc base.o stat.o -o stat
base.o :
	nasm -felf64 stat.asm -o base.o
stat.o :
	gcc -nostdlib -c stat.c
clean :
	rm -rf *.o
