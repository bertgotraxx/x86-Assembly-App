[BITS 16]
[ORG 0x7C00]

start:
	xor ax, ax	; Set AX register value to 0
	mov ds, ax	; Set Data Segment values to 0
	mov es, ax	; Set Extra Segment values to 0

.wait:
	mov ah, 00h	; Service code ("Read Character")
	int 16h		; Call interrupt ("Keyboard")

	cmp al, 27	; Check if "ESC" key was pressed
	je .exit	; If yes then jump to "Exit" code block

	jmp .print	; If no then jump to "Print" code block

.print:
	mov ah, 0Eh	; Service code ("Print Character")
	int 10h		; Call interrupt ("BIOS Video Functions")
	jmp .wait	; After printing character - jump back to "Wait" code block

.exit:
	cli		; Clear Interrupts
	hlt		; Stop CPU

times 510 - ($ - $$) db 0
dw 0xAA55
