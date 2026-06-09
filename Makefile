CC=cc

exploit: exploit.c
	$(CC) $^ -std=c11 -static -o $@

shellcode.h: shellcode.s
	$(CC) $^ -o $@.bin -nostdlib -nostartfiles -fpic -Om -static -s -Wl,--omagic,--build-id=none
	xxd -i $@.bin $@
	-rm shellcode.h.bin

clean:
	-rm exploit
	-rm shellcode.h
