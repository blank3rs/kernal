.section .text
.global _start

_start:
    ldr x0, =0x41000000
    mov sp, x0

    ldr x0, =0x00FF
    msr MAIR_EL1, x0

    ldr x0, =0x00000000000000B5
    msr TCR_EL1, x0

    ldr x0, =TTBR0_TABLE
    msr TTBR0_EL1, x0
    isb

    ldr x1, =TTBR0_TABLE
    mov x2, #0x09000000
    orr x2, x2, #0b01
    str x2, [x1]

    add x1, x1, #8
    mov x2, #0x40000000
    orr x2, x2, #0b01
    str x2, [x1]

    mrs x0, SCTLR_EL1
    orr x0, x0, #(1 << 0)
    orr x0, x0, #(1 << 2)
    orr x0, x0, #(1 << 12)
    msr SCTLR_EL1, x0
    isb

    bl kernel_main

1:  b 1b

.align 12
TTBR0_TABLE:
    .zero 4096
