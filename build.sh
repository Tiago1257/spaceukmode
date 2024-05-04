# remember to actually set these..
export SPLAT_DIR=/home/tiago/splat/splat/
export TOOLCHAIN=/home/tiago/toolchain/clang-cl-msvc.cmake
# i hate my life
export LLVM_ROOT=/usr/
export LLVM_VER=17
export CLANG_VER=17
export LLVM_ENABLE_LIBXML=OFF
# this is supposed to default to x86 but it doesnt for some reason
export HOST_ARCH=x86
# bindings stuff
# export GEODE_BINDINGS_REPO_PATH=/home/tiago/geode/geodemods/ArchipelagoGD/bindings/

# you can also use `-G Ninja` here
cmake \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=1 \
  -DCMAKE_TOOLCHAIN_FILE=$TOOLCHAIN \
  -DGEODE_DISABLE_FMT_CONSTEVAL=1 \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -B build

cmake --build build --config Release

