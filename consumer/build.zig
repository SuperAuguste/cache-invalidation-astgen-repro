const std = @import("std");

pub fn build(b: *std.Build) !void {
    const exe = b.addExecutable(.{
        .name = "main",
        .root_source_file = b.path("main.zig"),
        .target = b.standardTargetOptions(.{}),
    });
    exe.root_module.addImport("dependency", b.dependency("dependency", .{}).module("dependency"));
    b.installArtifact(exe);
}
