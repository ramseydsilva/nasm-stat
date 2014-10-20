nasm-stat
=========

Stat command implemented in NASM.

Requirements:

- NASM 2.09+
- gcc

Building/Installation:

    make all

And to rebuild:

    make rebuild

Usage:

    ./stat <FILE/FOLDER>

Example:

    # ./stat stat.asm
    File: stat.asm
    Size: 1202
    Blocks: 8
    IO Block: 4096
    Device: 2054
    Links: 1
    Inode: 1725100
    UID: 1000
    GID: 1000


* * *
