; [YASM] Bubble Sort
; July 15, 2020
; Runitor

; A simple program to sort a list of numbers
; using the Bubble Sort algorithm.

section .data
EXIT_SuCCESS	equ	0
SYS_exit	equ	60

TRUE		equ	255
FALSE		equ	0

bList		db	10, 5, 12, 6, 20
		db	18, 3, 15, 7, 30
length		db	10

section .text
global _start
_start:
	; code goes here
last:
	mov	rax, SYS_exit
	mov	rdi, EXIT_SUCCESS
	syscall
