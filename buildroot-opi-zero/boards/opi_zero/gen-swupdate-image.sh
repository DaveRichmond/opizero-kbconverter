#!/usr/bin/env bash

BOARD_DIR=$(dirname $0)

cp ${BOARD_DIR}/sw-description ${BINARIES_DIR}

IMG_FILES="sw-description rootfs.ext4.gz"

pushd ${BINARIES_DIR}
for f in ${IMG_FILES}; do
	echo ${f}
done | cpio -ovL -H crc > buildroot.swu
popd
