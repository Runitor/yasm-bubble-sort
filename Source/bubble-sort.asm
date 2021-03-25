; [YASM] Bubble Sort
; July 15, 2020
; https://github.com/Runitor/yasm-bubble-sort/

; A simple program to sort a list of numbers
; using the Bubble Sort algorithm.

section .data
EXIT_SUCCESS	equ	0
SYS_exit	equ	60

TRUE		equ	255
FALSE		equ	0

bList		db	10, 5, 12, 6, 30
		db	18, 3, 15, 7, 20
length		db	10

section .text
global _start
_start:
	mov	cl, byte [length]
	dec	cl					; i = length - 1

sortingLoop:
	mov	bl, FALSE				; reset bool
	mov	sil, 0					; reset counter

nestedLoop:
	mov	r9b, byte [bList + rsi]			; r9b = bList[rsi]
	mov	r10b, byte [bList + rsi + 1]		; r10b = bList[rsi+1]

	cmp	r9b, r10b				; if r9b <= r10b
	jbe	NotGreater				; don't swap positions
	mov	byte [bList + rsi + 1], r9b		; else swap positions
	mov	byte [bList + rsi], r10b
	mov	bl, TRUE				

NotGreater:
	inc	sil
	cmp	sil, cl					; if sil != cl
	jne	nestedLoop				; loop again
	
	cmp	bl, FALSE				; if nothing was swapped
	je	last					; terminate

	loop sortingLoop
	

last:
	mov	rax, SYS_exit
	mov	rdi, EXIT_SUCCESS
	syscall
