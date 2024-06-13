const std = @import("std");

pub fn build(b: *std.Build) !void {
    _ = b.addModule("dependency", .{ .root_source_file = b.path("dependency.zig") });
}
