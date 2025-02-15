EXTERN mouse_x: QWORD
EXTERN mouse_y: QWORD
EXTERN mouse_return_address: QWORD

.code
mouse_codecave proc
	mov qword ptr [rbx+0BECh], rax
	push rax
	push rcx
	mov rax, rbx
	add rax, 0BECh
	mov rcx, rbx
	add rcx, 0BF0h
	mov mouse_x, rax
	mov mouse_y, rcx
	pop rax
	pop rcx
	jmp mouse_return_address
mouse_codecave endp
end