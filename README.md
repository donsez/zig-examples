# Zig :: Examples

Zig is a general-purpose programming language and toolchain for maintaining robust, optimal, and reusable software.

https://ziglang.org/

https://ziglang.org/documentation/master/#Introduction

```bash
cd ~/devtools
wget https://ziglang.org/builds/zig-macos-x86_64-0.9.0-dev.729+bd8baefaa.tar.xz
xz -d zig-macos-x86_64-0.9.0-dev.729+bd8baefaa.tar.xz
PATH=$PATH:~/devtools/zig-macos-x86_64-0.9.0-dev.729+bd8baefaa
zig env
```

```bash
cd hello
zig build-exe hello.zig
wc -c hello
./hello

zig build-exe hello.zig -O ReleaseSmall --strip --single-threaded
wc -c hello
zig build-exe hello.zig -O ReleaseSmall --strip --single-threaded -target x86_64-macos
wc -c hello
file hello
```

```bash
cd  global_variables
zig test global_variables.zig
```

```bash
cd test_null
zig test test_null.zig
```

```bash
cd curl
zig build-exe curl.zig 
```

```bash
cd config/
zig build-exe config.zig 
./config 
```
