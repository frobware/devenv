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
go get ${UPDATE} github.com/nsf/gocode
go get ${UPDATE} golang.org/x/tools/cmd/guru
go get ${UPDATE} golang.org/x/tools/cmd/gorename
go get ${UPDATE} github.com/kisielk/godepgraph
go get ${UPDATE} github.com/fzipp/pythia
go get ${UPDATE} github.com/alecthomas/gometalinter
go get ${UPDATE} github.com/zmb3/gogetdoc
go get ${UPDATE} github.com/direnv/direnv
go get ${UPDATE} github.com/cloudflare/cfssl/cmd/...
go get ${UPDATE} github.com/rakyll/hey
go get ${UPDATE} -d github.com/derekparker/delve/cmd/dlv
go get ${UPDATE} golang.org/x/tools/cmd/guru
go get ${UPDATE} github.com/bronze1man/yaml2json
go get ${UPDATE} github.com/StanfordSNR/guardian-agent/cmd/...
go get ${UPDATE} github.com/tomnomnom/gron
go get ${UPDATE} github.com/labstack/tunnel/cmd/...
go get ${UPDATE} github.com/google/gops
go get ${UPDATE} github.com/golang/lint/...
# make -C $GOPATH/src/github.com/derekparker/delve install

(go get ${UPDATE} github.com/rogpeppe/godef;
 cd $GOPATH/src/github.com/rogpeppe/godef;
 git remote add fork https://github.com/frobware/godef.git
 git fetch -a fork
 git checkout nfi-but-better
 go install -x ./...)

PATH=$GOPATH/bin:$PATH gometalinter --install
