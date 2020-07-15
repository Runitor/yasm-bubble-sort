# [YASM] Bubble Sort algorithm

A simple program to sort a list of numbers using the following bubble sort algorithm:

```c
for (i = (length - 1) to 0) {
	swapped = false
	for (j = 0 to i - 1)
		if (list(j) > list(j + 1) {
			tmp = list(j)
			list(j) = list(j + 1)
			list(j + 1) = tmp
			swapped = true
		}
	if (swapped = false) exit
}
```
## File descriptions

* bubble-sort.asm - source code
* bubble-sort.lst - list file
* bubble-sort.o   - object file
* bubble-sort.out - compiled executable
* asm64           - compile/link script
* DIF.txt         - gdb debugger input file
* out.txt         - gdb debugger output file
