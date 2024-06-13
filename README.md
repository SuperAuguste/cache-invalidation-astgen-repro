# Cache Failing to Invalidate on AstGen Errors

To reproduce this, obtain a copy of Zig `0.14.0-dev.32+4aa15440c`.

Then:

```bash
# Ensure no local .zig-caches are present in
# the repo root directory or in `consumer`,
# then:
cd consumer

zig build
# Error, as expected
# Now, comment out the @compileError in `other_file.zig`

zig build
# No error, as expected
# Now, uncomment the @compileError in `other_file.zig`

zig build
# No error???
```
