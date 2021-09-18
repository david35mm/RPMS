#!/bin/sh

for arch in SRPMS aarch64 noarch x86_64
do
	cd $(pwd)/${arch}
		rpmsign --addsign *.rpm
	cd ..
done

#createrepo --database --update --xz --deltas .
