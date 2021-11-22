const builtin = @import("builtin");
const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();
    const exe = b.addExecutable("zighello", "hello.zig");
    exe.setBuildMode(mode);
    exe.setTarget(builtin.Arch {
        .arm = builtin.Arch.Arm32.v7,
    }, builtin.Os.linux, builtin.Abi.gnueabihf);
    exe.linkSystemLibrary("c");
    exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
