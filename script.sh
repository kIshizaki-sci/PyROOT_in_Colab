#!/bin/bash

export ROOTSYS /opt/root
export PATH $ROOTSYS/bin:$PATH
export PYTHONPATH $ROOTSYS/lib:$PYTHONPATH
export CLING_STANDARD_PCH none

apt update
apt install -yq --no-install-recommends \
    run-one build-essential inkscape lmodern netcat tzdata llvm-dev
apt install -yq --no-install-recommends \
    binutils libxpm-dev xlibmesa-glu-dev libglew1.5-dev libftgl-dev libfftw3-dev libcfitsio-dev \
    graphviz-dev libavahi-compat-libdnssd-dev libldap2-dev libkrb5-dev libgsl0-dev
cat PyROOT_in_Colab/root-bin/root-*-bin*tar.xz-* > /tmp/root-bin.tar.xz
tar Jxfv /tmp/root-bin.tar.xz -C /opt

cp -r /opt/root/etc/notebook/kernels/root /usr/local/share/jupyter/kernels
jupyter notebook --generate-config -y
echo /opt/root/lib >> /etc/ld.so.conf
ldconfig