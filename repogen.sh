#!/bin/sh

for arch in SRPMS aarch64 noarch x86_64
do
	cd $(pwd)/${arch}
		rpmsign --addsign *.rpm
done

createrepo --database --update --xz --deltas .
