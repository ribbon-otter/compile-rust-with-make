This is a small demo of how to compile rust with `make` instead of `cargo`. 
It uses rust 2015 edition, as that is what rustc defaults too. 

As you can see each file is treated as a separate crate, since crates are analogous to C++'s compilation units for this purpose.

I suspect that compiling rust like this is rarely if ever practical, but I found it interesting to see what rust without cargo would be like.

# Explanation
There are four files arranged in a diamond of dependencies: `main.rs` depends on `a.rs` and `b.rs` which both depend on `util.rs`.

To compile, run `make` and then run `./main` to see code from `a`, `b`, and `util` to be called from `main.rs`.

# License 

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org/>


