# OS

A minimal operating system written in Zig and ARM64 assembly.

## Project Structure

- `src/boot.S` - ARM64 boot code and initial setup
- `src/kernel.zig` - Main kernel implementation
- `src/page_table.S` - Page table configuration
- `build.zig` - Build system configuration
- `linker.ld` - Linker script

## Requirements

- Zig compiler
- ARM64 toolchain

## Building

```bash
zig build
```

The kernel binary will be output to `zig-out/bin/Kernel.bin`.

## Running

The kernel can be run on ARM64 hardware or in an emulator like QEMU.

## License

This project is provided as-is.

