const UART0: *volatile u32 = @ptrFromInt(0x09000000);
fn putc(c: u8) void {
    UART0.* = @as(u32, c);
}
fn print(msg: []const u8) void {
    for (msg) |c| {
        putc(c);
    }
}
pub export fn kernel_main() noreturn {
    print("Kernel starting...\n");
    while (true) {}
}
