.macro PUSHREGS
addi sp, sp, -256
.irp param, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
sd x\param, \param*8(sp)
.endr
.endm

.macro POPREGS
.irp param, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
ld x\param, \param*8(sp)
.endr
addi sp,sp,256
.endm