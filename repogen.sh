#!/bin/sh
destdir="/var/ftp/repo/Fedora/10"
for arch in i386 x86_64
do
	pushd ${destdir}/${arch} >/dev/null 2>&1
		createrepo --database --update --xz --deltas .
	popd >/dev/null 2>&1
done
