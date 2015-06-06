; ##########################
; 		    STAGE 2
; ##########################

mov ax, 0x1000
mov ds, ax
mov es, ax

; ##########################
;          STARTUP
; ##########################

Start:
	mov al, 'P'
	mov ah, 0x0E
	int 10h

	jmp $

	RET

; ##########################
;	      SIGNATURE
; ##########################
TIMES 512 - ($ - $$) db 0