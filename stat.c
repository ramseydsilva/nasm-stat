#include <asm/stat.h>

void puts(char*, int);
void printlong(long);

int len(char* c) {
    int l = 0;
    for (; *c !='\0'; c++, l++);
    return l;
}

void printStat(char* filename, struct stat* buf) {
    puts("File: ", 6);
    puts(filename, len(filename));
    puts("\n", 1);
    puts("Size: ", 6);
    printlong(buf->st_size);
    puts("Blocks: ", 8);
    printlong(buf->st_blocks);
    puts("IO Block: ", 10);
    printlong(buf->st_blksize);
    puts("Device: ", 8);
    printlong(buf->st_dev);
    puts("Links: ", 7);
    printlong(buf->st_nlink);
    puts("Inode: ", 7);
    printlong(buf->st_ino);
    puts("UID: ", 5);
    printlong(buf->st_uid);
    puts("GID: ", 5);
    printlong(buf->st_gid);
}
