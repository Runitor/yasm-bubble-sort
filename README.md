# [YASM] Bubble Sort algorithm

A simple program to sort a list of numbers using the following bubble sort algorithm:

```c
for (i = (len-1) to 0) {
	swapped = false
	for (j = 0 to i-1)
		if (lst(j) > lst(j+1) {
			tmp = lst(j)
			lst(j) = lst(j + 1)
			lst(j + 1) = tmp
			swapped = true
		}
	if (swapped = false) exit
}
```
