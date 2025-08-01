# X86-Low-Assembly-Language

Low Level Assembly Programs Using the **x86 architecture**, using **NASM (Netwide Assembler)** and **GCC**.

## 📦 Technologies Used

| Tool   | Purpose                                     |
|--------|---------------------------------------------|
| NASM   | Assembling `.asm` files into object code    |
| GCC    | Linking and creating executables            |
| GDB    | Debugging programs at the instruction level |

---


## Instruction

1. To run these programs your system must have installed NASM and GCC.

2. Open file with any terminal as per your convinience.

3. Save the file.

4. Open terminal having path as same folder.

5. To run type below commands:
```

$ nasm -felf32 file_name.asm

$ gcc -m32 file_name.o

$ ./a.out
```

6. To debug program use below commands:
```

$ nasm -felf32 -g -Fdwarf file_name.asm

$ gcc -m32 -g -Fdwarf file_name.o

$ ./a.out
```

