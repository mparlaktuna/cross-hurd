export CC=i586-linux-gnu-gcc-4.9
export CXX=i586-linux-gnu-g++-4.9
export AR=gar
export PROCS=1
export SCRIPT_DIR=$PWD
export SYSTEM=$PWD/tmp
export ROOT=/cross-tools
export SYS_ROOT=/tools
export TARGET=i586-pc-gnu
export HOST="$(echo $MACHTYPE | sed "s/$(echo $MACHTYPE | cut -d- -f2)/cross/g")"
export PATH=$ROOT/bin:$PATH

# Package versions.
BINUTILS_VERSION=2.25
GCC_VERSION=4.9.2
FLEX_VERSION=2.5.39
ZLIB_VERSION=1.2.8
BASH_VERSION=4.3
COREUTILS_VERSION=8.23
E2FSPROGS_VERSION=1.42.12
PKGCONFIGLITE_VERSION=0.28-1
# Mach, Hurd and Glibc are all taken from the Git repository.

BINUTILS_SRC=binutils-"$BINUTILS_VERSION"
BINUTILS_PKG="${BINUTILS_SRC}.tar.bz2"
GCC_SRC=gcc-"$GCC_VERSION"
GCC_PKG="$GCC_SRC".tar.bz2
GNUMACH_SRC=gnumach
GNUMIG_SRC=mig
HURD_SRC=hurd
GLIBC_SRC=glibc
FLEX_SRC=flex-"$FLEX_VERSION"
FLEX_PKG="$FLEX_SRC".tar.bz2
ZLIB_SRC=zlib-"$ZLIB_VERSION"
ZLIB_PKG="$ZLIB_SRC".tar.gz
BASH_SRC=bash-"$BASH_VERSION"
BASH_PKG="$BASH_SRC".tar.gz
COREUTILS_SRC=coreutils-"$COREUTILS_VERSION"
COREUTILS_PKG="$COREUTILS_SRC".tar.xz
E2FSPROGS_SRC=e2fsprogs-"$E2FSPROGS_VERSION"
E2FSPROGS_PKG="$E2FSPROGS_SRC".tar.gz
PKGCONFIGLITE_SRC=pkg-config-lite-"$PKGCONFIGLITE_VERSION"
PKGCONFIGLITE_PKG="$PKGCONFIGLITE_SRC".tar.gz

print_info ()
{
   echo "* $*"
}

