rebuild : clean all

all : base.o stat.o
	gcc -fno-builtin base.o stat.o -o stat
base.o :
	nasm -felf64 stat.asm -o base.o
stat.o :
	gcc -fno-builtin -nostdlib -c stat.c -o stat.o
clean :
	rm -rf *.o
