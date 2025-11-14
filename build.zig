const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.resolveTargetQuery(.{
        .cpu_arch = .aarch64,
        .os_tag = .freestanding,
        .abi = .none,
    });

    const exe = b.addExecutable(.{
        .name = "Kernel",
        .root_module = b.createModule(.{
            .target = target,
            .optimize = .Debug,
            .root_source_file = b.path("src/kernel.zig"),
        }),
    });
    exe.addObjectFile(b.path("src/boot.S"));
    exe.setLinkerScript(b.path("linker.ld"));
    b.installArtifact(exe);
}
