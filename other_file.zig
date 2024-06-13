comptime {
    @compileError("abc");
    if (1 == 1) {}
}
