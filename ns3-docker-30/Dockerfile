FROM ubuntu:18.04

MAINTAINER Riki Bando <ricky1231@g.ecc.u-tokyo.ac.jp>

LABEL Description="Docker image for NS-3 Network Simulator"

# NS-3
# Create working directory
RUN mkdir -p /usr/ns3
WORKDIR /usr

COPY . /usr

    # Install needed packages
RUN set -x && \
    apt-get update && \
    sh requirements.sh && \
    # Configure and compile NS-3
    cd /usr/ns-allinone-3.30/ns-3.30 && \
    ./waf configure --build-profile=debug --enable-examples --enable-tests && \
    ./waf && \
    # For visualizer
    cd /usr/ns-allinone-3.30/ && \
    wget https://files.pythonhosted.org/packages/e7/9f/32655239a4d978e92dd59233c4a3fd8e064ef1193487f58c889fe116b780/PyBindGen-0.20.1.tar.gz && \
    tar -xf PyBindGen-0.20.1.tar.gz && \
    # For click
    git clone https://github.com/kohler/click.git && \
    cd click && \
    ./configure --enable-userlevel --disable-linuxmodule --enable-nsclick && \
    make && \
    cd .. && \
    # For brite
    hg clone http://code.nsnam.org/BRITE && \
    cd BRITE && \
    make && \
    cd .. && \
    # For openflow
    hg clone http://code.nsnam.org/openflow && \
    cd openflow && \
    ./waf configure && \
    ./waf build && \
    # For integration
    cd /usr/ns-allinone-3.30/ns-3.30 && \
    ./waf configure --enable-examples --enable-tests --with-pybindgen=../PyBindGen-0.20.1 --with-nsclick=../click --with-brite=../BRITE --with-openflow=../openflow && \
    ./waf build && \
    # Make symlink
    ln -s /usr/ns-allinone-3.30/ns-3.30/ /usr/ns3/ && \
    # Cleanup
    apt-get clean && \
    rm -rf /var/lib/apt
