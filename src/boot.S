.global_start
_start:
    // Set stack pointer
    ldr x0, = 0x41000000
    mov sp, x41000000
    
    // call zig start "_start"

    bl _start

1: b 1b // infinite loop if  _start returns
