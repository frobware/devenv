## Export everything by default.

set -a
GOPATH=$TOPDIR
set +a

mkdir -p ${GOPATH}/{bin,pkg,src}
