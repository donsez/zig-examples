# Zig :: Examples

Zig is a general-purpose programming language and toolchain for maintaining robust, optimal, and reusable software.

https://ziglang.org/

https://ziglang.org/documentation/master/#Introduction

## Installation

###  Tarball
```bash
cd ~/devtools
wget https://ziglang.org/builds/zig-macos-x86_64-0.9.0-dev.729+bd8baefaa.tar.xz
xz -d zig-macos-x86_64-0.9.0-dev.729+bd8baefaa.tar.xz
PATH=$PATH:~/devtools/zig-macos-x86_64-0.9.0-dev.729+bd8baefaa
zig env
```
### Brew

```bash
brew install zig
```

From Git HEAD
```bash
brew install zig --HEAD
```

## Examples

### Hello World !

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

### Global variables

```bash
cd  global_variables
zig test global_variables.zig
```

### Errors

TODO

### Test

```bash
cd test_null
zig test test_null.zig
```

### C library (libcurl)

```bash
cd curl
zig build-exe curl.zig 
```

> See https://ziglearn.org/chapter-4/

### Config

```bash
cd config/
zig build-exe config.zig 
./config 
```

### Comptime

TODO

### Async

TODO

> See https://ziglearn.org/chapter-5/

### Allocator

TODO

> See https://ziglearn.org/chapter-2/#allocators

### Cross compile

```bash
cd cross-compile-arm/
zig targets
zig targets | jq .arch
zig targets | jq .os
zig targets | jq .abi
zig targets | jq .libc

zig build-exe hello.zig -target armeb-linux-musleabi --library c --strip --single-threaded
file hello
```

> See https://ziglearn.org/chapter-3/#cross-compilation


### Benchmarks
```bash
cd benchmark/
./benchmark.sh
```

> See https://github.com/Sahnvour/zig-benchmark
> See https://benchmarksgame-team.pages.debian.net/benchmarksgame/why-measure-toy-benchmark-programs.html
> See https://github.com/tiehuis/zig-benchmarks-game

## Resources

* https://ziglearn.org/
* https://github.com/ziglang/zig/tree/master/test
