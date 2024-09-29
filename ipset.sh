#!/bin/bash

apt update

#要求内核大于3.11
apt install gcc make libmnl-dev pkg-config wget tar gzip -y

cd /tmp
wget https://ipset.netfilter.org/ipset-7.22.tar.bz2
tar -jxvf ipset-7.22.tar.bz2
rm -rf ipset-7.22.tar.bz2
cd ipset-7.22/
#./configure
#make install

#./configure --enable-shared=no --enable-static=yes --prefix=/usr/local/ipset --disable-dependency-tracking

#静态编译
./configure --enable-shared=no --enable-static=yes --disable-dependency-tracking
make install

#清理
apt remove gcc cpp -y
rm -rf /tmp/ipset-7.22
