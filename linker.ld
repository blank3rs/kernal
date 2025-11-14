ENTRY(_start)

SECTIONS
{
    /* QEMU virt machine loads the kernel at this RAM address */
    . = 0x40000000;

    /* Code + read-only data */
    .text : {
        *(.text .text.*)
        *(.rodata .rodata.*)
    }

    /* Initialized global variables */
    .data : {
        *(.data .data.*)
    }

    /* Uninitialized globals (will be zeroed by your start code) */
    .bss : {
        *(.bss .bss.*)
        *(COMMON)
    }
}
