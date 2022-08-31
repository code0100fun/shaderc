# shaderc.v

V Bindings for Shaderc

## Build

Windows (Ninja):
```
mkdir -p thirdparty/build
cd thirdparty/build
cmake ../
ninja.exe
```

Windows (MSYS):
```
mkdir -p thirdparty/build
cd thirdparty/build
cmake -G "MSYS Makefiles" ../
make
```

## Running example

After building, copy shared library to the same directory as the example:
```
cp thirdparty/build/shaderc/libshaderc/libshaderc_shared.dll examples/
```

Run the example:
```
v run online_compile.v
```