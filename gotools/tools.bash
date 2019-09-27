#!/bin/bash

TOPDIR="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd -P)"
source $TOPDIR/env.bash

go get ${UPDATE} github.com/rogpeppe/godef
go get ${UPDATE} github.com/mdempsky/gocode
go get ${UPDATE} golang.org/x/tools/cmd/goimports
go get ${UPDATE} golang.org/x/tools/cmd/guru
