.global_start

.align 11

_start:
    ldr x0, =0x41000000
    mov sp, x0

    ldr x0, =0x00FF
    msr MAIR_EL1, x0







