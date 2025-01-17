#!/bin/sh
cpp $1 |
    sed -e 's/ *## *//g' |
    grep -v '^//' |
    sed -e 's/\[n\]/\n      /g' |
    sed -e 's/\[c\]/                                                                        \&\n     \&/g' |
    sed -e 's/\(^.\{72\}\) *\&$/\1\&/g' |
    grep -v '^#' |
    grep -v '^$' >$2
