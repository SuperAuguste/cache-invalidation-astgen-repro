const A = struct {
    const file_with_one_import = @import("imported_file.zig");
};

pub fn main() !void {}
