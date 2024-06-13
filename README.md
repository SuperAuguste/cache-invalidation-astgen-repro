# Cache Failing to Invalidate on AstGen Errors

Thanks `nitanmarcel` on the Zig Discord for finding this bug!

To reproduce this, obtain a copy of a version of Zig from `0.13.0` to `0.14.0-dev.32+4aa15440c`.

Then:

```bash
# Ensure no local .zig-caches are present

zig build
# No error, as expected
# Now, uncomment the @compileError in `imported_file.zig`

zig build
# No error???
```
