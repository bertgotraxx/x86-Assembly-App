# x86 Assembly Bootloader Application

Pet project made in order to learn the development of applications on x86 Assembly language

In this Project i've learnt next:
* How to write a basic Bootloader using 16-bit (Real) mode
* How to use BIOS interrupts and basic Service Codes
* How to use CPU registers for passing arguments and storing information
* Reading input from Keyboard and printing it on the Screen

## Compilation
In order to compile the project you need to have installed **NASM** or any other Assembly compiler

### Linux
```
nasm -f elf64 -o main.o main.s

ld -o main main.o
```

# Video demonstration
https://github.com/user-attachments/assets/f78947cc-aba5-4eb3-b9d9-7e0bf6fcc3eb
