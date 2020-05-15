#!/bin/bash
set -eu -o pipefail

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin

cp -t $outdir QoRTs.jar QoRTs.sh qortsGenMultiQC.R

# Symlink the executable wrapper as qorts
ln -s $outdir/scripts/QoRTs.sh $PREFIX/qorts

# Symlink provided script
ln -s $outdir/scripts/qortsGenMultiQC.R $PREFIX/qortsGenMultiQC.R

chmod 0755 "${PREFIX}/bin/qorts"
