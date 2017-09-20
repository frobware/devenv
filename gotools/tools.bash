#!/bin/bash

TOPDIR="$(cd $(dirname "${BASH_SOURCE[0]}") && pwd -P)"
source $TOPDIR/env.bash

go get ${UPDATE} golang.org/x/tools/cmd/...
go get ${UPDATE} github.com/dougm/goflymake
go get ${UPDATE} github.com/jstemmer/gotags
go get ${UPDATE} github.com/opennota/check/cmd/...
go get ${UPDATE} github.com/tools/godep/...
go get ${UPDATE} github.com/golang/lint/golint
go get ${UPDATE} github.com/kisielk/errcheck
go get ${UPDATE} golang.org/x/tools/cmd/benchcmp
go get ${UPDATE} github.com/cespare/prettybench
go get ${UPDATE} github.com/ajstarks/svgo/benchviz
go get ${UPDATE} golang.org/x/tools/cmd/stringer
go get ${UPDATE} github.com/josharian/impl
go get ${UPDATE} golang.org/x/tools/cmd/goimports
go get ${UPDATE} sourcegraph.com/sqs/goreturns
go get ${UPDATE} github.com/rogpeppe/godef
go get ${UPDATE} github.com/nsf/gocode
go get ${UPDATE} golang.org/x/tools/cmd/guru
go get ${UPDATE} golang.org/x/tools/cmd/gorename
go get ${UPDATE} github.com/kisielk/godepgraph
go get ${UPDATE} github.com/fzipp/pythia
go get ${UPDATE} github.com/alecthomas/gometalinter
go get ${UPDATE} github.com/zmb3/gogetdoc

go get ${UPDATE} -d github.com/derekparker/delve/cmd/dlv
make -C $GOPATH/src/github.com/derekparker/delve install

PATH=$GOPATH/bin:$PATH gometalinter --install
