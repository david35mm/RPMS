#!/bin/sh
destdir="$(pwd)"
for arch in SRPMS aarch64 noarch x86_64
do
	pushd ${destdir}/${arch} >/dev/null 2>&1
		createrepo --database --update --xz --deltas .
	popd >/dev/null 2>&1
done
