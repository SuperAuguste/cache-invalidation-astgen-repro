# Cache Failing to Invalidate on AstGen Errors

To reproduce this, obtain a copy of Zig `0.14.0-dev.32+4aa15440c`.

Then:

```bash
cd consumer
zig build
# Now, comment the @compileError in `other_file.zig`
zig build
# Now, uncomment the @compileError in `other_file.zig`
zig build
# No error???
```
