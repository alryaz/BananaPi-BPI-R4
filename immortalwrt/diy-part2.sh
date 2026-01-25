#!/bin/bash
#
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' \
  package/base-files/files/bin/config_generate

#
# Fix rust build
sed -i 's/llvm.download-ci-llvm=true/llvm.download-ci-llvm=false/g' \
  feeds/packages/‎lang/rust/Makefile‎
