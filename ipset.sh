#要求内核大于3.11
apt install gcc make libmnl-dev pkg-config wget tar gzip -y

cd /tmp
wget https://ipset.netfilter.org/ipset-7.22.tar.bz2
tar -jxvf ipset-7.22.tar.bz2
rm -rf ipset-7.22.tar.bz2
cd ipset-7.22/
#./configure
#./configure --enable-shared=no --enable-static=yes --prefix=/usr/local/ipset --disable-dependency-tracking

./configure --enable-shared=no --enable-static=yes --disable-dependency-tracking
make

#编译好的在/tmp/ipset-7.22/src/ipset
